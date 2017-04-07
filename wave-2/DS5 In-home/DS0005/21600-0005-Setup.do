/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0005: WAVE II: IN-HOME QUESTIONNAIRE, PUBLIC
 |                              USE SAMPLE)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0005-statasetup.do)
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

format IMONTH2 %1.0f
format IDAY2 %2.0f
format IYEAR2 %2.0f
format SCH_YR2 %1.0f
format BIO_SEX2 %1.0f
format SEXFLG2 %1.0f
format CALCAGE2 %2.0f
format AGEFLG2 %1.0f
format CORE1_2 %9.4f
format CORE2_2 %10.4f
format HIEDBLK2 %9.4f
format SMP01_2 %1.0f
format SMP02_2 %1.0f
format SMP03_2 %1.0f
format SMP04_2 %1.0f
format SMP05_2 %1.0f
format SMP06_2 %1.0f
format SMP07_2 %1.0f
format SMP08_2 %1.0f
format SMP09_2 %1.0f
format SMP10_2 %1.0f
format SMP11_2 %1.0f
format H2GI1M %2.0f
format H2GI1Y %2.0f
format H2GI2 %1.0f
format H2GI3 %1.0f
format H2GI4M %2.0f
format H2GI4Y %3.0f
format H2GI5 %1.0f
format H2GI6 %1.0f
format H2GI7 %1.0f
format H2GI8 %1.0f
format H2GI9 %2.0f
format H2GI10 %2.0f
format H2GI11M %2.0f
format H2GI11Y %3.0f
format H2GI12 %1.0f
format H2GI13M %2.0f
format H2GI13Y %4.0f
format H2GI14A %1.0f
format H2GI14B %1.0f
format H2GI14C %1.0f
format H2GI14D %1.0f
format H2GI14E %1.0f
format H2GI14F %1.0f
format H2GI14G %1.0f
format H2GI14H %1.0f
format H2GI15 %1.0f
format H2GI16 %1.0f
format H2DA1 %1.0f
format H2DA2 %1.0f
format H2DA3 %1.0f
format H2DA4 %1.0f
format H2DA5 %1.0f
format H2DA6 %1.0f
format H2DA7 %1.0f
format H2DA8 %3.0f
format H2DA9 %3.0f
format H2DA10 %3.0f
format H2DA11 %3.0f
format H2GH1 %1.0f
format H2GH2 %1.0f
format H2GH3 %1.0f
format H2GH4 %1.0f
format H2GH5 %1.0f
format H2GH6A %1.0f
format H2GH6B %1.0f
format H2GH6C %1.0f
format H2GH7 %1.0f
format H2GH8 %1.0f
format H2GH9 %1.0f
format H2GH10 %1.0f
format H2GH11 %1.0f
format H2GH12 %1.0f
format H2GH13 %1.0f
format H2GH14 %1.0f
format H2GH15 %1.0f
format H2GH16 %1.0f
format H2GH17 %1.0f
format H2GH18 %1.0f
format H2GH19 %1.0f
format H2GH20 %1.0f
format H2GH21 %1.0f
format H2GH22 %1.0f
format H2GH23 %1.0f
format H2GH24 %1.0f
format H2GH25 %1.0f
format H2GH26 %1.0f
format H2GH27 %1.0f
format H2GH28 %1.0f
format H2GH29A %1.0f
format H2GH29B %1.0f
format H2GH29C %1.0f
format H2GH29D %1.0f
format H2GH29E %1.0f
format H2GH29F %1.0f
format H2GH29G %1.0f
format H2GH29H %1.0f
format H2GH29I %1.0f
format H2GH29J %1.0f
format H2GH30 %1.0f
format H2GH31 %1.0f
format H2GH32A %1.0f
format H2GH32B %1.0f
format H2GH32C %1.0f
format H2GH32D %1.0f
format H2GH32E %1.0f
format H2GH32F %1.0f
format H2GH32G %1.0f
format H2GH33A %1.0f
format H2GH33B %1.0f
format H2GH33C %1.0f
format H2GH33D %1.0f
format H2GH33E %1.0f
format H2GH33F %1.0f
format H2GH33G %1.0f
format H2GH34 %1.0f
format H2GH35 %1.0f
format H2GH36 %1.0f
format H2GH37 %1.0f
format H2GH38 %1.0f
format H2GH39 %1.0f
format H2GH40 %1.0f
format H2GH41 %1.0f
format H2GH44 %2.0f
format H2GH45 %1.0f
format H2GH46 %1.0f
format H2GH47 %1.0f
format H2GH48 %1.0f
format H2GH49 %1.0f
format H2GH50 %1.0f
format H2GH51 %1.0f
format H2GH52F %2.0f
format H2GH52I %2.0f
format H2GH53 %3.0f
format H2NU1 %1.0f
format H2NU2 %1.0f
format H2NU3 %1.0f
format H2NU4 %1.0f
format H2NU5 %1.0f
format H2NU6 %1.0f
format H2NU7 %1.0f
format H2NU8 %1.0f
format H2NU9 %1.0f
format H2NU10 %1.0f
format H2NU11 %1.0f
format H2NU12 %1.0f
format H2NU13 %1.0f
format H2NU14 %1.0f
format H2NU15 %1.0f
format H2NU16 %1.0f
format H2NU17 %1.0f
format H2NU18 %1.0f
format H2NU19 %1.0f
format H2NU20 %1.0f
format H2NU21 %1.0f
format H2NU22 %1.0f
format H2NU23 %1.0f
format H2NU24 %1.0f
format H2NU25 %1.0f
format H2NU26 %1.0f
format H2NU27 %1.0f
format H2NU28 %1.0f
format H2NU29 %1.0f
format H2NU30 %1.0f
format H2NU31 %1.0f
format H2NU32 %1.0f
format H2NU33 %1.0f
format H2NU34 %1.0f
format H2NU35 %1.0f
format H2NU36 %1.0f
format H2NU37 %1.0f
format H2NU38 %1.0f
format H2NU39 %1.0f
format H2NU40 %1.0f
format H2NU41 %1.0f
format H2NU42 %1.0f
format H2NU43 %1.0f
format H2NU44 %1.0f
format H2NU45 %1.0f
format H2NU46 %1.0f
format H2NU47 %1.0f
format H2NU48 %1.0f
format H2NU49 %1.0f
format H2NU50 %1.0f
format H2NU51 %1.0f
format H2NU52 %1.0f
format H2NU53 %1.0f
format H2NU54 %1.0f
format H2NU55 %1.0f
format H2NU56 %1.0f
format H2NU57 %1.0f
format H2NU58 %1.0f
format H2NU59 %1.0f
format H2NU60 %1.0f
format H2NU61 %1.0f
format H2NU62 %1.0f
format H2NU63 %1.0f
format H2NU64 %1.0f
format H2NU65 %1.0f
format H2NU66 %1.0f
format H2NU67 %1.0f
format H2NU68 %1.0f
format H2NU69 %1.0f
format H2NU70 %1.0f
format H2NU71 %1.0f
format H2NU72 %1.0f
format H2NU73 %1.0f
format H2NU74 %1.0f
format H2NU75 %1.0f
format H2NU76 %1.0f
format H2NU77 %1.0f
format H2NU78 %2.0f
format H2NU79 %2.0f
format H2NU80 %2.0f
format H2NU81 %1.0f
format H2NU82 %2.0f
format H2UV1 %1.0f
format H2UV2 %1.0f
format H2UV3 %1.0f
format H2UV4 %1.0f
format H2UV5 %2.0f
format H2UV6 %2.0f
format H2UV7 %2.0f
format H2UV8 %1.0f
format H2UV9 %1.0f
format H2UV10 %3.0f
format H2ED1 %1.0f
format H2ED2 %3.0f
format H2ED3 %1.0f
format H2ED5 %1.0f
format H2ED7 %2.0f
format H2ED8 %2.0f
format H2ED9 %2.0f
format H2ED10 %2.0f
format H2ED11 %1.0f
format H2ED12 %1.0f
format H2ED13 %1.0f
format H2ED14 %1.0f
format H2ED15 %1.0f
format H2ED16 %1.0f
format H2ED17 %1.0f
format H2ED18 %1.0f
format H2ED19 %1.0f
format H2ED20 %1.0f
format H2HS1 %1.0f
format H2HS2A %1.0f
format H2HS2B %1.0f
format H2HS2C %1.0f
format H2HS2D %1.0f
format H2HS2E %1.0f
format H2HS3 %1.0f
format H2HS4A %1.0f
format H2HS4B %1.0f
format H2HS4C %1.0f
format H2HS4D %1.0f
format H2HS4E %1.0f
format H2HS5 %1.0f
format H2HS6A %1.0f
format H2HS6B %1.0f
format H2HS6C %1.0f
format H2HS6D %1.0f
format H2HS6E %1.0f
format H2HS7 %1.0f
format H2HS8A %1.0f
format H2HS8B %1.0f
format H2HS8C %1.0f
format H2HS8D %1.0f
format H2HS8E %1.0f
format H2HS9 %1.0f
format H2HS10A %1.0f
format H2HS10B %1.0f
format H2HS10C %1.0f
format H2HS10D %1.0f
format H2HS10E %1.0f
format H2HS11 %1.0f
format H2HS12A %1.0f
format H2HS12B %1.0f
format H2HS12C %1.0f
format H2HS12D %1.0f
format H2HS12E %1.0f
format H2HS13 %1.0f
format H2HS14A %1.0f
format H2HS14B %1.0f
format H2HS14C %1.0f
format H2HS14D %1.0f
format H2HS14E %1.0f
format H2RP1 %1.0f
format H2RP2 %2.0f
format H2RP3 %1.0f
format H2RP4 %2.0f
format H2RP5 %1.0f
format H2RP6 %1.0f
format H2RP7 %1.0f
format H2RP8 %1.0f
format H2RP9 %1.0f
format H2RP10 %1.0f
format H2SE1 %2.0f
format H2SE2 %2.0f
format H2SE3 %2.0f
format H2SE4 %2.0f
format H2FS1 %1.0f
format H2FS2 %1.0f
format H2FS3 %1.0f
format H2FS4 %1.0f
format H2FS5 %1.0f
format H2FS6 %1.0f
format H2FS7 %1.0f
format H2FS8 %1.0f
format H2FS9 %1.0f
format H2FS10 %1.0f
format H2FS11 %1.0f
format H2FS12 %1.0f
format H2FS13 %1.0f
format H2FS14 %1.0f
format H2FS15 %1.0f
format H2FS16 %1.0f
format H2FS17 %1.0f
format H2FS18 %1.0f
format H2FS19 %1.0f
format H2HR1 %1.0f
format H2HR2A %1.0f
format H2HR2B %1.0f
format H2HR2C %1.0f
format H2HR2D %1.0f
format H2HR2E %1.0f
format H2HR2F %1.0f
format H2HR2G %1.0f
format H2HR2H %1.0f
format H2HR2I %1.0f
format H2HR2J %1.0f
format H2HR2K %1.0f
format H2HR2L %1.0f
format H2HR2M %1.0f
format H2HR2N %1.0f
format H2HR2O %1.0f
format H2HR2P %1.0f
format H2HR2Q %1.0f
format H2HR2R %1.0f
format H2HR3A %1.0f
format H2HR4A %2.0f
format H2HR5A %2.0f
format H2HR6A %2.0f
format H2HR7A %2.0f
format H2HR8A %3.0f
format H2HR9A %3.0f
format H2HR3B %1.0f
format H2HR4B %2.0f
format H2HR5B %2.0f
format H2HR6B %2.0f
format H2HR7B %2.0f
format H2HR8B %3.0f
format H2HR9B %3.0f
format H2HR3C %1.0f
format H2HR4C %2.0f
format H2HR5C %2.0f
format H2HR6C %2.0f
format H2HR7C %2.0f
format H2HR8C %3.0f
format H2HR9C %3.0f
format H2HR3D %1.0f
format H2HR4D %2.0f
format H2HR5D %2.0f
format H2HR6D %2.0f
format H2HR7D %2.0f
format H2HR8D %3.0f
format H2HR9D %3.0f
format H2HR3E %1.0f
format H2HR4E %2.0f
format H2HR5E %2.0f
format H2HR6E %2.0f
format H2HR7E %2.0f
format H2HR8E %3.0f
format H2HR9E %3.0f
format H2HR3F %1.0f
format H2HR4F %2.0f
format H2HR5F %2.0f
format H2HR6F %2.0f
format H2HR7F %2.0f
format H2HR8F %3.0f
format H2HR9F %3.0f
format H2HR3G %1.0f
format H2HR4G %2.0f
format H2HR5G %2.0f
format H2HR6G %2.0f
format H2HR7G %2.0f
format H2HR8G %3.0f
format H2HR9G %3.0f
format H2HR3H %1.0f
format H2HR4H %2.0f
format H2HR5H %2.0f
format H2HR6H %2.0f
format H2HR7H %2.0f
format H2HR8H %3.0f
format H2HR9H %3.0f
format H2HR3I %1.0f
format H2HR4I %2.0f
format H2HR5I %2.0f
format H2HR6I %2.0f
format H2HR7I %2.0f
format H2HR8I %3.0f
format H2HR9I %3.0f
format H2HR3J %1.0f
format H2HR4J %2.0f
format H2HR5J %2.0f
format H2HR6J %2.0f
format H2HR7J %2.0f
format H2HR8J %3.0f
format H2HR9J %3.0f
format H2HR3K %1.0f
format H2HR4K %2.0f
format H2HR5K %2.0f
format H2HR6K %2.0f
format H2HR7K %2.0f
format H2HR8K %3.0f
format H2HR9K %3.0f
format H2HR3L %1.0f
format H2HR4L %2.0f
format H2HR5L %2.0f
format H2HR6L %2.0f
format H2HR7L %2.0f
format H2HR8L %3.0f
format H2HR9L %3.0f
format H2HR3M %1.0f
format H2HR4M %2.0f
format H2HR5M %2.0f
format H2HR6M %2.0f
format H2HR7M %2.0f
format H2HR8M %3.0f
format H2HR9M %3.0f
format H2HR3N %1.0f
format H2HR4N %2.0f
format H2HR5N %2.0f
format H2HR6N %2.0f
format H2HR7N %2.0f
format H2HR8N %3.0f
format H2HR9N %3.0f
format H2HR3O %3.0f
format H2HR4O %2.0f
format H2HR5O %2.0f
format H2HR6O %2.0f
format H2HR7O %2.0f
format H2HR8O %3.0f
format H2HR9O %3.0f
format H2HR3P %1.0f
format H2HR4P %2.0f
format H2HR5P %2.0f
format H2HR6P %2.0f
format H2HR7P %2.0f
format H2HR8P %3.0f
format H2HR9P %3.0f
format H2HR3Q %1.0f
format H2HR4Q %2.0f
format H2HR5Q %2.0f
format H2HR6Q %2.0f
format H2HR7Q %2.0f
format H2HR8Q %3.0f
format H2HR9Q %3.0f
format H2HR10 %2.0f
format H2HR11 %2.0f
format H2NM1 %1.0f
format H2NM2 %1.0f
format H2NM3M %2.0f
format H2NM3Y %3.0f
format H2NM4 %1.0f
format H2NM5 %2.0f
format H2NM9 %1.0f
format H2NM10 %1.0f
format H2NM11A %1.0f
format H2NM11B %1.0f
format H2NM11C %1.0f
format H2NM11D %1.0f
format H2NM11E %1.0f
format H2NM11F %1.0f
format H2NM11G %1.0f
format H2NM11H %1.0f
format H2NM11I %1.0f
format H2NM11J %1.0f
format H2NM11K %1.0f
format H2NM12 %1.0f
format H2NM13 %1.0f
format H2NF1 %1.0f
format H2NF2 %1.0f
format H2NF3M %2.0f
format H2NF3Y %3.0f
format H2NF4 %1.0f
format H2NF5 %2.0f
format H2NF9 %1.0f
format H2NF10 %1.0f
format H2NF11A %1.0f
format H2NF11B %1.0f
format H2NF11C %1.0f
format H2NF11D %1.0f
format H2NF11E %1.0f
format H2NF11F %1.0f
format H2NF11G %1.0f
format H2NF11H %1.0f
format H2NF11I %1.0f
format H2NF11J %1.0f
format H2NF11K %1.0f
format H2NF12 %1.0f
format H2NF13 %1.0f
format H2RM1 %2.0f
format H2RM2 %1.0f
format H2RM3 %3.0f
format H2RM4 %2.0f
format H2RM5 %1.0f
format H2RM6 %1.0f
format H2RM7 %3.0f
format H2RM8 %1.0f
format H2RM9 %1.0f
format H2RM10 %1.0f
format H2RM11 %2.0f
format H2RM12 %2.0f
format H2RM13 %2.0f
format H2RM14 %1.0f
format H2RF1 %2.0f
format H2RF2 %1.0f
format H2RF3 %3.0f
format H2RF4 %2.0f
format H2RF5 %1.0f
format H2RF6 %1.0f
format H2RF7 %3.0f
format H2RF8 %1.0f
format H2RF9 %1.0f
format H2RF10 %1.0f
format H2RF11 %2.0f
format H2RF12 %2.0f
format H2RF13 %2.0f
format H2RF14 %1.0f
format H2WP1 %1.0f
format H2WP2 %1.0f
format H2WP3 %1.0f
format H2WP4 %1.0f
format H2WP5 %1.0f
format H2WP6 %1.0f
format H2WP7 %1.0f
format H2WP8 %2.0f
format H2WP9 %1.0f
format H2WP10 %1.0f
format H2WP11 %1.0f
format H2WP12 %2.0f
format H2WP13 %1.0f
format H2WP14 %1.0f
format H2WP15 %1.0f
format H2WP16 %2.0f
format H2WP17A %1.0f
format H2WP17B %1.0f
format H2WP17C %1.0f
format H2WP17D %1.0f
format H2WP17E %1.0f
format H2WP17F %1.0f
format H2WP17G %1.0f
format H2WP17H %1.0f
format H2WP17I %1.0f
format H2WP17J %1.0f
format H2WP17K %1.0f
format H2WP18A %1.0f
format H2WP18B %1.0f
format H2WP18C %1.0f
format H2WP18D %1.0f
format H2WP18E %1.0f
format H2WP18F %1.0f
format H2WP18G %1.0f
format H2WP18H %1.0f
format H2WP18I %1.0f
format H2WP18J %1.0f
format H2WP18K %1.0f
format H2MO1 %1.0f
format H2MO2 %1.0f
format H2MO3 %1.0f
format H2MO4 %1.0f
format H2MO5 %1.0f
format H2MO6 %1.0f
format H2MO7 %1.0f
format H2MO8 %1.0f
format H2MO9 %1.0f
format H2MO10 %1.0f
format H2MO11 %1.0f
format H2MO12 %1.0f
format H2MO13 %1.0f
format H2MO14 %1.0f
format H2MO15 %1.0f
format H2MO16 %1.0f
format H2PF1 %1.0f
format H2PF2 %1.0f
format H2PF3 %1.0f
format H2PF4 %1.0f
format H2PF5 %1.0f
format H2PF6 %1.0f
format H2PF7 %1.0f
format H2PF8 %1.0f
format H2PF9 %1.0f
format H2PF10 %1.0f
format H2PF11 %1.0f
format H2PF12 %1.0f
format H2PF13 %1.0f
format H2PF14 %1.0f
format H2PF15 %1.0f
format H2PF16 %1.0f
format H2PF17 %1.0f
format H2PF18 %1.0f
format H2PF19 %1.0f
format H2PF20 %1.0f
format H2PF21 %1.0f
format H2PF22 %1.0f
format H2PF23 %1.0f
format H2PF24 %1.0f
format H2PF25 %1.0f
format H2PF26 %1.0f
format H2PF27 %1.0f
format H2PF28 %1.0f
format H2PF29 %1.0f
format H2PF30 %1.0f
format H2PF31 %1.0f
format H2PF32 %1.0f
format H2PF33 %1.0f
format H2PF34 %1.0f
format H2PF35 %1.0f
format H2PF36 %1.0f
format H2PF37 %1.0f
format H2PF38 %1.0f
format H2PF39 %1.0f
format H2PF40 %1.0f
format H2PF41 %1.0f
format H2KQ1A %1.0f
format H2KQ1B %1.0f
format H2KQ2A %1.0f
format H2KQ2B %1.0f
format H2KQ3A %1.0f
format H2KQ3B %1.0f
format H2KQ4A %1.0f
format H2KQ4B %1.0f
format H2KQ5A %1.0f
format H2KQ5B %1.0f
format H2KQ6A %1.0f
format H2KQ6B %1.0f
format H2KQ7A %1.0f
format H2KQ7B %1.0f
format H2KQ8A %1.0f
format H2KQ8B %1.0f
format H2KQ9A %1.0f
format H2KQ9B %1.0f
format H2KQ10A %1.0f
format H2KQ10B %1.0f
format FR_FLAG2 %1.0f
format H2MF1 %1.0f
format H2MF3A %1.0f
format H2MF3B %1.0f
format H2MF3C %1.0f
format H2MF3D %1.0f
format H2MF4A %1.0f
format H2MF5A %2.0f
format H2MF6A %1.0f
format H2MF7A %1.0f
format H2MF8A %1.0f
format H2MF9A %1.0f
format H2MF11A %1.0f
format H2MF12A %1.0f
format H2MF13A %1.0f
format H2MF14A %1.0f
format H2MF15A %1.0f
format H2MF4B %1.0f
format H2MF5B %2.0f
format H2MF6B %1.0f
format H2MF7B %1.0f
format H2MF8B %1.0f
format H2MF9B %1.0f
format H2MF11B %1.0f
format H2MF12B %1.0f
format H2MF13B %1.0f
format H2MF14B %1.0f
format H2MF15B %1.0f
format H2MF4C %1.0f
format H2MF5C %2.0f
format H2MF6C %1.0f
format H2MF7C %1.0f
format H2MF8C %1.0f
format H2MF9C %1.0f
format H2MF11C %1.0f
format H2MF12C %1.0f
format H2MF13C %1.0f
format H2MF14C %1.0f
format H2MF15C %1.0f
format H2MF4D %1.0f
format H2MF5D %2.0f
format H2MF6D %1.0f
format H2MF7D %1.0f
format H2MF8D %1.0f
format H2MF9D %1.0f
format H2MF11D %1.0f
format H2MF12D %1.0f
format H2MF13D %1.0f
format H2MF14D %1.0f
format H2MF15D %1.0f
format H2MF4E %1.0f
format H2MF5E %2.0f
format H2MF6E %1.0f
format H2MF7E %1.0f
format H2MF8E %1.0f
format H2MF9E %1.0f
format H2MF11E %1.0f
format H2MF12E %1.0f
format H2MF13E %1.0f
format H2MF14E %1.0f
format H2MF15E %1.0f
format H2FF1 %1.0f
format H2FF3A %1.0f
format H2FF3B %1.0f
format H2FF3C %1.0f
format H2FF3D %1.0f
format H2FF4A %1.0f
format H2FF5A %2.0f
format H2FF6A %1.0f
format H2FF7A %1.0f
format H2FF8A %1.0f
format H2FF9A %1.0f
format H2FF11A %1.0f
format H2FF12A %1.0f
format H2FF13A %1.0f
format H2FF14A %1.0f
format H2FF15A %1.0f
format H2FF4B %1.0f
format H2FF5B %2.0f
format H2FF6B %1.0f
format H2FF7B %1.0f
format H2FF8B %1.0f
format H2FF9B %1.0f
format H2FF11B %1.0f
format H2FF12B %1.0f
format H2FF13B %1.0f
format H2FF14B %1.0f
format H2FF15B %1.0f
format H2FF4C %1.0f
format H2FF5C %2.0f
format H2FF6C %1.0f
format H2FF7C %1.0f
format H2FF8C %1.0f
format H2FF9C %1.0f
format H2FF11C %1.0f
format H2FF12C %1.0f
format H2FF13C %1.0f
format H2FF14C %1.0f
format H2FF15C %1.0f
format H2FF4D %1.0f
format H2FF5D %2.0f
format H2FF6D %1.0f
format H2FF7D %1.0f
format H2FF8D %1.0f
format H2FF9D %1.0f
format H2FF11D %1.0f
format H2FF12D %1.0f
format H2FF13D %1.0f
format H2FF14D %1.0f
format H2FF15D %1.0f
format H2FF4E %1.0f
format H2FF5E %2.0f
format H2FF6E %1.0f
format H2FF7E %1.0f
format H2FF8E %1.0f
format H2FF9E %1.0f
format H2FF11E %1.0f
format H2FF12E %1.0f
format H2FF13E %1.0f
format H2FF14E %1.0f
format H2FF15E %1.0f
format H2RR1 %1.0f
format H2RR2A %1.0f
format H2RR2B %1.0f
format H2RR2C %1.0f
format H2RR2D %1.0f
format H2RR4A %1.0f
format H2RR5A %1.0f
format H2RR6A %1.0f
format H2RR4B %1.0f
format H2RR5B %1.0f
format H2RR6B %1.0f
format H2RR4C %1.0f
format H2RR5C %1.0f
format H2RR6C %1.0f
format H2LR1 %1.0f
format H2LR2 %1.0f
format H2LR3 %1.0f
format H2LR4 %1.0f
format H2CO1 %1.0f
format H2CO2 %1.0f
format H2CO3M %2.0f
format H2CO3Y %3.0f
format H2CO4 %1.0f
format H2CO5A %2.0f
format H2CO5B %2.0f
format H2CO5C %2.0f
format H2CO6M %2.0f
format H2CO6Y %3.0f
format H2CO7 %1.0f
format H2CO8A %2.0f
format H2CO8B %2.0f
format H2CO8C %2.0f
format H2CO9 %1.0f
format H2CO10 %1.0f
format H2CO11 %1.0f
format H2CO12 %1.0f
format H2CO13 %1.0f
format H2CO14 %1.0f
format H2CO15A %2.0f
format H2CO15B %2.0f
format H2CO15C %2.0f
format H2CO16 %1.0f
format H2CO17M %2.0f
format H2CO17Y %3.0f
format H2CO18 %1.0f
format H2CO19A %1.0f
format H2CO19B %1.0f
format H2CO19C %1.0f
format H2CO19D %1.0f
format H2CO19E %1.0f
format H2CO19F %1.0f
format H2CO19G %1.0f
format H2CO19H %1.0f
format H2CO19I %1.0f
format H2CO19J %1.0f
format H2RI1M_1 %2.0f
format H2RI1Y_1 %3.0f
format H2RI2_1 %2.0f
format H2RI3_1 %2.0f
format H2RI4_1 %2.0f
format H2RI5_1 %1.0f
format H2RI6_1 %1.0f
format H2RI7A_1 %1.0f
format H2RI7B_1 %1.0f
format H2RI7C_1 %1.0f
format H2RI7D_1 %1.0f
format H2RI7E_1 %1.0f
format H2RI7F_1 %1.0f
format H2RI7G_1 %1.0f
format H2RI7H_1 %1.0f
format H2RI8_1 %2.0f
format H2RI9_1 %1.0f
format H2RI10M1 %2.0f
format H2RI10Y1 %3.0f
format H2RI11_1 %1.0f
format H2RI12M1 %2.0f
format H2RI12Y1 %3.0f
format H2RI13_1 %1.0f
format H2RI14M1 %2.0f
format H2RI14Y1 %3.0f
format H2RI15_1 %1.0f
format H2RI16M1 %2.0f
format H2RI16Y1 %3.0f
format H2RI17_1 %1.0f
format H2RI18M1 %2.0f
format H2RI18Y1 %3.0f
format H2RI19_1 %1.0f
format H2RI20M1 %2.0f
format H2RI20Y1 %3.0f
format H2RI21_1 %1.0f
format H2RI22_1 %1.0f
format H2RI23_1 %1.0f
format H2RI24_1 %1.0f
format H2RI25_1 %1.0f
format H2RI26_1 %2.0f
format H2RI27_1 %2.0f
format H2RI28_1 %1.0f
format H2RI29A1 %1.0f
format H2RI29B1 %1.0f
format H2RI29C1 %1.0f
format H2RI29D1 %1.0f
format H2RI29E1 %1.0f
format H2RI29F1 %1.0f
format H2RI30A1 %1.0f
format H2RI30B1 %1.0f
format H2RI30C1 %1.0f
format H2RI30D1 %1.0f
format H2RI30E1 %1.0f
format H2RI31A1 %1.0f
format H2RI31B1 %1.0f
format H2RI31C1 %1.0f
format H2RI31D1 %1.0f
format H2RI31E1 %1.0f
format H2RI31F1 %1.0f
format H2RI31G1 %1.0f
format H2RI32_1 %1.0f
format H2RI33A1 %1.0f
format H2RI33B1 %1.0f
format H2RI33C1 %1.0f
format H2RI33D1 %1.0f
format H2RI33E1 %1.0f
format H2RI33F1 %1.0f
format H2RI33G1 %1.0f
format H2RI33H1 %1.0f
format H2RI33I1 %1.0f
format H2RI33J1 %1.0f
format H2RI33K1 %1.0f
format H2RI33L1 %1.0f
format H2RI33M1 %1.0f
format H2RI33N1 %1.0f
format H2RI33O1 %1.0f
format H2RI34A1 %2.0f
format H2RI34B1 %2.0f
format H2RI34C1 %2.0f
format H2RI34D1 %2.0f
format H2RI34E1 %2.0f
format H2RI34F1 %2.0f
format H2RI34G1 %2.0f
format H2RI34H1 %2.0f
format H2RI34I1 %2.0f
format H2RI34J1 %2.0f
format H2RI34K1 %2.0f
format H2RI34L1 %2.0f
format H2RI34M1 %2.0f
format H2RI34N1 %2.0f
format H2RI34O1 %2.0f
format H2RI35_1 %1.0f
format H2RI36_1 %1.0f
format H2RI37M1 %2.0f
format H2RI37Y1 %3.0f
format H2RI38M1 %2.0f
format H2RI38Y1 %3.0f
format H2RI39_1 %1.0f
format H2RI40_1 %1.0f
format H2RI41A1 %2.0f
format H2RI41B1 %2.0f
format H2RI41C1 %2.0f
format H2RI42_1 %1.0f
format H2RI43_1 %1.0f
format H2RI44_1 %1.0f
format H2RI45A1 %2.0f
format H2RI45B1 %2.0f
format H2RI45C1 %2.0f
format H2RI46_1 %1.0f
format H2RI47_1 %1.0f
format H2RI48_1 %1.0f
format H2RI49_1 %1.0f
format H2RI50A1 %2.0f
format H2RI50B1 %2.0f
format H2RI50C1 %2.0f
format H2RI51_1 %1.0f
format H2RI52_1 %1.0f
format H2RI53_1 %3.0f
format H2RI54_1 %1.0f
format H2RI55M1 %2.0f
format H2RI55Y1 %3.0f
format H2RI56_1 %1.0f
format H2RI57M1 %2.0f
format H2RI57Y1 %3.0f
format H2RI58_1 %3.0f
format H2RI59_1 %1.0f
format H2RI60_1 %1.0f
format H2RI61M1 %2.0f
format H2RI61Y1 %3.0f
format H2RI62_1 %1.0f
format H2RI63M1 %2.0f
format H2RI63Y1 %3.0f
format H2RI64_1 %3.0f
format H2RI65_1 %1.0f
format H2RI66_1 %1.0f
format H2RI67M1 %2.0f
format H2RI67Y1 %3.0f
format H2RI68_1 %1.0f
format H2RI69M1 %2.0f
format H2RI69Y1 %3.0f
format H2RI70_1 %3.0f
format H2RI71_1 %1.0f
format H2RI1M_2 %2.0f
format H2RI1Y_2 %3.0f
format H2RI2_2 %2.0f
format H2RI3_2 %2.0f
format H2RI4_2 %2.0f
format H2RI5_2 %1.0f
format H2RI6_2 %1.0f
format H2RI7A_2 %1.0f
format H2RI7B_2 %1.0f
format H2RI7C_2 %1.0f
format H2RI7D_2 %1.0f
format H2RI7E_2 %1.0f
format H2RI7F_2 %1.0f
format H2RI7G_2 %1.0f
format H2RI7H_2 %1.0f
format H2RI8_2 %2.0f
format H2RI9_2 %1.0f
format H2RI10M2 %2.0f
format H2RI10Y2 %3.0f
format H2RI11_2 %1.0f
format H2RI12M2 %2.0f
format H2RI12Y2 %3.0f
format H2RI13_2 %1.0f
format H2RI14M2 %2.0f
format H2RI14Y2 %3.0f
format H2RI15_2 %1.0f
format H2RI16M2 %2.0f
format H2RI16Y2 %3.0f
format H2RI17_2 %1.0f
format H2RI18M2 %2.0f
format H2RI18Y2 %3.0f
format H2RI19_2 %1.0f
format H2RI20M2 %2.0f
format H2RI20Y2 %3.0f
format H2RI21_2 %1.0f
format H2RI22_2 %1.0f
format H2RI23_2 %1.0f
format H2RI24_2 %1.0f
format H2RI25_2 %1.0f
format H2RI26_2 %2.0f
format H2RI27_2 %2.0f
format H2RI28_2 %1.0f
format H2RI29A2 %1.0f
format H2RI29B2 %1.0f
format H2RI29C2 %1.0f
format H2RI29D2 %1.0f
format H2RI29E2 %1.0f
format H2RI29F2 %1.0f
format H2RI30A2 %1.0f
format H2RI30B2 %1.0f
format H2RI30C2 %1.0f
format H2RI30D2 %1.0f
format H2RI30E2 %1.0f
format H2RI31A2 %1.0f
format H2RI31B2 %1.0f
format H2RI31C2 %1.0f
format H2RI31D2 %1.0f
format H2RI31E2 %1.0f
format H2RI31F2 %1.0f
format H2RI31G2 %1.0f
format H2RI32_2 %1.0f
format H2RI33A2 %1.0f
format H2RI33B2 %1.0f
format H2RI33C2 %1.0f
format H2RI33D2 %1.0f
format H2RI33E2 %1.0f
format H2RI33F2 %1.0f
format H2RI33G2 %1.0f
format H2RI33H2 %1.0f
format H2RI33I2 %1.0f
format H2RI33J2 %1.0f
format H2RI33K2 %1.0f
format H2RI33L2 %1.0f
format H2RI33M2 %1.0f
format H2RI33N2 %1.0f
format H2RI33O2 %1.0f
format H2RI34A2 %2.0f
format H2RI34B2 %2.0f
format H2RI34C2 %2.0f
format H2RI34D2 %2.0f
format H2RI34E2 %2.0f
format H2RI34F2 %2.0f
format H2RI34G2 %2.0f
format H2RI34H2 %2.0f
format H2RI34I2 %2.0f
format H2RI34J2 %2.0f
format H2RI34K2 %2.0f
format H2RI34L2 %2.0f
format H2RI34M2 %2.0f
format H2RI34N2 %2.0f
format H2RI34O2 %2.0f
format H2RI35_2 %1.0f
format H2RI36_2 %1.0f
format H2RI37M2 %2.0f
format H2RI37Y2 %3.0f
format H2RI38M2 %2.0f
format H2RI38Y2 %3.0f
format H2RI39_2 %1.0f
format H2RI40_2 %1.0f
format H2RI41A2 %2.0f
format H2RI41B2 %2.0f
format H2RI41C2 %2.0f
format H2RI42_2 %1.0f
format H2RI43_2 %1.0f
format H2RI44_2 %1.0f
format H2RI45A2 %2.0f
format H2RI45B2 %2.0f
format H2RI45C2 %2.0f
format H2RI46_2 %1.0f
format H2RI47_2 %1.0f
format H2RI48_2 %1.0f
format H2RI49_2 %1.0f
format H2RI50A2 %2.0f
format H2RI50B2 %2.0f
format H2RI50C2 %2.0f
format H2RI51_2 %1.0f
format H2RI52_2 %1.0f
format H2RI53_2 %3.0f
format H2RI54_2 %1.0f
format H2RI55M2 %2.0f
format H2RI55Y2 %3.0f
format H2RI56_2 %1.0f
format H2RI57M2 %2.0f
format H2RI57Y2 %3.0f
format H2RI58_2 %3.0f
format H2RI59_2 %1.0f
format H2RI60_2 %1.0f
format H2RI61M2 %2.0f
format H2RI61Y2 %3.0f
format H2RI62_2 %1.0f
format H2RI63M2 %2.0f
format H2RI63Y2 %3.0f
format H2RI64_2 %3.0f
format H2RI65_2 %1.0f
format H2RI66_2 %1.0f
format H2RI67M2 %2.0f
format H2RI67Y2 %3.0f
format H2RI68_2 %1.0f
format H2RI69M2 %2.0f
format H2RI69Y2 %3.0f
format H2RI70_2 %3.0f
format H2RI71_2 %1.0f
format H2RI1M_3 %2.0f
format H2RI1Y_3 %3.0f
format H2RI2_3 %2.0f
format H2RI3_3 %2.0f
format H2RI4_3 %2.0f
format H2RI5_3 %1.0f
format H2RI6_3 %1.0f
format H2RI7A_3 %1.0f
format H2RI7B_3 %1.0f
format H2RI7C_3 %1.0f
format H2RI7D_3 %1.0f
format H2RI7E_3 %1.0f
format H2RI7F_3 %1.0f
format H2RI7G_3 %1.0f
format H2RI7H_3 %1.0f
format H2RI8_3 %2.0f
format H2RI9_3 %1.0f
format H2RI10M3 %2.0f
format H2RI10Y3 %3.0f
format H2RI11_3 %1.0f
format H2RI12M3 %2.0f
format H2RI12Y3 %3.0f
format H2RI13_3 %1.0f
format H2RI14M3 %2.0f
format H2RI14Y3 %3.0f
format H2RI15_3 %1.0f
format H2RI16M3 %2.0f
format H2RI16Y3 %3.0f
format H2RI17_3 %1.0f
format H2RI18M3 %2.0f
format H2RI18Y3 %3.0f
format H2RI19_3 %1.0f
format H2RI20M3 %2.0f
format H2RI20Y3 %3.0f
format H2RI21_3 %1.0f
format H2RI22_3 %1.0f
format H2RI23_3 %1.0f
format H2RI24_3 %1.0f
format H2RI25_3 %1.0f
format H2RI26_3 %2.0f
format H2RI27_3 %2.0f
format H2RI28_3 %1.0f
format H2RI29A3 %1.0f
format H2RI29B3 %1.0f
format H2RI29C3 %1.0f
format H2RI29D3 %1.0f
format H2RI29E3 %1.0f
format H2RI29F3 %1.0f
format H2RI30A3 %1.0f
format H2RI30B3 %1.0f
format H2RI30C3 %1.0f
format H2RI30D3 %1.0f
format H2RI30E3 %1.0f
format H2RI31A3 %1.0f
format H2RI31B3 %1.0f
format H2RI31C3 %1.0f
format H2RI31D3 %1.0f
format H2RI31E3 %1.0f
format H2RI31F3 %1.0f
format H2RI31G3 %1.0f
format H2RI32_3 %1.0f
format H2RI33A3 %1.0f
format H2RI33B3 %1.0f
format H2RI33C3 %1.0f
format H2RI33D3 %1.0f
format H2RI33E3 %1.0f
format H2RI33F3 %1.0f
format H2RI33G3 %1.0f
format H2RI33H3 %1.0f
format H2RI33I3 %1.0f
format H2RI33J3 %1.0f
format H2RI33K3 %1.0f
format H2RI33L3 %1.0f
format H2RI33M3 %1.0f
format H2RI33N3 %1.0f
format H2RI33O3 %1.0f
format H2RI34A3 %2.0f
format H2RI34B3 %2.0f
format H2RI34C3 %2.0f
format H2RI34D3 %2.0f
format H2RI34E3 %2.0f
format H2RI34F3 %2.0f
format H2RI34G3 %2.0f
format H2RI34H3 %2.0f
format H2RI34I3 %2.0f
format H2RI34J3 %2.0f
format H2RI34K3 %2.0f
format H2RI34L3 %2.0f
format H2RI34M3 %2.0f
format H2RI34N3 %2.0f
format H2RI34O3 %2.0f
format H2RI35_3 %1.0f
format H2RI36_3 %1.0f
format H2RI37M3 %2.0f
format H2RI37Y3 %3.0f
format H2RI38M3 %2.0f
format H2RI38Y3 %3.0f
format H2RI39_3 %1.0f
format H2RI40_3 %1.0f
format H2RI41A3 %2.0f
format H2RI41B3 %2.0f
format H2RI41C3 %2.0f
format H2RI42_3 %1.0f
format H2RI43_3 %1.0f
format H2RI44_3 %1.0f
format H2RI45A3 %2.0f
format H2RI45B3 %2.0f
format H2RI45C3 %2.0f
format H2RI46_3 %1.0f
format H2RI47_3 %1.0f
format H2RI48_3 %1.0f
format H2RI49_3 %1.0f
format H2RI50A3 %2.0f
format H2RI50B3 %2.0f
format H2RI50C3 %2.0f
format H2RI51_3 %1.0f
format H2RI52_3 %1.0f
format H2RI53_3 %3.0f
format H2RI54_3 %1.0f
format H2RI55M3 %2.0f
format H2RI55Y3 %3.0f
format H2RI56_3 %1.0f
format H2RI57M3 %2.0f
format H2RI57Y3 %3.0f
format H2RI58_3 %3.0f
format H2RI59_3 %1.0f
format H2RI60_3 %1.0f
format H2RI61M3 %2.0f
format H2RI61Y3 %3.0f
format H2RI62_3 %1.0f
format H2RI63M3 %2.0f
format H2RI63Y3 %3.0f
format H2RI64_3 %3.0f
format H2RI65_3 %1.0f
format H2RI66_3 %1.0f
format H2RI67M3 %2.0f
format H2RI67Y3 %3.0f
format H2RI68_3 %1.0f
format H2RI69M3 %2.0f
format H2RI69Y3 %3.0f
format H2RI70_3 %3.0f
format H2RI71_3 %1.0f
format H2NR1 %1.0f
format H2NR2 %1.0f
format H2NR4 %3.0f
format H2NR5 %1.0f
format H2NR6 %1.0f
format H2NR7 %1.0f
format H2NR8 %3.0f
format H2NR9 %3.0f
format H2NR10 %1.0f
format H2NR11 %2.0f
format H2NR12 %2.0f
format H2NR15A %1.0f
format H2NR15B %1.0f
format H2NR16_1 %1.0f
format H2NR17_1 %1.0f
format H2NR18_1 %1.0f
format NRRXW2_1 %1.0f
format H2RX1M_1 %2.0f
format H2RX1Y_1 %3.0f
format H2RX2_1 %2.0f
format H2RX3_1 %2.0f
format H2RX4_1 %2.0f
format H2RX5_1 %1.0f
format H2RX6_1 %1.0f
format H2RX7A_1 %1.0f
format H2RX7B_1 %1.0f
format H2RX7C_1 %1.0f
format H2RX7D_1 %1.0f
format H2RX7E_1 %1.0f
format H2RX7F_1 %1.0f
format H2RX7G_1 %1.0f
format H2RX7H_1 %1.0f
format H2RX8_1 %2.0f
format H2RX9_1 %1.0f
format H2RX10M1 %2.0f
format H2RX10Y1 %3.0f
format H2RX11_1 %1.0f
format H2RX12M1 %2.0f
format H2RX12Y1 %3.0f
format H2RX13_1 %1.0f
format H2RX14M1 %2.0f
format H2RX14Y1 %3.0f
format H2RX15_1 %1.0f
format H2RX16M1 %2.0f
format H2RX16Y1 %3.0f
format H2RX17_1 %1.0f
format H2RX18M1 %2.0f
format H2RX18Y1 %3.0f
format H2RX19_1 %1.0f
format H2RX20M1 %2.0f
format H2RX20Y1 %3.0f
format H2RX21_1 %1.0f
format H2RX22_1 %1.0f
format H2RX23_1 %1.0f
format H2RX24_1 %1.0f
format H2RX25_1 %1.0f
format H2RX26_1 %2.0f
format H2RX27_1 %2.0f
format H2RX28_1 %1.0f
format H2RX29A1 %1.0f
format H2RX29B1 %1.0f
format H2RX29C1 %1.0f
format H2RX29D1 %1.0f
format H2RX29E1 %1.0f
format H2RX29F1 %1.0f
format H2RX30A1 %1.0f
format H2RX30B1 %1.0f
format H2RX30C1 %1.0f
format H2RX30D1 %1.0f
format H2RX30E1 %1.0f
format H2RX31A1 %1.0f
format H2RX31B1 %1.0f
format H2RX31C1 %1.0f
format H2RX31D1 %1.0f
format H2RX31E1 %1.0f
format H2RX31F1 %1.0f
format H2RX31G1 %1.0f
format H2RX32_1 %1.0f
format H2RX33A1 %1.0f
format H2RX33B1 %1.0f
format H2RX33C1 %1.0f
format H2RX33D1 %1.0f
format H2RX33E1 %1.0f
format H2RX33F1 %1.0f
format H2RX33G1 %1.0f
format H2RX33H1 %1.0f
format H2RX33I1 %1.0f
format H2RX33J1 %1.0f
format H2RX33K1 %1.0f
format H2RX33L1 %1.0f
format H2RX33M1 %1.0f
format H2RX33N1 %1.0f
format H2RX33O1 %1.0f
format H2RX34A1 %2.0f
format H2RX34B1 %2.0f
format H2RX34C1 %2.0f
format H2RX34D1 %2.0f
format H2RX34E1 %2.0f
format H2RX34F1 %2.0f
format H2RX34G1 %2.0f
format H2RX34H1 %2.0f
format H2RX34I1 %2.0f
format H2RX34J1 %2.0f
format H2RX34K1 %2.0f
format H2RX34L1 %2.0f
format H2RX34M1 %2.0f
format H2RX34N1 %2.0f
format H2RX34O1 %2.0f
format H2RX35_1 %1.0f
format H2RX36_1 %1.0f
format H2RX37M1 %2.0f
format H2RX37Y1 %3.0f
format H2RX38M1 %2.0f
format H2RX38Y1 %3.0f
format H2RX39_1 %1.0f
format H2RX40_1 %1.0f
format H2RX41A1 %2.0f
format H2RX41B1 %2.0f
format H2RX41C1 %2.0f
format H2RX42_1 %1.0f
format H2RX43_1 %1.0f
format H2RX44_1 %1.0f
format H2RX45A1 %2.0f
format H2RX45B1 %2.0f
format H2RX45C1 %2.0f
format H2RX46_1 %1.0f
format H2RX47_1 %1.0f
format H2RX48_1 %1.0f
format H2RX49_1 %1.0f
format H2RX50A1 %2.0f
format H2RX50B1 %2.0f
format H2RX50C1 %2.0f
format H2RX51_1 %1.0f
format H2RX52_1 %1.0f
format H2RX53_1 %3.0f
format H2RX54_1 %1.0f
format H2RX55M1 %2.0f
format H2RX55Y1 %3.0f
format H2RX56_1 %1.0f
format H2RX57M1 %2.0f
format H2RX57Y1 %3.0f
format H2RX58_1 %3.0f
format H2RX59_1 %1.0f
format H2RX60_1 %1.0f
format H2RX61M1 %2.0f
format H2RX61Y1 %3.0f
format H2RX62_1 %1.0f
format H2RX63M1 %2.0f
format H2RX63Y1 %3.0f
format H2RX64_1 %3.0f
format H2RX65_1 %1.0f
format H2RX66_1 %1.0f
format H2RX67M1 %2.0f
format H2RX67Y1 %3.0f
format H2RX68_1 %1.0f
format H2RX69M1 %2.0f
format H2RX69Y1 %3.0f
format H2RX70_1 %3.0f
format H2RX71_1 %1.0f
format H2NR19_1 %2.0f
format H2NR20_1 %1.0f
format H2NR21_1 %1.0f
format H2NR22_1 %1.0f
format H2NR23_1 %1.0f
format H2NR24_1 %1.0f
format H2NR25_1 %1.0f
format H2NR26A1 %1.0f
format H2NR26B1 %1.0f
format H2NR26C1 %1.0f
format H2NR26D1 %1.0f
format H2NR26E1 %1.0f
format H2NR26F1 %1.0f
format H2NR27A1 %1.0f
format H2NR27B1 %1.0f
format H2NR27C1 %1.0f
format H2NR27D1 %1.0f
format H2NR27E1 %1.0f
format H2NR28A1 %1.0f
format H2NR28B1 %1.0f
format H2NR28C1 %1.0f
format H2NR28D1 %1.0f
format H2NR28E1 %1.0f
format H2NR28F1 %1.0f
format H2NR28G1 %1.0f
format H2NR29A1 %1.0f
format H2NR29B1 %1.0f
format H2NR29C1 %1.0f
format H2NR29D1 %1.0f
format H2NR29E1 %1.0f
format H2NR29F1 %1.0f
format H2NR29G1 %1.0f
format H2NR29H1 %1.0f
format H2NR30_1 %1.0f
format H2NR31_1 %1.0f
format H2NR32M1 %2.0f
format H2NR32Y1 %3.0f
format H2NR33_1 %1.0f
format H2NR34M1 %2.0f
format H2NR34Y1 %3.0f
format H2NR35_1 %1.0f
format H2NR36M1 %2.0f
format H2NR36Y1 %3.0f
format H2NR37_1 %1.0f
format H2NR38M1 %2.0f
format H2NR38Y1 %3.0f
format H2NR39_1 %1.0f
format H2NR40M1 %2.0f
format H2NR40Y1 %3.0f
format H2NR41_1 %1.0f
format H2NR42M1 %2.0f
format H2NR42Y1 %3.0f
format H2NR43M1 %2.0f
format H2NR43Y1 %3.0f
format H2NR44_1 %1.0f
format H2NR45_1 %1.0f
format H2NR46A1 %2.0f
format H2NR46B1 %2.0f
format H2NR46C1 %2.0f
format H2NR47_1 %1.0f
format H2NR48_1 %1.0f
format H2NR49_1 %1.0f
format H2NR50A1 %2.0f
format H2NR50B1 %2.0f
format H2NR50C1 %2.0f
format H2NR51_1 %1.0f
format H2NR52_1 %1.0f
format H2NR53_1 %1.0f
format H2NR54_1 %1.0f
format H2NR55A1 %2.0f
format H2NR55B1 %2.0f
format H2NR55C1 %2.0f
format H2NR56_1 %1.0f
format H2NR57_1 %1.0f
format H2NR58_1 %3.0f
format H2NR59_1 %1.0f
format H2NR60M1 %2.0f
format H2NR60Y1 %3.0f
format H2NR61_1 %1.0f
format H2NR62M1 %2.0f
format H2NR62Y1 %3.0f
format H2NR63_1 %2.0f
format H2NR64_1 %1.0f
format H2NR65_1 %1.0f
format H2NR66M1 %2.0f
format H2NR66Y1 %3.0f
format H2NR67_1 %1.0f
format H2NR68M1 %2.0f
format H2NR68Y1 %3.0f
format H2NR69_1 %3.0f
format H2NR70_1 %1.0f
format H2NR71_1 %1.0f
format H2NR72M1 %2.0f
format H2NR72Y1 %3.0f
format H2NR73_1 %1.0f
format H2NR74M1 %2.0f
format H2NR74Y1 %3.0f
format H2NR75_1 %2.0f
format H2NR76_1 %1.0f
format H2NR77_1 %1.0f
format H2NR78_1 %2.0f
format H2NR16_2 %1.0f
format H2NR17_2 %1.0f
format H2NR18_2 %1.0f
format NRRXW2_2 %1.0f
format H2RX1M_2 %2.0f
format H2RX1Y_2 %3.0f
format H2RX2_2 %2.0f
format H2RX3_2 %2.0f
format H2RX4_2 %2.0f
format H2RX5_2 %1.0f
format H2RX6_2 %1.0f
format H2RX7A_2 %1.0f
format H2RX7B_2 %1.0f
format H2RX7C_2 %1.0f
format H2RX7D_2 %1.0f
format H2RX7E_2 %1.0f
format H2RX7F_2 %1.0f
format H2RX7G_2 %1.0f
format H2RX7H_2 %1.0f
format H2RX8_2 %2.0f
format H2RX9_2 %1.0f
format H2RX10M2 %2.0f
format H2RX10Y2 %3.0f
format H2RX11_2 %1.0f
format H2RX12M2 %2.0f
format H2RX12Y2 %3.0f
format H2RX13_2 %1.0f
format H2RX14M2 %2.0f
format H2RX14Y2 %3.0f
format H2RX15_2 %1.0f
format H2RX16M2 %2.0f
format H2RX16Y2 %3.0f
format H2RX17_2 %1.0f
format H2RX18M2 %2.0f
format H2RX18Y2 %3.0f
format H2RX19_2 %1.0f
format H2RX20M2 %2.0f
format H2RX20Y2 %3.0f
format H2RX21_2 %1.0f
format H2RX22_2 %1.0f
format H2RX23_2 %1.0f
format H2RX24_2 %1.0f
format H2RX25_2 %1.0f
format H2RX26_2 %2.0f
format H2RX27_2 %2.0f
format H2RX28_2 %1.0f
format H2RX29A2 %1.0f
format H2RX29B2 %1.0f
format H2RX29C2 %1.0f
format H2RX29D2 %1.0f
format H2RX29E2 %1.0f
format H2RX29F2 %1.0f
format H2RX30A2 %1.0f
format H2RX30B2 %1.0f
format H2RX30C2 %1.0f
format H2RX30D2 %1.0f
format H2RX30E2 %1.0f
format H2RX31A2 %1.0f
format H2RX31B2 %1.0f
format H2RX31C2 %1.0f
format H2RX31D2 %1.0f
format H2RX31E2 %1.0f
format H2RX31F2 %1.0f
format H2RX31G2 %1.0f
format H2RX32_2 %1.0f
format H2RX33A2 %1.0f
format H2RX33B2 %1.0f
format H2RX33C2 %1.0f
format H2RX33D2 %1.0f
format H2RX33E2 %1.0f
format H2RX33F2 %1.0f
format H2RX33G2 %1.0f
format H2RX33H2 %1.0f
format H2RX33I2 %1.0f
format H2RX33J2 %1.0f
format H2RX33K2 %1.0f
format H2RX33L2 %1.0f
format H2RX33M2 %1.0f
format H2RX33N2 %1.0f
format H2RX33O2 %1.0f
format H2RX34A2 %2.0f
format H2RX34B2 %2.0f
format H2RX34C2 %2.0f
format H2RX34D2 %2.0f
format H2RX34E2 %2.0f
format H2RX34F2 %2.0f
format H2RX34G2 %2.0f
format H2RX34H2 %2.0f
format H2RX34I2 %2.0f
format H2RX34J2 %2.0f
format H2RX34K2 %2.0f
format H2RX34L2 %2.0f
format H2RX34M2 %2.0f
format H2RX34N2 %2.0f
format H2RX34O2 %2.0f
format H2RX35_2 %1.0f
format H2RX36_2 %1.0f
format H2RX37M2 %2.0f
format H2RX37Y2 %3.0f
format H2RX38M2 %2.0f
format H2RX38Y2 %3.0f
format H2RX39_2 %1.0f
format H2RX40_2 %1.0f
format H2RX41A2 %2.0f
format H2RX41B2 %2.0f
format H2RX41C2 %2.0f
format H2RX42_2 %1.0f
format H2RX43_2 %1.0f
format H2RX44_2 %1.0f
format H2RX45A2 %2.0f
format H2RX45B2 %2.0f
format H2RX45C2 %2.0f
format H2RX46_2 %1.0f
format H2RX47_2 %1.0f
format H2RX48_2 %1.0f
format H2RX49_2 %1.0f
format H2RX50A2 %2.0f
format H2RX50B2 %2.0f
format H2RX50C2 %2.0f
format H2RX51_2 %1.0f
format H2RX52_2 %1.0f
format H2RX53_2 %3.0f
format H2RX54_2 %1.0f
format H2RX55M2 %2.0f
format H2RX55Y2 %3.0f
format H2RX56_2 %1.0f
format H2RX57M2 %2.0f
format H2RX57Y2 %3.0f
format H2RX58_2 %3.0f
format H2RX59_2 %1.0f
format H2RX60_2 %1.0f
format H2RX61M2 %2.0f
format H2RX61Y2 %3.0f
format H2RX62_2 %1.0f
format H2RX63M2 %2.0f
format H2RX63Y2 %3.0f
format H2RX64_2 %3.0f
format H2RX65_2 %1.0f
format H2RX66_2 %1.0f
format H2RX67M2 %2.0f
format H2RX67Y2 %3.0f
format H2RX68_2 %1.0f
format H2RX69M2 %2.0f
format H2RX69Y2 %3.0f
format H2RX70_2 %3.0f
format H2RX71_2 %1.0f
format H2NR19_2 %2.0f
format H2NR20_2 %1.0f
format H2NR21_2 %1.0f
format H2NR22_2 %1.0f
format H2NR23_2 %1.0f
format H2NR24_2 %1.0f
format H2NR25_2 %1.0f
format H2NR26A2 %1.0f
format H2NR26B2 %1.0f
format H2NR26C2 %1.0f
format H2NR26D2 %1.0f
format H2NR26E2 %1.0f
format H2NR26F2 %1.0f
format H2NR27A2 %1.0f
format H2NR27B2 %1.0f
format H2NR27C2 %1.0f
format H2NR27D2 %1.0f
format H2NR27E2 %1.0f
format H2NR28A2 %1.0f
format H2NR28B2 %1.0f
format H2NR28C2 %1.0f
format H2NR28D2 %1.0f
format H2NR28E2 %1.0f
format H2NR28F2 %1.0f
format H2NR28G2 %1.0f
format H2NR29A2 %1.0f
format H2NR29B2 %1.0f
format H2NR29C2 %1.0f
format H2NR29D2 %1.0f
format H2NR29E2 %1.0f
format H2NR29F2 %1.0f
format H2NR29G2 %1.0f
format H2NR29H2 %1.0f
format H2NR30_2 %1.0f
format H2NR31_2 %1.0f
format H2NR32M2 %2.0f
format H2NR32Y2 %3.0f
format H2NR33_2 %1.0f
format H2NR34M2 %2.0f
format H2NR34Y2 %3.0f
format H2NR35_2 %1.0f
format H2NR36M2 %2.0f
format H2NR36Y2 %3.0f
format H2NR37_2 %1.0f
format H2NR38M2 %2.0f
format H2NR38Y2 %3.0f
format H2NR39_2 %1.0f
format H2NR40M2 %2.0f
format H2NR40Y2 %3.0f
format H2NR41_2 %1.0f
format H2NR42M2 %2.0f
format H2NR42Y2 %3.0f
format H2NR43M2 %2.0f
format H2NR43Y2 %3.0f
format H2NR44_2 %1.0f
format H2NR45_2 %1.0f
format H2NR46A2 %2.0f
format H2NR46B2 %2.0f
format H2NR46C2 %2.0f
format H2NR47_2 %1.0f
format H2NR48_2 %1.0f
format H2NR49_2 %1.0f
format H2NR50A2 %2.0f
format H2NR50B2 %2.0f
format H2NR50C2 %2.0f
format H2NR51_2 %1.0f
format H2NR52_2 %1.0f
format H2NR53_2 %1.0f
format H2NR54_2 %1.0f
format H2NR55A2 %2.0f
format H2NR55B2 %2.0f
format H2NR55C2 %2.0f
format H2NR56_2 %1.0f
format H2NR57_2 %1.0f
format H2NR58_2 %3.0f
format H2NR59_2 %1.0f
format H2NR60M2 %2.0f
format H2NR60Y2 %3.0f
format H2NR61_2 %1.0f
format H2NR62M2 %2.0f
format H2NR62Y2 %3.0f
format H2NR63_2 %2.0f
format H2NR64_2 %1.0f
format H2NR65_2 %1.0f
format H2NR66M2 %2.0f
format H2NR66Y2 %3.0f
format H2NR67_2 %1.0f
format H2NR68M2 %2.0f
format H2NR68Y2 %3.0f
format H2NR69_2 %3.0f
format H2NR70_2 %1.0f
format H2NR71_2 %1.0f
format H2NR72M2 %2.0f
format H2NR72Y2 %3.0f
format H2NR73_2 %1.0f
format H2NR74M2 %2.0f
format H2NR74Y2 %3.0f
format H2NR75_2 %2.0f
format H2NR76_2 %1.0f
format H2NR77_2 %1.0f
format H2NR78_2 %2.0f
format H2NR16_3 %1.0f
format H2NR17_3 %1.0f
format H2NR18_3 %1.0f
format NRRXW2_3 %1.0f
format H2RX1M_3 %2.0f
format H2RX1Y_3 %3.0f
format H2RX2_3 %2.0f
format H2RX3_3 %2.0f
format H2RX4_3 %2.0f
format H2RX5_3 %1.0f
format H2RX6_3 %1.0f
format H2RX7A_3 %1.0f
format H2RX7B_3 %1.0f
format H2RX7C_3 %1.0f
format H2RX7D_3 %1.0f
format H2RX7E_3 %1.0f
format H2RX7F_3 %1.0f
format H2RX7G_3 %1.0f
format H2RX7H_3 %1.0f
format H2RX8_3 %2.0f
format H2RX9_3 %1.0f
format H2RX10M3 %2.0f
format H2RX10Y3 %3.0f
format H2RX11_3 %1.0f
format H2RX12M3 %2.0f
format H2RX12Y3 %3.0f
format H2RX13_3 %1.0f
format H2RX14M3 %2.0f
format H2RX14Y3 %3.0f
format H2RX15_3 %1.0f
format H2RX16M3 %2.0f
format H2RX16Y3 %3.0f
format H2RX17_3 %1.0f
format H2RX18M3 %2.0f
format H2RX18Y3 %3.0f
format H2RX19_3 %1.0f
format H2RX20M3 %2.0f
format H2RX20Y3 %3.0f
format H2RX21_3 %1.0f
format H2RX22_3 %1.0f
format H2RX23_3 %1.0f
format H2RX24_3 %1.0f
format H2RX25_3 %1.0f
format H2RX26_3 %2.0f
format H2RX27_3 %2.0f
format H2RX28_3 %1.0f
format H2RX29A3 %1.0f
format H2RX29B3 %1.0f
format H2RX29C3 %1.0f
format H2RX29D3 %1.0f
format H2RX29E3 %1.0f
format H2RX29F3 %1.0f
format H2RX30A3 %1.0f
format H2RX30B3 %1.0f
format H2RX30C3 %1.0f
format H2RX30D3 %1.0f
format H2RX30E3 %1.0f
format H2RX31A3 %1.0f
format H2RX31B3 %1.0f
format H2RX31C3 %1.0f
format H2RX31D3 %1.0f
format H2RX31E3 %1.0f
format H2RX31F3 %1.0f
format H2RX31G3 %1.0f
format H2RX32_3 %1.0f
format H2RX33A3 %1.0f
format H2RX33B3 %1.0f
format H2RX33C3 %1.0f
format H2RX33D3 %1.0f
format H2RX33E3 %1.0f
format H2RX33F3 %1.0f
format H2RX33G3 %1.0f
format H2RX33H3 %1.0f
format H2RX33I3 %1.0f
format H2RX33J3 %1.0f
format H2RX33K3 %1.0f
format H2RX33L3 %1.0f
format H2RX33M3 %1.0f
format H2RX33N3 %1.0f
format H2RX33O3 %1.0f
format H2RX34A3 %2.0f
format H2RX34B3 %2.0f
format H2RX34C3 %2.0f
format H2RX34D3 %2.0f
format H2RX34E3 %2.0f
format H2RX34F3 %2.0f
format H2RX34G3 %2.0f
format H2RX34H3 %2.0f
format H2RX34I3 %2.0f
format H2RX34J3 %2.0f
format H2RX34K3 %2.0f
format H2RX34L3 %2.0f
format H2RX34M3 %2.0f
format H2RX34N3 %2.0f
format H2RX34O3 %2.0f
format H2RX35_3 %1.0f
format H2RX36_3 %1.0f
format H2RX37M3 %2.0f
format H2RX37Y3 %3.0f
format H2RX38M3 %2.0f
format H2RX38Y3 %3.0f
format H2RX39_3 %1.0f
format H2RX40_3 %1.0f
format H2RX41A3 %2.0f
format H2RX41B3 %2.0f
format H2RX41C3 %2.0f
format H2RX42_3 %1.0f
format H2RX43_3 %1.0f
format H2RX44_3 %1.0f
format H2RX45A3 %2.0f
format H2RX45B3 %2.0f
format H2RX45C3 %2.0f
format H2RX46_3 %1.0f
format H2RX47_3 %1.0f
format H2RX48_3 %1.0f
format H2RX49_3 %1.0f
format H2RX50A3 %2.0f
format H2RX50B3 %2.0f
format H2RX50C3 %2.0f
format H2RX51_3 %1.0f
format H2RX52_3 %1.0f
format H2RX53_3 %3.0f
format H2RX54_3 %1.0f
format H2RX55M3 %2.0f
format H2RX55Y3 %3.0f
format H2RX56_3 %1.0f
format H2RX57M3 %2.0f
format H2RX57Y3 %3.0f
format H2RX58_3 %3.0f
format H2RX59_3 %1.0f
format H2RX60_3 %1.0f
format H2RX61M3 %2.0f
format H2RX61Y3 %3.0f
format H2RX62_3 %1.0f
format H2RX63M3 %2.0f
format H2RX63Y3 %3.0f
format H2RX64_3 %3.0f
format H2RX65_3 %1.0f
format H2RX66_3 %1.0f
format H2RX67M3 %2.0f
format H2RX67Y3 %3.0f
format H2RX68_3 %1.0f
format H2RX69M3 %2.0f
format H2RX69Y3 %3.0f
format H2RX70_3 %3.0f
format H2RX71_3 %1.0f
format H2NR19_3 %2.0f
format H2NR20_3 %1.0f
format H2NR21_3 %1.0f
format H2NR22_3 %1.0f
format H2NR23_3 %1.0f
format H2NR24_3 %1.0f
format H2NR25_3 %1.0f
format H2NR26A3 %1.0f
format H2NR26B3 %1.0f
format H2NR26C3 %1.0f
format H2NR26D3 %1.0f
format H2NR26E3 %1.0f
format H2NR26F3 %1.0f
format H2NR27A3 %1.0f
format H2NR27B3 %1.0f
format H2NR27C3 %1.0f
format H2NR27D3 %1.0f
format H2NR27E3 %1.0f
format H2NR28A3 %1.0f
format H2NR28B3 %1.0f
format H2NR28C3 %1.0f
format H2NR28D3 %1.0f
format H2NR28E3 %1.0f
format H2NR28F3 %1.0f
format H2NR28G3 %1.0f
format H2NR29A3 %1.0f
format H2NR29B3 %1.0f
format H2NR29C3 %1.0f
format H2NR29D3 %1.0f
format H2NR29E3 %1.0f
format H2NR29F3 %1.0f
format H2NR29G3 %1.0f
format H2NR29H3 %1.0f
format H2NR30_3 %1.0f
format H2NR31_3 %1.0f
format H2NR32M3 %2.0f
format H2NR32Y3 %3.0f
format H2NR33_3 %1.0f
format H2NR34M3 %2.0f
format H2NR34Y3 %3.0f
format H2NR35_3 %1.0f
format H2NR36M3 %2.0f
format H2NR36Y3 %3.0f
format H2NR37_3 %1.0f
format H2NR38M3 %2.0f
format H2NR38Y3 %3.0f
format H2NR39_3 %1.0f
format H2NR40M3 %2.0f
format H2NR40Y3 %3.0f
format H2NR41_3 %1.0f
format H2NR42M3 %2.0f
format H2NR42Y3 %3.0f
format H2NR43M3 %2.0f
format H2NR43Y3 %3.0f
format H2NR44_3 %1.0f
format H2NR45_3 %1.0f
format H2NR46A3 %2.0f
format H2NR46B3 %2.0f
format H2NR46C3 %2.0f
format H2NR47_3 %1.0f
format H2NR48_3 %1.0f
format H2NR49_3 %1.0f
format H2NR50A3 %2.0f
format H2NR50B3 %2.0f
format H2NR50C3 %2.0f
format H2NR51_3 %1.0f
format H2NR52_3 %1.0f
format H2NR53_3 %1.0f
format H2NR54_3 %1.0f
format H2NR55A3 %2.0f
format H2NR55B3 %2.0f
format H2NR55C3 %2.0f
format H2NR56_3 %1.0f
format H2NR57_3 %1.0f
format H2NR58_3 %3.0f
format H2NR59_3 %1.0f
format H2NR60M3 %2.0f
format H2NR60Y3 %3.0f
format H2NR61_3 %1.0f
format H2NR62M3 %2.0f
format H2NR62Y3 %3.0f
format H2NR63_3 %2.0f
format H2NR64_3 %1.0f
format H2NR65_3 %1.0f
format H2NR66M3 %2.0f
format H2NR66Y3 %3.0f
format H2NR67_3 %1.0f
format H2NR68M3 %2.0f
format H2NR68Y3 %3.0f
format H2NR69_3 %3.0f
format H2NR70_3 %1.0f
format H2NR71_3 %1.0f
format H2NR72M3 %2.0f
format H2NR72Y3 %3.0f
format H2NR73_3 %1.0f
format H2NR74M3 %2.0f
format H2NR74Y3 %3.0f
format H2NR75_3 %2.0f
format H2NR76_3 %1.0f
format H2NR77_3 %1.0f
format H2NR78_3 %2.0f
format H2NR79 %1.0f
format H2NR80 %2.0f
format H2NR81 %2.0f
format H2NR82 %1.0f
format H2NR83 %1.0f
format H2NR84 %1.0f
format H2NR85 %2.0f
format H2NR86 %2.0f
format H2NR87 %1.0f
format H2NR88 %1.0f
format H2BC1 %1.0f
format H2BC2 %1.0f
format H2BC3 %1.0f
format H2BC4 %1.0f
format H2BC5 %1.0f
format H2BC6 %1.0f
format H2BC7 %1.0f
format H2BC8 %1.0f
format H2TO1 %1.0f
format H2TO3 %1.0f
format H2TO4M %2.0f
format H2TO4Y %3.0f
format H2TO5 %2.0f
format H2TO6M %2.0f
format H2TO6Y %3.0f
format H2TO7 %2.0f
format H2TO8 %2.0f
format H2TO9 %1.0f
format H2TO10 %1.0f
format H2TO11 %1.0f
format H2TO12 %2.0f
format H2TO14 %2.0f
format H2TO15 %1.0f
format H2TO16 %1.0f
format H2TO18M %2.0f
format H2TO18Y %3.0f
format H2TO19 %2.0f
format H2TO20 %2.0f
format H2TO21 %2.0f
format H2TO22 %2.0f
format H2TO23 %2.0f
format H2TO24 %2.0f
format H2TO25 %1.0f
format H2TO26 %1.0f
format H2TO27 %1.0f
format H2TO28 %1.0f
format H2TO29 %1.0f
format H2TO30 %1.0f
format H2TO31 %1.0f
format H2TO32 %1.0f
format H2TO33 %1.0f
format H2TO34 %1.0f
format H2TO35 %1.0f
format H2TO36 %1.0f
format H2TO37 %1.0f
format H2TO38 %1.0f
format H2TO39 %1.0f
format H2TO40 %1.0f
format H2TO41 %1.0f
format H2TO42 %1.0f
format H2TO44 %1.0f
format H2TO45 %4.0f
format H2TO46 %3.0f
format H2TO47 %2.0f
format H2TO48 %1.0f
format H2TO49 %2.0f
format H2TO50 %1.0f
format H2TO51 %3.0f
format H2TO52 %3.0f
format H2TO54 %1.0f
format H2TO55 %3.0f
format H2TO56 %3.0f
format H2TO58 %1.0f
format H2TO59 %4.0f
format H2TO60 %4.0f
format H2TO61 %1.0f
format H2TO62 %1.0f
format H2TO63 %2.0f
format H2TO64 %1.0f
format H2TO65 %1.0f
format H2TO66 %1.0f
format H2TO67 %1.0f
format H2TO68 %1.0f
format H2DS1 %1.0f
format H2DS2 %1.0f
format H2DS3 %1.0f
format H2DS4 %1.0f
format H2DS5 %1.0f
format H2DS6 %1.0f
format H2DS7 %1.0f
format H2DS8 %1.0f
format H2DS9 %1.0f
format H2DS10 %1.0f
format H2DS11 %1.0f
format H2DS12 %1.0f
format H2DS13 %1.0f
format H2DS14 %1.0f
format H2FV1 %1.0f
format H2FV2 %1.0f
format H2FV3 %1.0f
format H2FV4 %1.0f
format H2FV5 %1.0f
format H2FV6 %1.0f
format H2FV7 %1.0f
format H2FV8 %1.0f
format H2FV9 %1.0f
format H2FV10 %1.0f
format H2FV11 %1.0f
format H2FV12 %1.0f
format H2FV13 %1.0f
format H2FV14 %1.0f
format H2FV15A %1.0f
format H2FV15B %1.0f
format H2FV15C %1.0f
format H2FV15D %1.0f
format H2FV16 %1.0f
format H2FV17 %1.0f
format H2FV18 %2.0f
format H2FV19 %1.0f
format H2FV20 %3.0f
format H2FV21M %2.0f
format H2FV21Y %3.0f
format H2FV22 %1.0f
format H2JO1 %1.0f
format H2JO2 %1.0f
format H2JO3 %1.0f
format H2JO4 %1.0f
format H2JO5 %1.0f
format H2JO6A %1.0f
format H2JO6B %1.0f
format H2JO6C %1.0f
format H2JO6D %1.0f
format H2JO6E %1.0f
format H2JO7 %1.0f
format H2JO8A %1.0f
format H2JO8B %1.0f
format H2JO8C %1.0f
format H2JO8D %1.0f
format H2JO8E %1.0f
format H2JO9 %1.0f
format H2JO10A %1.0f
format H2JO10B %1.0f
format H2JO10C %1.0f
format H2JO10D %1.0f
format H2JO10E %1.0f
format H2JO11 %1.0f
format H2JO12 %1.0f
format H2JO13 %1.0f
format H2JO14A %1.0f
format H2JO14B %1.0f
format H2JO14C %1.0f
format H2JO14D %1.0f
format H2JO14E %1.0f
format H2JO16 %1.0f
format H2MP1 %1.0f
format H2MP2 %1.0f
format H2MP3 %1.0f
format H2MP4 %1.0f
format H2FP1 %1.0f
format H2FP2 %1.0f
format H2FP3 %1.0f
format H2FP4 %2.0f
format H2FP5M %2.0f
format H2FP5D %2.0f
format H2FP6 %1.0f
format H2FP7 %2.0f
format H2FP8 %1.0f
format H2FP9 %1.0f
format H2FP10 %1.0f
format H2FP11 %2.0f
format H2FP12M1 %2.0f
format H2FP12Y1 %3.0f
format H2FP14_1 %1.0f
format H2FP12M2 %2.0f
format H2FP12Y2 %3.0f
format H2FP14_2 %1.0f
format H2FP12M3 %2.0f
format H2FP12Y3 %3.0f
format H2FP14_3 %1.0f
format H2FP16_1 %1.0f
format H2FP17A1 %2.0f
format H2FP17B1 %2.0f
format H2FP17C1 %2.0f
format H2FP18_1 %1.0f
format H2FP19_1 %1.0f
format H2FP20_1 %1.0f
format H2FP21_1 %1.0f
format H2FP22_1 %1.0f
format H2FP23_1 %1.0f
format H2FP24M1 %2.0f
format H2FP24Y1 %3.0f
format H2FP25_1 %1.0f
format H2FP26_1 %1.0f
format H2FP27A1 %1.0f
format H2FP28A1 %1.0f
format H2F29MA1 %2.0f
format H2F29YA1 %3.0f
format H2FP30A1 %1.0f
format H2FP31A1 %1.0f
format H2FP32A1 %1.0f
format H2FP33A1 %1.0f
format H2FP34A1 %1.0f
format H2FP35A1 %1.0f
format H2FP36A1 %1.0f
format H2FP37A1 %1.0f
format H2FP38A1 %3.0f
format H2FP16_2 %1.0f
format H2FP17A2 %2.0f
format H2FP17B2 %2.0f
format H2FP17C2 %2.0f
format H2FP18_2 %1.0f
format H2FP19_2 %1.0f
format H2FP20_2 %1.0f
format H2FP21_2 %1.0f
format H2FP22_2 %1.0f
format H2FP23_2 %1.0f
format H2FP24M2 %2.0f
format H2FP24Y2 %3.0f
format H2FP25_2 %1.0f
format H2FP26_2 %1.0f
format H2FP27A2 %1.0f
format H2FP28A2 %1.0f
format H2F29MA2 %2.0f
format H2F29YA2 %3.0f
format H2FP30A2 %1.0f
format H2FP31A2 %1.0f
format H2FP32A2 %1.0f
format H2FP33A2 %1.0f
format H2FP34A2 %1.0f
format H2FP35A2 %1.0f
format H2FP36A2 %1.0f
format H2FP37A2 %1.0f
format H2FP38A2 %3.0f
format H2FP16_3 %1.0f
format H2FP17A3 %2.0f
format H2FP17B3 %2.0f
format H2FP17C3 %2.0f
format H2FP18_3 %1.0f
format H2FP19_3 %1.0f
format H2FP20_3 %1.0f
format H2FP21_3 %1.0f
format H2FP22_3 %1.0f
format H2FP23_3 %1.0f
format H2FP24M3 %2.0f
format H2FP24Y3 %3.0f
format H2FP25_3 %1.0f
format H2FP26_3 %1.0f
format H2FP27A3 %1.0f
format H2FP28A3 %1.0f
format H2F29MA3 %2.0f
format H2F29YA3 %3.0f
format H2FP30A3 %1.0f
format H2FP31A3 %1.0f
format H2FP32A3 %1.0f
format H2FP33A3 %1.0f
format H2FP34A3 %1.0f
format H2FP35A3 %1.0f
format H2FP36A3 %1.0f
format H2FP37A3 %1.0f
format H2FP38A3 %3.0f
format H2SU1 %1.0f
format H2SU2 %1.0f
format H2SU3 %1.0f
format H2SU4 %1.0f
format H2SU5 %1.0f
format H2SU6 %1.0f
format H2SU7 %1.0f
format H2SU8 %1.0f
format H2SU9 %1.0f
format H2PA1 %1.0f
format H2PA2 %1.0f
format H2PA3 %1.0f
format H2PA4 %1.0f
format H2PA5 %1.0f
format H2PA6 %1.0f
format H2PA7 %1.0f
format H2PR1 %2.0f
format H2PR2 %2.0f
format H2PR3 %2.0f
format H2PR4 %2.0f
format H2PR5 %2.0f
format H2PR6 %2.0f
format H2PR7 %2.0f
format H2PR8 %2.0f
format H2NB1 %1.0f
format H2NB2 %1.0f
format H2NB3 %1.0f
format H2NB4 %1.0f
format H2NB5 %1.0f
format H2NB6 %1.0f
format H2NB7 %1.0f
format H2NB8 %1.0f
format H2NB9 %2.0f
format H2NB10 %2.0f
format H2RE1 %2.0f
format H2RE2 %1.0f
format H2RE3 %1.0f
format H2RE4 %1.0f
format H2RE5 %1.0f
format H2RE6 %1.0f
format H2RE7 %1.0f
format H2EE1 %2.0f
format H2EE2 %2.0f
format H2EE3 %1.0f
format H2EE4 %3.0f
format H2EE5 %3.0f
format H2EE6 %3.0f
format H2EE7 %3.0f
format H2EE8 %2.0f
format H2EE9 %1.0f
format H2EE10 %1.0f
format H2EE11 %1.0f
format H2EE12 %1.0f
format H2EE13 %1.0f
format H2EE14 %1.0f
format H2EE15 %1.0f
format H2EE16 %1.0f
format H2EE17 %1.0f
format H2SIBA %1.0f
format H2TWINA %1.0f
format H2WS1A %1.0f
format H2WS2A %1.0f
format H2WS3A %1.0f
format H2WS4A %1.0f
format H2WS5A %2.0f
format H2WS6A %1.0f
format H2WS7A %1.0f
format H2WS8A %1.0f
format H2WS9A %1.0f
format H2WS10A %1.0f
format H2WS11A %1.0f
format H2WS12A %1.0f
format H2SIBB %1.0f
format H2TWINB %1.0f
format H2WS1B %1.0f
format H2WS2B %1.0f
format H2WS3B %1.0f
format H2WS4B %1.0f
format H2WS5B %2.0f
format H2WS6B %1.0f
format H2WS7B %1.0f
format H2WS8B %1.0f
format H2WS9B %1.0f
format H2WS10B %1.0f
format H2WS11B %1.0f
format H2WS12B %1.0f
format H2SIBC %1.0f
format H2TWINC %1.0f
format H2WS1C %1.0f
format H2WS2C %1.0f
format H2WS3C %1.0f
format H2WS4C %1.0f
format H2WS5C %2.0f
format H2WS6C %1.0f
format H2WS7C %1.0f
format H2WS8C %1.0f
format H2WS9C %1.0f
format H2WS10C %1.0f
format H2WS11C %1.0f
format H2WS12C %1.0f
format H2SIBD %1.0f
format H2TWIND %1.0f
format H2WS1D %1.0f
format H2WS2D %1.0f
format H2WS3D %1.0f
format H2WS4D %1.0f
format H2WS5D %2.0f
format H2WS6D %1.0f
format H2WS7D %1.0f
format H2WS8D %1.0f
format H2WS9D %1.0f
format H2WS10D %1.0f
format H2WS11D %1.0f
format H2WS12D %1.0f
format H2SIBE %1.0f
format H2TWINE %1.0f
format H2WS1E %1.0f
format H2WS2E %1.0f
format H2WS3E %1.0f
format H2WS4E %1.0f
format H2WS5E %2.0f
format H2WS6E %1.0f
format H2WS7E %1.0f
format H2WS8E %1.0f
format H2WS9E %1.0f
format H2WS10E %1.0f
format H2WS11E %1.0f
format H2WS12E %1.0f
format H2SIBF %1.0f
format H2TWINF %1.0f
format H2WS1F %1.0f
format H2WS2F %1.0f
format H2WS3F %1.0f
format H2WS4F %1.0f
format H2WS5F %2.0f
format H2WS6F %1.0f
format H2WS7F %1.0f
format H2WS8F %1.0f
format H2WS9F %1.0f
format H2WS10F %1.0f
format H2WS11F %1.0f
format H2WS12F %1.0f
format H2SIBG %1.0f
format H2TWING %1.0f
format H2WS1G %1.0f
format H2WS2G %1.0f
format H2WS3G %1.0f
format H2WS4G %1.0f
format H2WS5G %2.0f
format H2WS6G %1.0f
format H2WS7G %1.0f
format H2WS8G %1.0f
format H2WS9G %1.0f
format H2WS10G %1.0f
format H2WS11G %1.0f
format H2WS12G %1.0f
format H2WS16HF %2.0f
format H2WS16HI %2.0f
format H2WS16W %3.0f
format H2WS17 %1.0f
format H2IR1 %1.0f
format H2IR2 %1.0f
format H2IR3 %1.0f
format H2IR4 %1.0f
format H2IR5 %1.0f
format H2IR6 %1.0f
format H2IR7A %1.0f
format H2IR7B %1.0f
format H2IR7C %1.0f
format H2IR7D %1.0f
format H2IR7E %1.0f
format H2IR7F %1.0f
format H2IR7G %1.0f
format H2IR7H %1.0f
format H2IR7I %1.0f
format H2IR7J %1.0f
format H2IR7K %1.0f
format H2IR7L %1.0f
format H2IR7M %1.0f
format H2IR7N %1.0f
format H2IR7O %1.0f
format H2IR7P %1.0f
format H2IR7Q %1.0f
format H2IR7R %1.0f
format H2IR7S %1.0f
format H2IR7T %1.0f
format H2IR7U %1.0f
format H2IR7V %1.0f
format H2IR7W %1.0f
format H2IR7X %1.0f
format H2IR7Y %1.0f
format H2IR7Z %1.0f
format H2IR7AA %1.0f
format H2IR7BB %1.0f
format H2IR7CC %1.0f
format H2IR7DD %1.0f
format H2IR8A %2.0f
format H2IR8B %2.0f
format H2IR8C %2.0f
format H2IR8D %2.0f
format H2IR9 %1.0f
format H2IR10 %2.0f
format H2IR11 %1.0f
format H2IR12 %2.0f
format H2IR13 %2.0f
format H2IR14 %1.0f
format H2IR15 %1.0f
format H2IR16 %2.0f
format H2IR17A %1.0f
format H2IR17B %1.0f
format H2IR17C %1.0f
format H2IR17D %1.0f
format H2IR17E %1.0f
format H2IR17F %1.0f
format H2IR17G %1.0f
format H2IR17H %1.0f
format H2IR17I %1.0f
format H2IR17J %1.0f
format H2IR18 %1.0f
format H2IR19 %1.0f
format H2IR20 %1.0f
format H2IR21 %1.0f
format H2IR22A %1.0f
format H2IR22B %1.0f
format H2IR22C %1.0f
format H2IR22D %1.0f
format H2IR22E %1.0f
format H2IR22F %1.0f
format H2IR22G %1.0f
format H2IR22H %1.0f
format H2IR22I %1.0f
format H2IR22J %1.0f
format H2IR22K %1.0f
format H2IR22L %1.0f
format H2IR22M %1.0f
format H2IR22N %1.0f
format H2IR22O %1.0f
format H2IR22P %1.0f
format H2IR22Q %1.0f
format H2IR22R %1.0f
format H2IR22S %1.0f
format H2IR22T %1.0f
format H2IR22U %1.0f
format H2IR22V %1.0f
format H2IR22W %1.0f
format H2IR22X %1.0f
format H2IR22Y %1.0f
format H2IR22Z %1.0f
format H2IR22AA %1.0f
format H2IR22BB %1.0f
format H2IR22CC %1.0f
format H2IR22DD %1.0f
format H2IR22EE %1.0f
format H2IR22FF %1.0f
format H2IR22GG %1.0f
format H2IR22HH %1.0f
format H2IR22II %1.0f
format H2IR22JJ %1.0f
format H2IR22KK %1.0f
format H2IR22LL %1.0f
format H2IR23 %1.0f
format H2IR24 %1.0f
format H2IR25 %1.0f
format H2IR26 %1.0f
format H2IR27 %1.0f
format H2IR28 %1.0f
format H2IR31 %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave II: In-Home Questionnaire, Public Use Sample"

#delimit ;
label define IMONTH2   4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" ;
label define IDAY2     1 "(1) 1" 2 "(2) 2" 3 "(3) 3" 4 "(4) 4" 5 "(5) 5"
                       6 "(6) 6" 7 "(7) 7" 8 "(8) 8" 9 "(9) 9" 10 "(10) 10"
                       11 "(11) 11" 12 "(12) 12" 13 "(13) 13" 14 "(14) 14"
                       15 "(15) 15" 16 "(16) 16" 17 "(17) 17" 18 "(18) 18"
                       19 "(19) 19" 20 "(20) 20" 21 "(21) 21" 22 "(22) 22"
                       23 "(23) 23" 24 "(24) 24" 25 "(25) 25" 26 "(26) 26"
                       27 "(27) 27" 28 "(28) 28" 29 "(29) 29" 30 "(30) 30"
                       31 "(31) 31" ;
label define IYEAR2    96 "(96) 1996" ;
label define SCH_YR2   1 "(1) No" 2 "(2) Yes" ;
label define BIO_SEX2  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused" ;
label define SEXFLG2
                       1 "(1) Biological sex value used for skips was incorrect" ;
label define CALCAGE2  11 "(11) 11 years old" 12 "(12) 12 years old"
                       13 "(13) 13 years old" 14 "(14) 14 years old"
                       15 "(15) 15 years old" 16 "(16) 16 years old"
                       17 "(17) 17 years old" 18 "(18) 18 years old"
                       19 "(19) 19 years old" 20 "(20) 20 years old"
                       21 "(21) 21 years old" ;
label define AGEFLG2   1 "(1) Calculated age incorrect" ;
label define SMP01_2   0 "(0) Not selected" 1 "(1) Selected" ;
label define SMP02_2   0 "(0) Not selected" 1 "(1) Selected" ;
label define SMP03_2   0 "(0) Not selected" 1 "(1) Selected" ;
label define SMP04_2   0 "(0) Not selected" 1 "(1) Selected" ;
label define SMP05_2   0 "(0) Not selected" 1 "(1) Selected" ;
label define SMP06_2   0 "(0) Not selected" 1 "(1) Selected" ;
label define SMP07_2   0 "(0) Not selected" 1 "(1) Selected" ;
label define SMP08_2   0 "(0) Not selected" 1 "(1) Selected" ;
label define SMP09_2   0 "(0) Not selected" 1 "(1) Selected" ;
label define SMP10_2   0 "(0) Not selected" 1 "(1) Selected" ;
label define SMP11_2   0 "(0) Not selected" 1 "(1) Selected" ;
label define H2GI1M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" ;
label define H2GI1Y    74 "(74) 1974" 75 "(75) 1975" 76 "(76) 1976"
                       77 "(77) 1977" 78 "(78) 1978" 79 "(79) 1979"
                       80 "(80) 1980" 81 "(81) 1981" 82 "(82) 1982"
                       83 "(83) 1983" 96 "(96) Refused" ;
label define H2GI2     1 "(1) English" 2 "(2) Spanish" 3 "(3) Other" ;
label define H2GI3     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2GI4M    1 "(1) January to March" 2 "(2) April to June"
                       3 "(3) July to September" 4 "(4) October to December"
                       97 "(97) Legitimate skip" ;
label define H2GI4Y    95 "(95) 1995" 96 "(96) 1996"
                       997 "(997) Legitimate skip" ;
label define H2GI5     1 "(1) Not married" 2 "(2) Married"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GI6     0 "(0) No" 1 "(1) Yes"
                       2 "(2) Yes,the entire school year"
                       3 "(3) Yes,part of the school year" ;
label define H2GI7     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2GI8     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2GI9     7 "(7) Seventh Grade" 8 "(8) Eighth Grade"
                       9 "(9) Ninth Grade" 10 "(10) Tenth Grade"
                       11 "(11) Eleventh Grade" 12 "(12) Twelfth Grade"
                       13 "(13) Beyond High School"
                       14 "(14) School doesn't have grades of this kind"
                       97 "(97) Legitimate skip" ;
label define H2GI10    1 "(1) Suspended" 2 "(2) Expelled" 3 "(3) Dropped out"
                       4 "(4) Sick/injured" 5 "(5) On leave"
                       6 "(6) Graduated" 7 "(7) Pregnant"
                       8 "(8) Other (specify)" 97 "(97) Legitimate skip" ;
label define H2GI11M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (born in US)"
                       98 "(98) Don't know" ;
label define H2GI11Y   93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) 1996" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2GI12    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2GI13M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (born in US)"
                       98 "(98) Don't know" ;
label define H2GI13Y   9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H2GI14A   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GI14B   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GI14C   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GI14D   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GI14E   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GI14F   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GI14G   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GI14H   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GI15    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2GI16    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2DA1     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2DA2     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2DA3     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2DA4     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2DA5     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2DA6     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2DA7     0 "(0) Not at all" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2DA8     0 "(0) Doesn't watch TV" 998 "(998) Don't know" ;
label define H2DA9     0 "(0) Doesn't watch videos" 98 "(98) Don't know"
                       996 "(996) Refused" ;
label define H2DA10    0 "(0) Doesn't play videos/computer games"
                       98 "(98) Don't know" 996 "(996) Refused" ;
label define H2DA11    0 "(0) Doesn't listen to the radio"
                       996 "(996) Refused" 998 "(998) Don't know" ;
label define H2GH1     1 "(1) Excellent" 2 "(2) Very good" 3 "(3) Good"
                       4 "(4) Fair" 5 "(5) Poor" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2GH2     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2GH3     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2GH4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2GH5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2GH6A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH6B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH6C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH7     1 "(1) Better" 2 "(2) Worse" 3 "(3) Stayed the same"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2GH8     0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH9     0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH10    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH11    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH12    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH13    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH14    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH15    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH16    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH17    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH18    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH19    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH20    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH21    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH22    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH23    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH24    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH25    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH26    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH27    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH28    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2GH29A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH29B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH29C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH29D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH29E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH29F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH29G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH29H   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH29I   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH29J   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH30    1 "(1) Very underweight" 2 "(2) Slightly underweight"
                       3 "(3) About the right weight"
                       4 "(4) Slightly overweight" 5 "(5) Very overweight"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH31    1 "(1) Lose weight" 2 "(2) Gain weight"
                       3 "(3) Stay the same weight"
                       4 "(4) Not trying to do something about weight"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH32A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH32B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH32C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH32D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH32E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH32F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH32G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH33A   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2GH33B   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2GH33C   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2GH33D   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2GH33E   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2GH33F   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2GH33G   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2GH34    0 "(0) 0 days" 1 "(1) 1 day" 2 "(2) 2 days"
                       3 "(3) 3 days" 4 "(4) 4 days" 5 "(5) 5 days"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2GH35    1 "(1) Less than 10 minutes" 2 "(2) 10 to 20 minutes"
                       3 "(3) 21 to 30 minutes" 4 "(4) More than 30 minutes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH36    0 "(0) Never" 1 "(1) Rarely" 2 "(2) Sometimes"
                       3 "(3) Most of the time" 4 "(4) Always"
                       5 "(5) Never rides a bicycle" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2GH37    0 "(0) Never" 1 "(1) Once or twice"
                       2 "(2) About once a month" 3 "(3) About once a week"
                       4 "(4) Almost every day" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2GH38    0 "(0) Never" 1 "(1) Rarely" 2 "(2) Sometimes"
                       3 "(3) Most of the time" 4 "(4) Always"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2GH39    0 "(0) Never" 1 "(1) Rarely" 2 "(2) Sometimes"
                       3 "(3) Most of the time" 4 "(4) Always"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH40    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2GH41    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH44    98 "(98) Don't know" ;
label define H2GH45    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2GH46    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2GH47    1 "(1) Very minor" 2 "(2) Minor" 3 "(3) Serious"
                       4 "(4) Very serious" 5 "(5) Extremely serious"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2GH48    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2GH49    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2GH50    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2GH51    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2GH52F   4 "(4) 4 feet" 5 "(5) 5 feet" 6 "(6) 6 feet"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H2GH52I   0 "(0) 0 inches" 1 "(1) 1 inch" 2 "(2) 2 inches"
                       3 "(3) 3 inches" 4 "(4) 4 inches" 5 "(5) 5 inches"
                       6 "(6) 6 inches" 7 "(7) 7 inches" 8 "(8) 8 inches"
                       9 "(9) 9 inches" 10 "(10) 10 inches"
                       11 "(11) 11 inches" 12 "(12) 12 inches"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H2GH53    996 "(996) Refused" 998 "(998) Don't know" ;
label define H2NU1     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU2     1 "(1) Whole milk" 2 "(2) Low-fat"
                       3 "(3) Skim or nonfat"
                       4 "(4) Some of one,some of another"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NU3     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU4     1 "(1) Regular" 2 "(2) Diet or sugar free"
                       3 "(3) Both" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU5     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU6     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU7     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU8     1 "(1) Regular" 2 "(2) Sugar free" 3 "(3) Both"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NU9     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU10    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU11    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU12    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU13    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU14    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU15    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU16    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU17    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU18    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU19    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU20    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU21    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU22    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU23    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU24    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU25    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU26    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU27    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU28    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU29    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU30    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU31    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU32    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU33    1 "(1) Regular" 2 "(2) Low-fat or fat-free"
                       3 "(3) Some of each" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU34    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU35    1 "(1) Regular" 2 "(2) Low-fat or fat-free"
                       3 "(3) Some of each" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU36    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU37    1 "(1) Regular" 2 "(2) Low-fat" 3 "(3) Some of each"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NU38    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU39    1 "(1) Regular (30% fat)" 2 "(2) Lean (20% fat)"
                       3 "(3) Extra lean (10% fat)" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NU40    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU41    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU42    1 "(1) Plain cheese" 2 "(2) Sausage,pepperoni,or meat"
                       3 "(3) Vegetarian" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU43    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU44    0 "(0) No" 1 "(1) Yes" 2 "(2) Some yes,some no"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NU45    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU46    1 "(1) Water-packed" 2 "(2) Oil-packed"
                       3 "(3) Some of each" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NU47    1 "(1) Plain" 2 "(2) With mayonnaise,like tuna salad"
                       3 "(3) With noodles,like tuna casserole"
                       4 "(4) Some other way" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU48    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU49    0 "(0) No" 1 "(1) Yes" 2 "(2) Some yes,some no"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NU50    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU51    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU52    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU53    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU54    1 "(1) Regular" 2 "(2) Low-fat or fat-free"
                       3 "(3) Some of each" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU55    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU56    1 "(1) Regular" 2 "(2) Low-fat or fat-free"
                       3 "(3) Some of each" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU57    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU58    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU59    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU60    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU61    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU62    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU63    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU64    1 "(1) Regular" 2 "(2) Low-fat or fat-free"
                       3 "(3) Some of each" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU65    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU66    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU67    1 "(1) Regular" 2 "(2) Low-fat or fat-free"
                       3 "(3) Some of each" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU68    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU69    1 "(1) Regular" 2 "(2) Low-fat or fat-free"
                       3 "(3) Some of each" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU70    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU71    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU72    1 "(1) Regular" 2 "(2) Low-fat or fat-free"
                       3 "(3) Some of each" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU73    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU74    1 "(1) Regular" 2 "(2) Low-fat or fat-free"
                       3 "(3) Some of each" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU75    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2NU76    1 "(1) Regular" 2 "(2) Low-fat or fat-free"
                       3 "(3) Some of each" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NU77    0 "(0) 0 days" 1 "(1) 1 day" 2 "(2) 2 days"
                       3 "(3) 3 days" 4 "(4) 4 days" 5 "(5) 5 days"
                       6 "(6) 6 days" 7 "(7) 7 days" 8 "(8) Don't know" ;
label define H2NU78    0 "(0) 0 days" 1 "(1) 1 day" 2 "(2) 2 days"
                       3 "(3) 3 days" 4 "(4) 4 days" 5 "(5) 5 days"
                       6 "(6) 6 days" 7 "(7) 7 days" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2NU79    0 "(0) 0 days" 1 "(1) 1 day" 2 "(2) 2 days"
                       3 "(3) 3 days" 4 "(4) 4 days" 5 "(5) 5 days"
                       6 "(6) 6 days" 7 "(7) 7 days" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2NU80    0 "(0) 0 days" 1 "(1) 1 day" 2 "(2) 2 days"
                       3 "(3) 3 days" 4 "(4) 4 days" 5 "(5) 5 days"
                       6 "(6) 6 days" 7 "(7) 7 days" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2NU81    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2NU82    0 "(0) 0 days" 1 "(1) 1 day" 2 "(2) 2 days"
                       3 "(3) 3 days" 4 "(4) 4 days" 5 "(5) 5 days"
                       6 "(6) 6 days" 7 "(7) 7 days"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2UV1     1 "(1) Very likely" 2 "(2) Somewhat likely"
                       3 "(3) Unlikely" 8 "(8) Don't know" ;
label define H2UV2     1 "(1) Very likely" 2 "(2) Somewhat likely"
                       3 "(3) Unlikely" 8 "(8) Don't know" ;
label define H2UV3     1 "(1) Very likely" 2 "(2) Somewhat likely"
                       3 "(3) Unlikely" 8 "(8) Don't know" ;
label define H2UV4     1 "(1) Get a severe sunburn with blisters"
                       2 "(2) Get a bad sunburn which peels later"
                       3 "(3) Get a mild sunburn which becomes a tan"
                       4 "(4) Get a suntan without burning" 5 "(5) Other"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2UV5     1 "(1) Very dark and deeply tanned"
                       2 "(2) Moderately tanned" 3 "(3) Mildly tanned"
                       4 "(4) Only freckled or no suntan at all"
                       5 "(5) Repeated sunburns" 6 "(6) Other"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H2UV6     0 "(0) 0 times" 96 "(96) Refused" 98 "(98) Don't know" ;
label define H2UV7     0 "(0) 0 times" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2UV8     0 "(0) Never" 1 "(1) One time" 2 "(2) Two times"
                       3 "(3) 3-9 times" 4 "(4) 10-20 times"
                       5 "(5) 21 or more" 8 "(8) Don't know" ;
label define H2UV9     1 "(1) Frequently" 2 "(2) Occasionally" 3 "(3) Rarely"
                       4 "(4) Never" 8 "(8) Don't know" ;
label define H2UV10    0 "(0) 0 hours" 998 "(998) Don't know" ;
label define H2ED1     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 to 10 times" 3 "(3) More than 10 times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2ED2     996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2ED3     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2ED5     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2ED7     1 "(1) A" 2 "(2) B" 3 "(3) C" 4 "(4) D or lower"
                       5 "(5) Didn't take this subject"
                       6 "(6) Took subject/wasn't graded this way"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2ED8     1 "(1) A" 2 "(2) B" 3 "(3) C" 4 "(4) D or lower"
                       5 "(5) Didn't take this subject"
                       6 "(6) Took subject/wasn't graded this way"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2ED9     1 "(1) A" 2 "(2) B" 3 "(3) C" 4 "(4) D or lower"
                       5 "(5) Didn't take this subject"
                       6 "(6) Took subject/wasn't graded this way"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2ED10    1 "(1) A" 2 "(2) B" 3 "(3) C" 4 "(4) D or lower"
                       5 "(5) Didn't take this subject"
                       6 "(6) Took subject/wasn't graded this way"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2ED11    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2ED12    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2ED13    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2ED14    0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2ED15    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2ED16    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2ED17    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2ED18    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2ED19    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2ED20    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2HS1     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2HS2A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS2B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS2C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS2D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS2E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS3     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2HS4A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2HS4B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2HS4C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2HS4D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2HS4E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2HS5     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2HS6A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS6B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS6C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS6D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS6E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS7     0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H2HS8A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS8B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS8C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS8D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS8E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2HS10A   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS10B   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS10C   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS10D   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS10E   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS11    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2HS12A   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS12B   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS12C   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS12D   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS12E   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2HS13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2HS14A   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2HS14B   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2HS14C   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2HS14D   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2HS14E   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RP1     1 "(1) Very high" 2 "(2) High" 3 "(3) Low"
                       4 "(4) Very low" 5 "(5) No chance" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2RP2     0 "(0) 0 people" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2RP3     1 "(1) Very high" 2 "(2) High" 3 "(3) Low"
                       4 "(4) Very low" 5 "(5) No chance" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2RP4     0 "(0) 0 people" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2RP5     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RP6     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RP7     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RP8     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RP9     1 "(1) Almost no chance"
                       2 "(2) Some chance/but probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know" ;
label define H2RP10    1 "(1) Almost no chance"
                       2 "(2) Some chance/but probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       7 "(7) Legitimate skip (age<15 or unknown)"
                       8 "(8) Don't know" ;
label define H2SE1     1 "(1) Very sure" 2 "(2) Moderately sure"
                       3 "(3) Neither sure nor unsure"
                       4 "(4) Moderately unsure" 5 "(5) Very unsure"
                       6 "(6) I never want to use birth control"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (age<15 or unknown)"
                       98 "(98) Don't know" ;
label define H2SE2     1 "(1) Very sure" 2 "(2) Moderately sure"
                       3 "(3) Neither sure nor unsure"
                       4 "(4) Moderately unsure" 5 "(5) Very unsure"
                       6 "(6) I never want to use birth control"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (age<15 or unknown)"
                       98 "(98) Don't know" ;
label define H2SE3     1 "(1) Very sure" 2 "(2) Moderately sure"
                       3 "(3) Neither sure nor unsure"
                       4 "(4) Moderately unsure" 5 "(5) Very unsure"
                       6 "(6) I never want to use birth control"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2SE4     1 "(1) Moderately below average"
                       2 "(2) Slightly below average" 3 "(3) About average"
                       4 "(4) Slightly above average"
                       5 "(5) Moderately above average"
                       6 "(6) Extremely above average" 98 "(98) Don't know" ;
label define H2FS1     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS2     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS3     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS4     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS5     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS6     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS7     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS8     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS9     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS10    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS11    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS12    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS13    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS14    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS15    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS16    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS17    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS18    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2FS19    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time" 3 "(3) Most/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2HR1     1 "(1) Continue with household listing"
                       2 "(2) R lives alone" ;
label define H2HR2A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (respondent lives alone)"
                       8 "(8) Don't know" ;
label define H2HR2B    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2HR2C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2HR2D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2HR2E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2HR2F    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2HR2G    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2HR2H    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2HR2I    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2HR2J    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2HR2K    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2HR2L    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2HR2M    0 "(0) No" 7 "(7) Legitimate skip" ;
label define H2HR2N    7 "(7) Legitimate skip" ;
label define H2HR2O    7 "(7) Legitimate skip" ;
label define H2HR2P    7 "(7) Legitimate skip" ;
label define H2HR2Q    7 "(7) Legitimate skip" ;
label define H2HR2R    7 "(7) Legitimate skip" ;
label define H2HR3A    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2HR4A    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother" 8 "(8) Sister"
                       9 "(9) Sister's husband" 10 "(10) Sister's partner"
                       11 "(11) Father" 12 "(12) Father's wife"
                       13 "(13) Father's partner" 14 "(14) Mother"
                       15 "(15) Mother's husband" 16 "(16) Mother's partner"
                       17 "(17) Father-in-law" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q7)"
                       97 "(97) Legitimate skip (respondent lives alone)"
                       98 "(98) Don't know (skip to Q7)" ;
label define H2HR5A    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6A    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7A    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H2HR8A    996 "(996) Refused (skip to Q9)"
                       997 "(997) Legitimate skip (respondent lives alone)"
                       998 "(998) Don't know" ;
label define H2HR9A    997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H2HR3B    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2HR4B    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       11 "(11) Father" 12 "(12) Father's wife"
                       13 "(13) Father's partner" 14 "(14) Mother"
                       15 "(15) Mother's husband" 16 "(16) Mother's partner"
                       17 "(17) Father-in-law" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       97 "(97) Legitimate skip (R live with 1/fewer persons)" ;
label define H2HR5B    1 "(1) Biological son" 7 "(7) Biological daughter"
                       8 "(8) Step daughter" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6B    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)"
                       98 "(98) Don't know" ;
label define H2HR7B    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H2HR8B    996 "(996) Refused"
                       997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H2HR9B    997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H2HR3C    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2HR4C    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 17 "(17) Father-in-law"
                       18 "(18) Mother-in-law" 19 "(19) Grandfather"
                       20 "(20) Grandmother" 21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       97 "(97) Legitimate skip (R live with 2/fewer persons)" ;
label define H2HR5C    1 "(1) Biological son" 4 "(4) Step/adoptive son"
                       6 "(6) Other" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not son/daughter)" ;
label define H2HR6C    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7C    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 11 "(11) Foster mother"
                       97 "(97) Legitimate skip (not a father/mother)" ;
label define H2HR8C    996 "(996) Refused (skip to Q9)"
                       997 "(997) Legitimate skip (R live with 2/fewer persons)"
                       998 "(998) Don't know" ;
label define H2HR9C    997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H2HR3D    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2HR4D    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q7)"
                       97 "(97) Legitimate skip (R live with 3/fewer persons)"
                       98 "(98) Don't know (skip to Q7)" ;
label define H2HR5D    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6D    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7D    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       97 "(97) Legitimate skip (not a father/mother)" ;
label define H2HR8D
                       997 "(997) Legitimate skip (R live with 3/fewer persons)"
                       998 "(998) Don't know" ;
label define H2HR9D    997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H2HR3E    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2HR4E    1 "(1) Wife/husband" 2 "(2) Partner" 3 "(3) Son"
                       4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 17 "(17) Father-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q7)"
                       97 "(97) Legitimate skip (R live with 4/fewer persons)"
                       98 "(98) Don't know (skip to Q7)" ;
label define H2HR5E    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6E    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7E    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother"
                       97 "(97) Legitimate skip (not a father/mother)" ;
label define H2HR8E
                       997 "(997) Legitimate skip (R live with 4/fewer persons)"
                       998 "(998) Don't know" ;
label define H2HR9E    997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H2HR3F    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2HR4F    3 "(3) Son" 4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       11 "(11) Father" 13 "(13) Father's partner"
                       14 "(14) Mother" 16 "(16) Mother's partner"
                       17 "(17) Father-in-law" 19 "(19) Grandfather"
                       20 "(20) Grandmother" 22 "(22) Great-grandmother"
                       23 "(23) Uncle" 24 "(24) Aunt" 25 "(25) Cousin"
                       26 "(26) Nephew" 27 "(27) Niece"
                       28 "(28) Other relative" 29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q7)"
                       97 "(97) Legitimate skip (R live with 5/fewer persons)"
                       98 "(98) Don't know (skip to Q7)" ;
label define H2HR5F    1 "(1) Biological son" 7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6F    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7F    1 "(1) Biological father" 2 "(2) Stepfather"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       11 "(11) Foster mother"
                       97 "(97) Legitimate skip (not a father/mother)" ;
label define H2HR8F
                       997 "(997) Legitimate skip (R lives with 5/fewer persons)"
                       998 "(998) Don't know" ;
label define H2HR9F    997 "(997) Legitimate skip (age given)" ;
label define H2HR3G    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2HR4G    2 "(2) Partner" 3 "(3) Son" 4 "(4) Daughter"
                       5 "(5) Brother" 6 "(6) Brother's wife"
                       7 "(7) Brother's partner" 8 "(8) Sister"
                       9 "(9) Sister's husband" 10 "(10) Sister's partner"
                       11 "(11) Father" 12 "(12) Father's wife"
                       13 "(13) Father's partner" 14 "(14) Mother"
                       15 "(15) Mother's husband" 16 "(16) Mother's partner"
                       18 "(18) Mother-in-law" 19 "(19) Grandfather"
                       20 "(20) Grandmother" 21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q7)"
                       97 "(97) Legitimate skip (R live with 6/fewer persons)"
                       98 "(98) Don't know (skip to Q7)" ;
label define H2HR5G    7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6G    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7G    1 "(1) Biological father" 2 "(2) Stepfather"
                       3 "(3) Adoptive father" 4 "(4) Step/adoptive father"
                       5 "(5) Foster father" 6 "(6) Other"
                       7 "(7) Biological mother" 8 "(8) Step mother"
                       9 "(9) Adoptive mother" 10 "(10) Step/adoptive mother"
                       11 "(11) Foster mother" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H2HR8G
                       997 "(997) Legitimate skip (R lives with 6/fewer persons)"
                       998 "(998) Don't know" ;
label define H2HR9G    997 "(997) Legitimate skip (age given)" ;
label define H2HR3H    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2HR4H    4 "(4) Daughter" 5 "(5) Brother"
                       6 "(6) Brother's wife" 7 "(7) Brother's partner"
                       8 "(8) Sister" 9 "(9) Sister's husband"
                       10 "(10) Sister's partner" 11 "(11) Father"
                       12 "(12) Father's wife" 13 "(13) Father's partner"
                       14 "(14) Mother" 15 "(15) Mother's husband"
                       16 "(16) Mother's partner" 18 "(18) Mother-in-law"
                       19 "(19) Grandfather" 20 "(20) Grandmother"
                       21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q7)"
                       97 "(97) Legitimate skip (R live with 7/fewer persons)"
                       98 "(98) Don't know (skip to Q7)" ;
label define H2HR5H    7 "(7) Biological daughter"
                       97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6H    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7H    1 "(1) Biological father" 7 "(7) Biological mother"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H2HR8H
                       997 "(997) Legitimate skip (R lives with 7/fewer persons)"
                       998 "(998) Don't know" ;
label define H2HR9H    997 "(997) Legitimate skip (age given)" ;
label define H2HR3I    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2HR4I    5 "(5) Brother" 6 "(6) Brother's wife"
                       7 "(7) Brother's partner" 8 "(8) Sister"
                       9 "(9) Sister's husband" 10 "(10) Sister's partner"
                       11 "(11) Father" 12 "(12) Father's wife"
                       13 "(13) Father's partner" 14 "(14) Mother"
                       15 "(15) Mother's husband" 16 "(16) Mother's partner"
                       18 "(18) Mother-in-law" 19 "(19) Grandfather"
                       20 "(20) Grandmother" 21 "(21) Great-grandfather"
                       22 "(22) Great-grandmother" 23 "(23) Uncle"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q7)"
                       97 "(97) Legitimate skip (R live with 8/fewer persons)"
                       98 "(98) Don't know (skip to Q7)" ;
label define H2HR5I    97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6I    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7I    1 "(1) Biological father" 7 "(7) Biological mother"
                       97 "(97) Legitimate skip (not a mother/father)" ;
label define H2HR8I
                       997 "(997) Legitimate skip (R lives with 8/fewer persons)"
                       998 "(998) Don't know" ;
label define H2HR9I    997 "(997) Legitimate skip (age given)"
                       998 "(998) Don't know" ;
label define H2HR3J    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2HR4J    5 "(5) Brother" 8 "(8) Sister"
                       9 "(9) Sister's husband" 10 "(10) Sister's partner"
                       24 "(24) Aunt" 25 "(25) Cousin" 26 "(26) Nephew"
                       27 "(27) Niece" 28 "(28) Other relative"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q7)"
                       97 "(97) Legitimate skip (R live with 9/fewer persons)"
                       98 "(98) Don't know (skip to Q7)" ;
label define H2HR5J    97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6J    1 "(1) Full brother" 2 "(2) Half-brother"
                       3 "(3) Step brother" 4 "(4) Adoptive brother"
                       5 "(5) Foster brother" 6 "(6) Other"
                       7 "(7) Full sister" 8 "(8) Half-sister"
                       9 "(9) Step sister" 10 "(10) Adoptive sister"
                       11 "(11) Foster sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7J    97 "(97) Legitimate skip (not a mother/father)" ;
label define H2HR8J
                       997 "(997) Legitimate skip (R lives with 9/fewer persons)" ;
label define H2HR9J    997 "(997) Legitimate skip (age given)" ;
label define H2HR3K    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2HR4K    5 "(5) Brother" 8 "(8) Sister"
                       13 "(13) Father's partner" 23 "(23) Uncle"
                       27 "(27) Niece" 29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q7)"
                       97 "(97) Legitimate skip (R live with 10/fewer persons)"
                       98 "(98) Don't know (skip to Q7)" ;
label define H2HR5K    97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6K    1 "(1) Full brother" 7 "(7) Full sister"
                       8 "(8) Half-sister" 12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7K    97 "(97) Legitimate skip (not a mother/father)" ;
label define H2HR8K
                       997 "(997) Legitimate skip (R lives with 10/fewer persons)" ;
label define H2HR9K    997 "(997) Legitimate skip (age given)" ;
label define H2HR3L    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2HR4L    8 "(8) Sister" 9 "(9) Sister's husband"
                       13 "(13) Father's partner" 20 "(20) Grandmother"
                       27 "(27) Niece" 96 "(96) Refused (skip to Q7)"
                       97 "(97) Legitimate skip (R live with 11/fewer persons)"
                       98 "(98) Don't know (skip to Q7)" ;
label define H2HR5L    97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6L    7 "(7) Full sister"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7L    97 "(97) Legitimate skip (not a mother/father)" ;
label define H2HR8L
                       997 "(997) Legitimate skip (R lives with 11/fewer persons)" ;
label define H2HR9L    997 "(997) Legitimate skip (age given)" ;
label define H2HR3M    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2HR4M    23 "(23) Uncle" 25 "(25) Cousin" 26 "(26) Nephew"
                       29 "(29) Other non-relative"
                       96 "(96) Refused (skip to Q7)"
                       97 "(97) Legitimate skip (R live with 12/fewer persons)"
                       98 "(98) Don't know (skip to Q7)" ;
label define H2HR5M    97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6M    12 "(12) Other"
                       97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7M    97 "(97) Legitimate skip (not a mother/father)" ;
label define H2HR8M
                       997 "(997) Legitimate skip (R lives with 12/fewer persons)" ;
label define H2HR9M    997 "(997) Legitimate skip (age given)" ;
label define H2HR3N
                       7 "(7) Legitimate skip (R lives with 13/fewer persons)" ;
label define H2HR4N
                       97 "(97) Legitimate skip (R live with 13/fewer persons)" ;
label define H2HR5N    97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR6N    97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR7N    97 "(97) Legitimate skip (not a mother/father)" ;
label define H2HR8N
                       997 "(997) Legitimate skip (R lives with 13/fewer persons)" ;
label define H2HR9N    997 "(997) Legitimate skip (age given)" ;
label define H2HR3O    997 "(997) Legitimate skip" ;
label define H2HR4O    97 "(97) Legitimate skip" ;
label define H2HR5O    97 "(97) Legitimate skip" ;
label define H2HR6O    97 "(97) Legitimate skip" ;
label define H2HR7O    97 "(97) Legitimate skip" ;
label define H2HR8O    997 "(997) Legitimate skip" ;
label define H2HR9O    997 "(997) Legitimate skip" ;
label define H2HR3P    7 "(7) Legitimate skip" ;
label define H2HR4P    97 "(97) Legitimate skip" ;
label define H2HR5P    97 "(97) Legitimate skip" ;
label define H2HR6P    97 "(97) Legitimate skip" ;
label define H2HR7P    97 "(97) Legitimate skip" ;
label define H2HR8P    997 "(997) Legitimate skip" ;
label define H2HR9P    997 "(997) Legitimate skip" ;
label define H2HR3Q    7 "(7) Legitimate skip" ;
label define H2HR4Q    97 "(97) Legitimate skip (not a son/daughter)" ;
label define H2HR5Q    97 "(97) Legitimate skip (not a brother/sister)" ;
label define H2HR6Q    97 "(97) Legitimate skip (not a mother/father)" ;
label define H2HR7Q
                       97 "(97) Legitimate skip (R lives with 16/fewer persons)" ;
label define H2HR8Q    997 "(997) Legitimate skip (age given)" ;
label define H2HR9Q
                       997 "(997) Legitimate skip (R lives with 16/fewer persons)" ;
label define H2HR10    1 "(1) First household member"
                       2 "(2) Second household member"
                       3 "(3) Third household member"
                       4 "(4) Fourth household member"
                       5 "(5) Fifth household member"
                       6 "(6) Sixth household member"
                       7 "(7) Seventh household member"
                       8 "(8) Eighth household member"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) No one" ;
label define H2HR11    1 "(1) First household member"
                       2 "(2) Second household member"
                       3 "(3) Third household member"
                       4 "(4) Fourth household member"
                       5 "(5) Fifth household member"
                       6 "(6) Sixth household member"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) No one" ;
label define H2NM1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (MOM is biological mother)"
                       8 "(8) Don't know" ;
label define H2NM2     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2NM3M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H2NM3Y    95 "(95) 1995" 96 "(96) 1996"
                       997 "(997) Legitimate skip" ;
label define H2NM4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NM5     97 "(97) legitimate skip" ;
label define H2NM9     0 "(0) Not at all" 1 "(1) Once or twice"
                       2 "(2) Several times" 3 "(3) About once a month"
                       4 "(4) About once a week"
                       5 "(5) More than once a week" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2NM10    0 "(0) Not at all" 1 "(1) Once or twice"
                       2 "(2) Several times" 3 "(3) About once a month"
                       4 "(4) About once a week"
                       5 "(5) More than once a week" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2NM11A   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2NM11B   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2NM11C   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2NM11D   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2NM11E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2NM11F   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2NM11G   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2NM11H   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2NM11I   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2NM11J   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2NM11K   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2NM12    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NM13    1 "(1) Not close at all" 2 "(2) Not very close"
                       3 "(3) Somewhat close" 4 "(4) Quite close"
                       5 "(5) Extremely close" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NF1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (DAD is biological father)"
                       8 "(8) Don't know" ;
label define H2NF2     0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip"
                       8 "(8) Don't know (skip to Q4)" ;
label define H2NF3M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NF3Y    95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NF4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NF5     97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NF9     0 "(0) Not at all" 1 "(1) Once or twice"
                       2 "(2) Several times" 3 "(3) About once a month"
                       4 "(4) About once a week"
                       5 "(5) More than once a week" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NF10    0 "(0) Not at all" 1 "(1) Once or twice"
                       2 "(2) Several times" 3 "(3) About once a month"
                       4 "(4) About once a week"
                       5 "(5) More than once a week" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2NF11A   0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip" ;
label define H2NF11B   0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip" ;
label define H2NF11C   0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip" ;
label define H2NF11D   0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip" ;
label define H2NF11E   0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip" ;
label define H2NF11F   0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip" ;
label define H2NF11G   0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip" ;
label define H2NF11H   0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip" ;
label define H2NF11I   0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip" ;
label define H2NF11J   0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip" ;
label define H2NF11K   0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip" ;
label define H2NF12    0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NF13    1 "(1) Not close at all" 2 "(2) Not very close"
                       3 "(3) Somewhat close" 4 "(4) Quite close"
                       5 "(5) Extremely close" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RM1     1 "(1) 8th grade or less"
                       2 "(2) >8th grade/didn't graduate high school"
                       3 "(3) Business/trade/voc school instead high school"
                       4 "(4) High school graduate" 5 "(5) GED"
                       6 "(6) Business/trade/voc school after high school"
                       7 "(7) College/didn't graduate"
                       8 "(8) Graduated from college/university"
                       9 "(9) Prof training beyond 4-year college/university"
                       10 "(10) She never went to school"
                       11 "(11) Went to school/Resp doesn't know level"
                       12 "(12) Resp doesn't know if she went to school"
                       96 "(96) Refused" 97 "(97) Legitimate skip (no MOM)"
                       98 "(98) Don't know" ;
label define H2RM2     0 "(0) No" 1 "(1) Yes (skip to Q4)"
                       6 "(6) Refused (skip to Q4)"
                       7 "(7) Legitimate skip (no MOM)"
                       8 "(8) Don't know (skip to Q4)" ;
label define H2RM3     17 "(17) Barbados" 30 "(30) Cambodia" 32 "(32) Canada"
                       37 "(37) People's Republic of China"
                       38 "(38) Colombia" 43 "(43) Cuba"
                       51 "(51) The Dominican Republic" 52 "(52) Ecuador"
                       54 "(54) El Salvador" 61 "(61) France"
                       75 "(75) Germany" 79 "(79) Guatemala" 83 "(83) Haiti"
                       84 "(84) Honduras" 87 "(87) India" 93 "(93) Italy"
                       95 "(95) Jamaica" 96 "(96) Japan"
                       102 "(102) South Korea" 105 "(105) Laos"
                       123 "(123) Mexico" 142 "(142) Nicaragua"
                       144 "(144) Nigeria" 151 "(151) Panama"
                       154 "(154) Peru" 155 "(155) The Philippines"
                       157 "(157) Portugal" 187 "(187) Taiwan"
                       190 "(190) Thailand" 193 "(193) Trinidad/Tobago"
                       202 "(202) Great Britain" 213 "(213) Hong Kong"
                       221 "(221) Puerto Rico" 222 "(222) American Samoa"
                       231 "(231) Viet-Nam" 232 "(232) Western Samoa"
                       311 "(311) Eastern/North Africa"
                       312 "(312) Central/North Africa"
                       313 "(313) Western/North Africa"
                       314 "(314) South Africa" 321 "(321) Middle East"
                       322 "(322) Central Asia" 323 "(323) Southeast Asia"
                       331 "(331) Northern/Western Europe"
                       332 "(332) British Isles"
                       333 "(333) Southern/Western Europe"
                       334 "(334) Eastern Europe"
                       335 "(335) Southern/Eastern Europe"
                       336 "(336) Southern Europe"
                       341 "(341) Oceania/Pacific Ocean Islands"
                       361 "(361) Central/Northern South America"
                       362 "(362) Southern South America"
                       372 "(372) Greater Antilles"
                       373 "(373) Lesser Antilles" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable/Other" ;
label define H2RM4     1 "(1) Professional 1/doctor/lawyer/scientist"
                       2 "(2) Professional 2/teacher/librarian/nurse"
                       3 "(3) Manager/executive/director"
                       4 "(4) Technical/computer specialist/radiologist"
                       5 "(5) Office worker/bookkeepers/clerk/secretary"
                       6 "(6) Sales worker/insurance agent/store clerk"
                       7 "(7) Restaurant worker/personal service/housekeeper"
                       8 "(8) Craftsperson/toolmaker/woodworker"
                       9 "(9) Construction worker/carpenter/crane operator"
                       10 "(10) Mechanic/electrician/plumber/machinist"
                       11 "(11) Factory worker/laborer/assembler/janitor"
                       12 "(12) Transportation/bus or taxi driver"
                       13 "(13) Military/security/police officer/soldier/fire fighter"
                       14 "(14) Farm/fishery worker" 15 "(15) Other"
                       16 "(16) None (skip to Q6)" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no MOM)"
                       98 "(98) Don't know" ;
label define H2RM5     0 "(0) No" 1 "(1) Yes (skip to Q7)" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RM6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RM7     996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RM8     1 "(1) At home" 2 "(2) Outside home"
                       3 "(3) Both home/outside home" 7 "(7) Legitimate skip" ;
label define H2RM9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2RM10    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2RM11    1 "(1) Always" 2 "(2) Most of the time"
                       3 "(3) Some of the time" 4 "(4) Almost never"
                       5 "(5) Never" 6 "(6) She takes me to school"
                       96 "(96) Refused" 97 "(97) Legitimate skip (no MOM)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RM12    1 "(1) Always" 2 "(2) Most of the time"
                       3 "(3) Some of the time" 4 "(4) Almost never"
                       5 "(5) Never" 6 "(6) She brings me home from school"
                       96 "(96) Refused" 97 "(97) Legitimate skip (no MOM)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RM13    1 "(1) Always" 2 "(2) Most of the time"
                       3 "(3) Some of the time" 4 "(4) Almost never"
                       5 "(5) Never" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no MOM)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RM14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2RF1     1 "(1) 8th grade or less"
                       2 "(2) >8th grade/didn't graduate high school"
                       3 "(3) Business/trade/voc school instead high school"
                       4 "(4) High school graduate" 5 "(5) GED"
                       6 "(6) Business/trade/voc school after high school"
                       7 "(7) College/didn't graduate"
                       8 "(8) Graduated from college/university"
                       9 "(9) Prof training beyond 4-year college/univ"
                       10 "(10) He never went to school"
                       11 "(11) Went to school/Resp doesn't know level"
                       12 "(12) Resp doesn't know if he went to school"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RF2     0 "(0) No" 1 "(1) Yes (skip to Q4)"
                       6 "(6) Refused (skip to Q4)"
                       7 "(7) Legitimate skip (no DAD)"
                       8 "(8) Don't know (skip to Q4)"
                       9 "(9) Not applicable (skip to Q4)" ;
label define H2RF3     30 "(30) Cambodia" 32 "(32) Canada"
                       37 "(37) People's Republic of China"
                       38 "(38) Colombia" 43 "(43) Cuba"
                       51 "(51) The Dominican Republic" 52 "(52) Ecuador"
                       54 "(54) El Salvador" 75 "(75) Germany"
                       79 "(79) Guatemala" 83 "(83) Haiti" 84 "(84) Honduras"
                       87 "(87) India" 89 "(89) Iran" 93 "(93) Italy"
                       95 "(95) Jamaica" 96 "(96) Japan"
                       102 "(102) South Korea" 105 "(105) Laos"
                       123 "(123) Mexico" 142 "(142) Nicaragua"
                       144 "(144) Nigeria" 150 "(150) Pakistan"
                       151 "(151) Panama" 154 "(154) Peru"
                       155 "(155) The Philippines" 157 "(157) Portugal"
                       187 "(187) Taiwan" 193 "(193) Trinidad/Tobago"
                       202 "(202) Great Britain" 213 "(213) Hong Kong"
                       221 "(221) Puerto Rico" 231 "(231) Viet-Nam"
                       232 "(232) Western Samoa"
                       311 "(311) Eastern/North Africa"
                       312 "(312) Central/North Africa"
                       313 "(313) Western/North Africa"
                       314 "(314) South Africa" 321 "(321) Middle East"
                       322 "(322) Central Asia" 323 "(323) Southeast Asia"
                       331 "(331) Northern/Western Europe"
                       332 "(332) British Isles"
                       333 "(333) Southern/Western Europe"
                       334 "(334) Eastern Europe"
                       335 "(335) Southern/Eastern Europe"
                       336 "(336) Southern Europe"
                       341 "(341) Oceania/Pacific Ocean Islands"
                       361 "(361) Central/Northern South America"
                       362 "(362) Southern South America"
                       371 "(371) Greater and Lesser Antilles"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know"
                       999 "(999) Not applicable/Other" ;
label define H2RF4     1 "(1) Professional 1/doctor/lawyer/scientist"
                       2 "(2) Professional 2/teacher/librarian/nurse"
                       3 "(3) Manager/executive/director"
                       4 "(4) Technical/computer specialist/radiologist"
                       5 "(5) Office worker/bookkeepers/clerk/secretary"
                       6 "(6) Sales worker/insurance agent/store clerk"
                       7 "(7) Restaurant worker/personal service/housekeeper"
                       8 "(8) Craftsperson/toolmaker/woodworker"
                       9 "(9) Construction worker/carpenter/crane operator"
                       10 "(10) Mechanic/electrician/plumber/machinist"
                       11 "(11) Factory worker/laborer/assembler/janitor"
                       12 "(12) Transportation/bus or taxi driver"
                       13 "(13) Military/security/police officer/soldier/fire fighter"
                       14 "(14) Farm/fishery worker" 15 "(15) Other"
                       16 "(16) None (skip to Q6)" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no DAD)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RF5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RF6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RF7     996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RF8     1 "(1) At home" 2 "(2) Outside home"
                       3 "(3) Both home/outside home" 7 "(7) Legitimate skip" ;
label define H2RF9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RF10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RF11    1 "(1) Always" 2 "(2) Most of the time"
                       3 "(3) Some of the time" 4 "(4) Almost never"
                       5 "(5) Never" 6 "(6) He takes me to school"
                       96 "(96) Refused" 97 "(97) Legitimate skip (no DAD)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RF12    1 "(1) Always" 2 "(2) Most of the time"
                       3 "(3) Some of the time" 4 "(4) Almost never"
                       5 "(5) Never" 6 "(6) He brings me home from school"
                       96 "(96) Refused" 97 "(97) Legitimate skip (no DAD)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RF13    1 "(1) Always" 2 "(2) Most of the time"
                       3 "(3) Some of the time" 4 "(4) Almost never"
                       5 "(5) Never" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no DAD)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RF14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2WP1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WP2     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WP3     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WP4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WP5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WP6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WP7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM/DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WP8     0 "(0) 0 days" 1 "(1) 1 day" 2 "(2) 2 days"
                       3 "(3) 3 days" 4 "(4) 4 days" 5 "(5) 5 days"
                       6 "(6) 6 days" 7 "(7) 7 days" 96 "(96) Refused"
                       97 "(97) Legitimate skip (no MOM/DAD)"
                       98 "(98) Don't know" ;
label define H2WP9     1 "(1) Not close at all" 2 "(2) Not very close"
                       3 "(3) Somewhat close" 4 "(4) Quite close"
                       5 "(5) Extremely close" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2WP10    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no MOM)"
                       8 "(8) Don't know" ;
label define H2WP11    1 "(1) Low" 5 "(5) High" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2WP12    1 "(1) Low" 5 "(5) High"
                       6 "Already graduated from high school"
                       97 "(97) Legitimate skip (no MOM)"
                       98 "(98) Don't know" ;
label define H2WP13    1 "(1) Not close at all" 2 "(2) Not very close"
                       3 "(3) Somewhat close" 4 "(4) Quite close"
                       5 "(5) Extremely close" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2WP14    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WP15    1 "(1) Low" 5 "(5) High" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2WP16    1 "(1) Low" 5 "(5) High"
                       6 "Already graduated from high school"
                       96 "(96) Refused" 97 "(97) Legitimate skip (no DAD)"
                       98 "(98) Don't know" ;
label define H2WP17A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2WP17B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2WP17C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2WP17D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2WP17E   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2WP17F   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2WP17G   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2WP17H   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2WP17I   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2WP17J   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2WP17K   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no MOM)" 8 "(8) Don't know" ;
label define H2WP18A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" ;
label define H2WP18B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" ;
label define H2WP18C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" ;
label define H2WP18D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" ;
label define H2WP18E   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" ;
label define H2WP18F   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" ;
label define H2WP18G   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" ;
label define H2WP18H   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" ;
label define H2WP18I   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" ;
label define H2WP18J   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" ;
label define H2WP18K   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" ;
label define H2MO1     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO2     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO3     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO4     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15/no MOM)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO5     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO6     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO7     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO8     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO9     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO10    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO11    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO12    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO13    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO14    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO15    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (married or <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MO16    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no DAD)" 8 "(8) Don't know" ;
label define H2PF1     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF2     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF3     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF4     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF5     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF6     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2PF7     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2PF8     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2PF9     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2PF10    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2PF11    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2PF12    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2PF13    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF14    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF15    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF16    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF17    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF18    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF19    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF20    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF21    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF22    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF23    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF24    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF25    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident DAD)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF26    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PF27    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF28    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF29    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF30    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF31    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF32    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF33    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF34    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF35    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF36    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF37    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF38    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF39    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF40    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2PF41    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2KQ1A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ1B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ2A    1 "(1) True <the correct answer>" 2 "(2) False"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ2B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ3A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ3B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ4A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ4B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ5A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ5B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ6A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ6B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ7A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ7B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ8A    1 "(1) True <the correct answer>" 2 "(2) False"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ8B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ9A    1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ9B    1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ10A   1 "(1) True" 2 "(2) False <the correct answer>"
                       6 "(6) Refused" 7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2KQ10B   1 "(1) Very" 2 "(2) Moderately" 3 "(3) Slightly"
                       4 "(4) Not at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (less than 15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define FR_FLAG2  0 "(0) Asked nominate up to 5 male/female friends"
                       1 "(1) Asked nominate 1 male/female friend" ;
label define H2MF1     1 "(1) Enter name(s) of male friend(s)"
                       2 "(2) R has no male friend(s) (skip to Q16)"
                       6 "(6) Refused (skip to Q16)"
                       8 "(8) Don't know (skip to Q16)" ;
label define H2MF3A    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF3B    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF3C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF3D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF4A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF5A    2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q6)"
                       96 "(96) Refused (skip to Q6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q6)" ;
label define H2MF6A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF7A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2MF8A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF9A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF11A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF12A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF13A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF14A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF15A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF4B    0 "(0) No" 1 "(1) Yes (skip to Q5a)"
                       7 "(7) Legitimate skip" ;
label define H2MF5B    5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q6)"
                       96 "(96) Refused (skip to Q6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q6)" ;
label define H2MF6B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2MF7B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2MF8B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2MF9B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2MF11B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2MF12B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2MF13B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2MF14B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2MF15B   0 "(0) No" 1 "(1) Yes (skip to Q5a)"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF4C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF5C    6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q6)"
                       96 "(96) Refused (skip to Q6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q6)" ;
label define H2MF6C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2MF7C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2MF8C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF9C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF11C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF12C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF13C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF14C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF15C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF4D    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2MF5D    4 "(4) 4th" 5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th"
                       8 "(8) 8th" 9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q6)"
                       96 "(96) Refused (skip to Q6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q6)" ;
label define H2MF6D    0 "(0) No" 1 "(1) Yes (skip to Q5a)"
                       7 "(7) Legitimate skip" ;
label define H2MF7D    0 "(0) No" 1 "(1) Yes (skip to Q5a)"
                       7 "(7) Legitimate skip" ;
label define H2MF8D    0 "(0) No" 1 "(1) Yes (skip to Q5a)"
                       7 "(7) Legitimate skip" ;
label define H2MF9D    0 "(0) No" 1 "(1) Yes (skip to Q5a)"
                       7 "(7) Legitimate skip" ;
label define H2MF11D   0 "(0) No" 1 "(1) Yes (skip to Q5a)"
                       7 "(7) Legitimate skip" ;
label define H2MF12D   0 "(0) No" 1 "(1) Yes (skip to Q5a)"
                       7 "(7) Legitimate skip" ;
label define H2MF13D   0 "(0) No" 1 "(1) Yes (skip to Q5a)"
                       7 "(7) Legitimate skip" ;
label define H2MF14D   0 "(0) No" 1 "(1) Yes (skip to Q5a)"
                       7 "(7) Legitimate skip" ;
label define H2MF15D   0 "(0) No" 1 "(1) Yes (skip to Q5a)"
                       7 "(7) Legitimate skip" ;
label define H2MF4E    0 "(0) No" 1 "(1) Yes (skip to Q5a)"
                       7 "(7) Legitimate skip" ;
label define H2MF5E    5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q6)"
                       96 "(96) Refused (skip to Q6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q6)" ;
label define H2MF6E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF7E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF8E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF9E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF11E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF12E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF13E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF14E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2MF15E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF1     1 "(1) Enter name(s) of female friend(s)"
                       2 "(2) R has no female friend(s) (skip to Q16)"
                       6 "(6) Refused (skip to Q16)"
                       8 "(8) Don't know (skip to Q16)" ;
label define H2FF3A    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF3B    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF3C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF3D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF4A    0 "(0) No" 1 "(1) Yes (skip to Q5a)" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF5A    2 "(2) 1st or 2nd" 3 "(3) 3rd" 4 "(4) 4th" 5 "(5) 5th"
                       6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q6)"
                       96 "(96) Refused (skip to Q6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q6)" ;
label define H2FF6A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF7A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H2FF8A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF9A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF11A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF12A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF13A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF14A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF15A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF4B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF5B    5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q6)"
                       96 "(96) Refused (skip to Q6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q6)" ;
label define H2FF6B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF7B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF8B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF9B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF11B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF12B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF13B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF14B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF15B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF4C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FF5C    4 "(4) 4th" 5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th"
                       8 "(8) 8th" 9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q6)"
                       96 "(96) Refused (skip to Q6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q6)" ;
label define H2FF6C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF7C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF8C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FF9C    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF11C   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF12C   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF13C   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF14C   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF15C   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF4D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FF5D    7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th" 10 "(10) 10th"
                       11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q6)"
                       96 "(96) Refused (skip to Q6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q6)" ;
label define H2FF6D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H2FF7D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H2FF8D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H2FF9D    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H2FF11D   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H2FF12D   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H2FF13D   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H2FF14D   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H2FF15D   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H2FF4E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H2FF5E    5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) Beyond high school (skip to Q6)"
                       96 "(96) Refused (skip to Q6)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to Q6)" ;
label define H2FF6E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FF7E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FF8E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FF9E    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FF11E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FF12E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FF13E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FF14E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FF15E   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RR1     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no MOM)"
                       8 "(8) Don't know" ;
label define H2RR2A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2RR2B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RR2C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RR2D    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RR4A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RR5A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RR6A    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RR4B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RR5B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RR6B    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RR4C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RR5C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RR6C    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2LR1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2LR2     0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2LR3     0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2LR4     0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2CO1     0 "(0) No (skip to next section)" 1 "(1) Yes"
                       2 "(2) Invalid response"
                       6 "(6) Refused (skip to next section)"
                       8 "(8) Don't know"
                       9 "(9) Not applicable (skip to next section)" ;
label define H2CO2     0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2CO3M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't had intercourse)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2CO3Y    80 "(80) 1980-1981" 82 "(82) 1982-1983" 84 "(84) 1984"
                       85 "(85) 1985" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2CO4     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2CO5A    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       9 "(9) Norplant" 10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2CO5B    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2CO5C    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2CO6M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't had intercourse)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2CO6Y    81 "(81) 1981-1986" 87 "(87) 1987-1988" 89 "(89) 1989"
                       90 "(90) 1990" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2CO7     0 "(0) No" 1 "(1) Yes"
                       3 "(3) You only had intercourse once"
                       7 "(7) Legitimate skip" ;
label define H2CO8A    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2CO8B    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2CO8C    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2CO9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't had intercourse)"
                       8 "(8) Don't know" ;
label define H2CO10    1 "(1) None of the time" 2 "(2) Some of the time"
                       3 "(3) Half of the time" 4 "(4) Most of the time"
                       5 "(5) All of the time" 6 "(6) Refused"
                       7 "(7) Legitimate skip (have never used condom)"
                       8 "(8) Don't know" ;
label define H2CO11    1 "(1) None of the time" 2 "(2) Some of the time"
                       3 "(3) Half of the time" 4 "(4) Most of the time"
                       5 "(5) All of the time" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO12    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO15A   1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method"
                       96 "(96) Refused (skip to Q.19)"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2CO15B   1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method"
                       14 "(14) No other method (first presented after first response) (skip to Q.19)"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2CO15C   1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method"
                       14 "(14) No other method (first presented after first response)"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2CO16    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO17M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't had intercourse)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2CO17Y   95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2CO18    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO19A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO19B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO19C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO19D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO19E   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO19F   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO19G   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO19H   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO19I   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2CO19J   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI1M_1  0 "(0) This person is not a romantic friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R doesn't have special friend)"
                       98 "(98) Don't know/don't remember"
                       99 "(99) Not applicable" ;
label define H2RI1Y_1  0 "(0) This person is not a romantic friend"
                       77 "(77) 1977" 78 "(78) 1978" 79 "(79) 1979"
                       80 "(80) 1980" 81 "(81) 1981" 83 "(83) 1983"
                       84 "(84) 1984" 85 "(85) 1985" 86 "(86) 1986"
                       87 "(87) 1987" 88 "(88) 1988" 89 "(89) 1989"
                       90 "(90) 1990" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RI2_1   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI3_1   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI4_1   1 "(1) First or second" 3 "(3) Third" 4 "(4) Fourth"
                       5 "(5) Fifth" 6 "(6) Sixth" 7 "(7) Seventh"
                       8 "(8) Eighth" 9 "(9) Ninth" 10 "(10) Tenth"
                       11 "(11) Eleventh" 12 "(12) Twelfth"
                       13 "(13) Beyond twelfth grade"
                       14 "(14) (INITIALS) wasn't in school"
                       15 "(15) (INITIALS) was in school,but you don't know what grade"
                       16 "(16) You don't know whether (INITIALS) was in school"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI5_1   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI6_1   1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI7A_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI7B_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI7C_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI7D_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI7E_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI7F_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI7G_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI7H_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI8_1   1 "(1) All of them" 2 "(2) Most of them"
                       3 "(3) A few of them" 4 "(4) One of them"
                       5 "(5) None of them"
                       6 "(6) When romantic relation w/{INITIALS} began/no close frien"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI9_1   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI10M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI10Y1  92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip (no special friend/relationship on-going)"
                       998 "(998) Don't know" ;
label define H2RI11_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI12M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI12Y1  92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip (no special friend/relationship on-goi"
                       998 "(998) Don't know" ;
label define H2RI13_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI14M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI14Y1  92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip (no special friend/relationship on-goi"
                       998 "(998) Don't know" ;
label define H2RI15_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI16M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI16Y1  92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip (no special friend/relationship on-goi"
                       998 "(998) Don't know" ;
label define H2RI17_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI18M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI18Y1  92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip (no special friend/relationship on-goi"
                       998 "(998) Don't know" ;
label define H2RI19_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI20M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI20Y1  80 "(80) 1980" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip (no special friend/relationship on-goi"
                       998 "(998) Don't know" ;
label define H2RI21_1  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI22_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI23_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI24_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI25_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI26_1  1 "(1) 1st" 2 "(2) 2nd" 3 "(3) 3rd" 4 "(4) 4th"
                       5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) {INITIALS} graduated from HS/in another kind of school"
                       14 "(14) {INITIALS} has graduated from high school/is out of sch"
                       15 "(15) {INITIALS} has dropped out of school"
                       16 "(16) {INITIALS} is in school/but don't know what grade"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R doesn't have romantic friend)"
                       98 "(98) Don't know" ;
label define H2RI27_1  96 "(96) Refused"
                       97 "(97) Legitimate skip (R doesn't have special friend)"
                       98 "(98) Don't know" ;
label define H2RI28_1  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI29A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI29B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI29C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI29D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI29E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI29F1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI30A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI30B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI30C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI30D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI30E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31F1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31G1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI32_1  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33A1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33B1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33C1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33D1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33E1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33F1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33G1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33H1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33I1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33J1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33K1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33L1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33M1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33N1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33O1  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI34A1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (did not order any cards)" ;
label define H2RI34B1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered one card)" ;
label define H2RI34C1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered two cards)" ;
label define H2RI34D1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered three cards)" ;
label define H2RI34E1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered four cards)" ;
label define H2RI34F1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered five cards)" ;
label define H2RI34G1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered six cards)" ;
label define H2RI34H1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered seven cards)" ;
label define H2RI34I1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered eight cards)" ;
label define H2RI34J1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered nine cards)" ;
label define H2RI34K1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered ten cards)" ;
label define H2RI34L1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered eleven cards)" ;
label define H2RI34M1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered twelve cards)" ;
label define H2RI34N1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered thirteen cards)" ;
label define H2RI34O1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered fourteen cards)" ;
label define H2RI35_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI36_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI37M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI37Y1  88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RI38M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI38Y1  88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RI39_1  1 "(1) Once" 2 "(2) More than once" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI40_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI41A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI41B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI41C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI42_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI43_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI44_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI45A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI45B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI45C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI46_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI47_1  1 "(1) You used more than one method at the same time"
                       2 "(2) Used one method at time/method chosen different time to"
                       3 "(3) Sometimes used one method/sometimes you used more than o"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI48_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI49_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI50A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI50B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI50C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI51_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI52_1  1 "(1) You used more than one method at the same time"
                       2 "(2) Used one method at time/method chosen different time to"
                       3 "(3) Sometimes used one method/sometimes you used more than o"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI53_1  996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RI54_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI55M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI55Y1  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RI56_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI57M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI57Y1  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RI58_1  1 "(1) One time" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RI59_1  1 "(1) All of the time" 2 "(2) Most of the time"
                       4 "(4) Less than half the time"
                       5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2RI60_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI61M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI61Y1  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RI62_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI63M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI63Y1  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RI64_1  997 "(997) Legitimate skip" ;
label define H2RI65_1  1 "(1) All of the time" 2 "(2) Most of the time"
                       4 "(4) Less than half the time"
                       5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2RI66_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI67M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI67Y1  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RI68_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI69M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI69Y1  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RI70_1  997 "(997) Legitimate skip" ;
label define H2RI71_1  1 "(1) All of the time" 2 "(2) Most of the time"
                       4 "(4) Less than half the time"
                       5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2RI1M_2  0 "(0) This person is not a romantic friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI1Y_2  0 "(0) This person is not a romantic friend"
                       80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RI2_2   96 "(96) Refused"
                       97 "(97) Legitimate skip (month/year given)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI3_2   96 "(96) Refused"
                       97 "(97) Legitimate skip (R has no/only one special friend)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI4_2   1 "First or second" 5 "Fifth" 6 "Sixth" 7 "Seventh"
                       8 "Eighth" 9 "Ninth" 10 "Tenth" 11 "Eleventh"
                       12 "Twelfth" 13 "Beyond twelfth grade"
                       14 "(INITIALS) wasn't in school. (skip to Q.6)"
                       15 "(INITIALS) was in school, but you don't know what grade."
                       16 "You don't know whether (INITIALS) was in school. (skip to Q.6)"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (no 2nd spec friend/age given)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI5_2   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no 2nd spec frnd/spec frnd not in schoo"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI6_2   1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no 2nd spec frnd/spec frnd not in schoo"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7A_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7B_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7C_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7D_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7E_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7F_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7G_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7H_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has no/only one special friend)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI8_2   1 "(1) All of them" 2 "(2) Most of them"
                       3 "(3) A few of them" 4 "(4) One of them"
                       5 "(5) None of them"
                       6 "(6) When relationship w/{INITIALS} began/no close friends"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R has no/only one special friend)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI9_2   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RI10M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI10Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI11_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RI12M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI12Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI13_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RI14M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI14Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI15_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RI16M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI16Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI17_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RI18M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI18Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI19_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RI20M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI20Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI21_2  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI22_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RI23_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RI24_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RI25_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RI26_2  1 "(1) 1st" 2 "(2) 2nd" 3 "(3) 3rd" 4 "(4) 4th"
                       5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) {INITIALS} graduated from HS/in another kind of school"
                       14 "(14) {INITIALS} has graduated from high school/is out of sch"
                       15 "(15) {INITIALS} has dropped out of school"
                       16 "(16) {INITIALS} is in school/but don't know what grade"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (No or 1 romantic friend)"
                       98 "(98) Don't know" ;
label define H2RI27_2  96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI28_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI29A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI29B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI29C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI29D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI29E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI29F2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI30A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI30B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI30C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI30D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI30E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31F2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI31G2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI32_2  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33A2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33B2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33C2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33D2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33E2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33F2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33G2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33H2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33I2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33J2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33K2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33L2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33M2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33N2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33O2  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI34A2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (did not order any cards)" ;
label define H2RI34B2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered one card)" ;
label define H2RI34C2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered two cards)" ;
label define H2RI34D2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered three cards)" ;
label define H2RI34E2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered four cards)" ;
label define H2RI34F2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered five cards)" ;
label define H2RI34G2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered six cards)" ;
label define H2RI34H2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered seven cards)" ;
label define H2RI34I2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered eight cards)" ;
label define H2RI34J2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered nine cards)" ;
label define H2RI34K2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered ten cards)" ;
label define H2RI34L2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered eleven cards)" ;
label define H2RI34M2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered twelve cards)" ;
label define H2RI34N2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered thirteen cards)" ;
label define H2RI34O2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered fourteen cards)" ;
label define H2RI35_2  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI36_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H2RI37M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI37Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI38M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI38Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI39_2  1 "(1) Once" 2 "(2) More than once (skip to Q31)"
                       6 "(6) Refused"
                       7 "(7) Legit skip(1st intercourse date/not recent intercourse d"
                       8 "(8) Don't know (skip to Q31)" ;
label define H2RI40_2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2RI41A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI41B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI41C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI42_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI43_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI44_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI45A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI45B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI45C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI46_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI47_2  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)"
                       8 "(8) Don't know" ;
label define H2RI48_2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI49_2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI50A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI50B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI50C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI51_2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI52_2  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)"
                       8 "(8) Don't know" ;
label define H2RI53_2  996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RI54_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI55M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI55Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI56_2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI57M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI57Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI58_2  1 "(1) One time" 997 "(997) Legitimate skip" ;
label define H2RI59_2  1 "(1) All of the time" 2 "(2) Most of the time"
                       4 "(4) Less than half the time"
                       5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2RI60_2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI61M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI61Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI62_2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI63M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI63Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI64_2  5 "(5) Five times" 997 "(997) Legitimate skip" ;
label define H2RI65_2  5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2RI66_2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI67M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI67Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI68_2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI69M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitskip (no 2nd special friend/relationship on-going)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI69Y2  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI70_2  997 "(997) Legitimate skip" ;
label define H2RI71_2  7 "(7) Legitimate skip" ;
label define H2RI1M_3  0 "(0) This person is not a romantic friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 2nd special friend/relationship on-going"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2RI1Y_3  0 "(0) This person is not a romantic friend"
                       80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI2_3   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI3_3   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI4_3   1 "(1) First or second" 3 "(3) Third" 4 "(4) Fourth"
                       5 "(5) Fifth" 6 "(6) Sixth" 7 "(7) Seventh"
                       8 "(8) Eighth" 9 "(9) Ninth" 10 "(10) Tenth"
                       11 "(11) Eleventh" 12 "(12) Twelfth"
                       13 "(13) Beyond twelfth grade"
                       14 "(14) (INITIALS) wasn't in school"
                       15 "(15) (INITIALS) was in school,but you don't know what grade"
                       16 "(16) You don't know whether (INITIALS) was in school"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI5_3   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no 3rd special friend/friend not in sch"
                       8 "(8) Don't know" ;
label define H2RI6_3   1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H2RI7A_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7B_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7C_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7D_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7E_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7F_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7G_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI7H_3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI8_3   1 "(1) All of them" 2 "(2) Most of them"
                       3 "(3) A few of them" 4 "(4) One of them"
                       5 "(5) None of them"
                       6 "(6) When relationship w/{INITIALS} began/no close friends"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (R has two/fewer special friends)"
                       98 "(98) Don't know" ;
label define H2RI9_3   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (no 3rd special friend/friend not in school)"
                       8 "(8) Don't know" ;
label define H2RI10M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI10Y3  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI11_3  0 "(0) No" 1 "(1) Yes (skip to Q14)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H2RI12M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI12Y3  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI13_3  0 "(0) No" 1 "(1) Yes (skip to Q14)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H2RI14M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI14Y3  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI15_3  0 "(0) No" 1 "(1) Yes (skip to Q14)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H2RI16M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI16Y3  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI17_3  0 "(0) No" 1 "(1) Yes (skip to Q14)" 6 "(6) Refused"
                       7 "(7) Legit skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H2RI18M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI18Y3  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI19_3  0 "(0) No" 1 "(1) Yes (skip to Q14)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H2RI20M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI20Y3  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI21_3  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H2RI22_3  0 "(0) No" 1 "(1) Yes (skip to Q14)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H2RI23_3  0 "(0) No" 1 "(1) Yes (skip to Q14)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H2RI24_3  0 "(0) No" 1 "(1) Yes (skip to Q14)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H2RI25_3  0 "(0) No" 1 "(1) Yes (skip to Q14)" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" ;
label define H2RI26_3  1 "(1) 1st" 2 "(2) 2nd" 3 "(3) 3rd" 4 "(4) 4th"
                       5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) {INITIALS} graduated from HS/in another kind of school"
                       14 "(14) {INITIALS} has graduated from high school/is out of sch"
                       15 "(15) {INITIALS} has dropped out of school"
                       16 "(16) {INITIALS} is in school/but don't know what grade"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (2 or fewer romantic friends)"
                       98 "(98) Don't know" ;
label define H2RI27_3  96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RI28_3  0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI29A3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI29B3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI29C3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI29D3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI29E3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI29F3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI30A3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI30B3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI30C3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI30D3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI30E3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI31A3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI31B3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI31C3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI31D3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI31E3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI31F3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI31G3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RI32_3  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33A3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33B3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33C3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33D3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33E3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33F3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33G3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33H3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33I3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33J3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33K3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33L3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33M3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33N3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI33O3  0 "(0) Card rejected" 1 "(1) Card accepted"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI34A3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (did not order any cards)" ;
label define H2RI34B3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered one card)" ;
label define H2RI34C3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered two cards)" ;
label define H2RI34D3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered three cards)" ;
label define H2RI34E3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered four cards)" ;
label define H2RI34F3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered five cards)" ;
label define H2RI34G3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered six cards)" ;
label define H2RI34H3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered seven cards)" ;
label define H2RI34I3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered eight cards)" ;
label define H2RI34J3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered nine cards)" ;
label define H2RI34K3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered ten cards)" ;
label define H2RI34L3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered eleven cards)" ;
label define H2RI34M3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered twelve cards)" ;
label define H2RI34N3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered thirteen cards)" ;
label define H2RI34O3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) You saw less of other friends so you could spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) You talked about contraception or sexually transmitted diseases"
                       11 "(11) You kissed"
                       12 "(12) You touched each other under your clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) legitimate skip (ordered fourteen cards)" ;
label define H2RI35_3  0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (intercourse in only one month)"
                       8 "(8) Don't know (skip to next section)" ;
label define H2RI36_3  0 "(0) No (skip to next section)" 1 "(1) Yes"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (intercourse in only one month)"
                       8 "(8) Don't know (skip to next section)" ;
label define H2RI37M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI37Y3  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI38M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI38Y3  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused"
                       997 "(997) Legitimate skip (month/year given)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2RI39_3  1 "(1) Once" 2 "(2) More than once" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI40_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI41A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI41B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI41C3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI42_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI43_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI44_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI45A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI45B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI45C3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI46_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RI47_3  1 "(1) You used more than one method at the same time"
                       2 "(2) Only one method at time/method chosen different time to"
                       3 "(3) Sometimes used only one method/sometimes you used more t"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI48_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI49_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI50A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI50B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI50C3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RI51_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI52_3  1 "(1) You used more than one method at the same time"
                       2 "(2) Only one method at time/method chosen different time to"
                       3 "(3) Sometimes used only one method/sometimes you used more t"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI53_3  996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RI54_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI55M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI55Y3  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RI56_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI57M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI57Y3  80 "(80) 1980" 86 "(86) 1986" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RI58_3  1 "(1) One time" 997 "(997) Legitimate skip" ;
label define H2RI59_3  5 "(5) None of the time"
                       7 "(7) Legitimate skip (anal intercourse only once)" ;
label define H2RI60_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI61M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI61Y3  997 "(997) Legitimate skip" ;
label define H2RI62_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI63M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI63Y3  997 "(997) Legitimate skip" ;
label define H2RI64_3  997 "(997) Legitimate skip" ;
label define H2RI65_3  7 "(7) Legitimate skip" ;
label define H2RI66_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI67M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI67Y3  997 "(997) Legitimate skip" ;
label define H2RI68_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2RI69M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (no 3rd special friend/relationship on-going"
                       98 "(98) Don't know" ;
label define H2RI69Y3  997 "(997) Legitimate skip" ;
label define H2RI70_3  997 "(997) Legitimate skip" ;
label define H2RI71_3  7 "(7) Legitimate skip" ;
label define H2NR1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2NR2     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2NR4     0 "(0) 0 times" 996 "(996) Refused"
                       997 "(997) Legitimate skip (never exchanged sex for drugs/money)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2NR5     0 "(0) No (skip to Q54)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q54)"
                       8 "(8) Don't know (skip to Q54)"
                       9 "(9) Not applicable (skip to Q54)" ;
label define H2NR6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR8     996 "(996) Refused"
                       997 "(997) Legitimate skip (never had a sexual relationship)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2NR9     996 "(996) Refused"
                       997 "(997) Legitimate skip (never had a sexual relationship)"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2NR10    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2NR11    96 "(96) Refused" 97 "(97) Legitimate skip" ;
label define H2NR12    0 "(0) No one" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR15A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR15B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR16_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR17_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR18_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define NRRXW2_1
                       1 "(1) Relationship Info questions asked/reported in the RX var" ;
label define H2RX1M_1  0 "(0) Don't consider this person a special friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX1Y_1  0 "(0) Don't consider this person a special friend"
                       79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX2_1   96 "(96) Refused"
                       97 "(97) Legitimate skip (month/year given)"
                       98 "(98) Don't know" ;
label define H2RX3_1   96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask"
                       98 "(98) Don't know" ;
label define H2RX4_1   1 "(1) First or second" 3 "(3) Third" 4 "(4) Fourth"
                       5 "(5) Fifth" 6 "(6) Sixth" 7 "(7) Seventh"
                       8 "(8) Eighth" 9 "(9) Ninth" 10 "(10) Tenth"
                       11 "(11) Eleventh" 12 "(12) Twelfth"
                       13 "(13) Beyond twelfth grade"
                       14 "(14) (INITIALS) wasn't in school"
                       15 "(15) (INITIALS) was in school,but you don't know what grade"
                       16 "(16) You don't know whether (INITIALS) was in school"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RX5_1   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX6_1   1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX7A_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX7B_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX7C_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX7D_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX7E_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX7F_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX7G_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX7H_1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX8_1   1 "(1) All of them" 2 "(2) Most of them"
                       3 "(3) A few of them" 4 "(4) One of them"
                       5 "(5) None of them"
                       6 "(6) When relationship w/{INITIALS} began/no close friends"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section 26 questions ask"
                       98 "(98) Don't know" ;
label define H2RX9_1   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX10M1  0 "(0) Don't consider this person a special friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX10Y1  0 "(0) Don't consider this person a special friend"
                       79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX11_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX12M1  0 "(0) Don't consider this person a special friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX12Y1  0 "(0) Don't consider this person a special friend"
                       79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX13_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX14M1  0 "(0) Don't consider this person a special friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX14Y1  0 "(0) Don't consider this person a special friend"
                       79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX15_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX16M1  0 "(0) Don't consider this person a special friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX16Y1  0 "(0) Don't consider this person a special friend"
                       79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX17_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX18M1  0 "(0) Don't consider this person a special friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX18Y1  0 "(0) Don't consider this person a special friend"
                       79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX19_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX20M1  0 "(0) Don't consider this person a special friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX20Y1  0 "(0) Don't consider this person a special friend"
                       79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX21_1  0 "(0) In your neighborhood"
                       1 "(1) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX22_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX23_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX24_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX25_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX26_1  1 "(1) 1st" 2 "(2) 2nd" 3 "(3) 3rd" 4 "(4) 4th"
                       5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) {INITIALS} graduated from HS/in another kind of school"
                       14 "(14) {INITIALS} has graduated from high school/is out of sch"
                       15 "(15) {INITIALS} has dropped out of school"
                       16 "(16) {INITIALS} is in school/but don't know what grade"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (Not asked S.24 questions for this part"
                       98 "(98) Don't know" ;
label define H2RX27_1  96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RX28_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX29A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX29B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX29C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX29D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX29E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX29F1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX30A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX30B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX30C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX30D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX30E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX31A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX31B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX31C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX31D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX31E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX31F1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX31G1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip (R has two/fewer special friends)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RX32_1  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33A1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33B1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33C1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33D1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33E1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33F1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33G1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33H1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33I1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33J1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33K1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33L1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33M1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33N1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33O1  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX34A1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34B1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34C1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34D1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34E1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34F1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34G1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34H1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34I1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34J1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34K1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34L1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34M1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34N1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34O1  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX35_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX36_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX37M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX37Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX38M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX38Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX39_1  1 "(1) Once" 2 "(2) More than once" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX40_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX41A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RX41B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RX41C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RX42_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX43_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX44_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX45A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RX45B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RX45C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RX46_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX47_1  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H2RX48_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX49_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX50A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX50B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused (skip to Q.51)"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX50C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX51_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX52_1  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H2RX53_1  996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RX54_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX55M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX55Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX56_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX57M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX57Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX58_1  996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RX59_1  1 "(1) All of the time" 2 "(2) Most of the time"
                       4 "(4) Less than half the time"
                       5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2RX60_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX61M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX61Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX62_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX63M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX63Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX64_1  1 "(1) One time" 15 "(15) Fifteen times"
                       997 "(997) Legitimate skip" ;
label define H2RX65_1  1 "(1) All of the time" 2 "(2) Most of the time"
                       4 "(4) Less than half the time"
                       5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2RX66_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX67M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX67Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX68_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX69M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX69Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legit skip (No sexual relation/section 26 questions as"
                       998 "(998) Don't know" ;
label define H2RX70_1  1 "(1) One time" 997 "(997) Legitimate skip" ;
label define H2RX71_1  1 "(1) All of the time" 2 "(2) Most of the time"
                       3 "(3) About half of the time"
                       4 "(4) Less than half the time"
                       5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2NR19_1  96 "(96) Refused" 97 "(97) Legit skip"
                       98 "(98) Don't know" ;
label define H2NR20_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR21_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR22_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR23_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR24_1  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR25_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (1st intercourse date/not=recent intercourse)"
                       8 "(8) Don't know" ;
label define H2NR26A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR26B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR26C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR26D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR26E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR26F1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR27A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR27B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR27C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR27D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR27E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28F1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28G1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29A1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29B1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29C1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29D1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29E1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29F1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29G1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29H1  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR30_1  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR31_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR32M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR32Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR33_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR34M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR34Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR35_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR36M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR36Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR37_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR38M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR38Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR39_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR40M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR40Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR41_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR42M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR42Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR43M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR43Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR44_1  1 "(1) Once" 2 "(2) More than once" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR45_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR46A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2NR46B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2NR46C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2NR47_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR48_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR49_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR50A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR50B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR50C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR51_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR52_1  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H2NR53_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR54_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR55A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR55B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR55C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR56_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR57_1  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H2NR58_1  996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2NR59_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR60M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR60Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR61_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR62M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR62Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR63_1  1 "(1) One time" 97 "(97) Legitimate skip" ;
label define H2NR64_1  1 "(1) All of the time" 2 "(2) Most of the time"
                       3 "(3) About half of the time"
                       4 "(4) Less than half the time"
                       5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2NR65_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR66M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR66Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR67_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR68M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR68Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR69_1  1 "(1) One time" 997 "(997) Legitimate skip" ;
label define H2NR70_1  1 "(1) All of the time" 2 "(2) Most of the time"
                       3 "(3) About half of the time"
                       4 "(4) Less than half the time"
                       5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2NR71_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR72M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR72Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR73_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR74M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR74Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR75_1  97 "(97) Legitimate skip" ;
label define H2NR76_1  5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2NR77_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR78_1  97 "(97) Legitimate skip" ;
label define H2NR16_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR17_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR18_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX1M_2
                       0 "(0) You don't consider this person a special friend"
                       1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RX1Y_2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX2_2   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RX3_2   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RX4_2   1 "(1) First or second" 3 "(3) Third" 4 "(4) Fourth"
                       5 "(5) Fifth" 6 "(6) Sixth" 7 "(7) Seventh"
                       8 "(8) Eighth" 9 "(9) Ninth" 10 "(10) Tenth"
                       11 "(11) Eleventh" 12 "(12) Twelfth"
                       13 "(13) Beyond twelfth grade"
                       14 "(14) (INITIALS) wasn't in school"
                       15 "(15) (INITIALS) was in school,but you don't know what grade"
                       16 "(16) You don't know whether (INITIALS) was in school"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2RX5_2   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX6_2   1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX7A_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX7B_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX7C_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX7D_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX7E_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX7F_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX7G_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX7H_2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX8_2   1 "(1) All of them" 2 "(2) Most of them"
                       3 "(3) A few of them" 4 "(4) One of them"
                       5 "(5) None of them"
                       6 "(6) When relationship w/{INITIALS} began/no close friends"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No/one sexual relation/sect 26 questions as"
                       98 "(98) Don't know" ;
label define H2RX9_2   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX10M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX10Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX11_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX12M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX12Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX13_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX14M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX14Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX15_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX16M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX16Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX17_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX18M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX18Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX19_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX20M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX20Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX21_2  0 "(0) In your neighborhood"
                       1 "(1) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H2RX22_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX23_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX24_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX25_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX26_2  1 "(1) 1st" 2 "(2) 2nd" 3 "(3) 3rd" 4 "(4) 4th"
                       5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) {INITIALS} graduated from HS/in another kind of school"
                       14 "(14) {INITIALS} has graduated from high school/is out of sch"
                       15 "(15) {INITIALS} has dropped out of school"
                       16 "(16) {INITIALS} is in school/but don't know what grade"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (Not asked S.24 questions for this part"
                       98 "(98) Don't know" ;
label define H2RX27_2  96 "(96) Refused" 97 "(97) Legit skip" ;
label define H2RX28_2  0 "(0) No (skip to next partner/section)" 1 "(1) Yes"
                       7 "(7) Legit skip (had intercourse more than once in same month" ;
label define H2RX29A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX29B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX29C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX29D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX29E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX29F2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX30A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX30B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX30C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX30D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX30E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX31A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX31B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX31C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX31D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX31E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX31F2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX31G2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2RX32_2  1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2RX33A2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33B2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33C2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33D2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33E2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33F2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33G2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33H2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33I2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33J2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33K2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33L2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33M2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33N2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX33O2  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Card kept but R refused to order event in Q34"
                       3 "(3) Card kept but R did not know order of event in Q34"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not asked S24 questions for this partne"
                       8 "(8) Don't know" ;
label define H2RX34A2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34B2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34C2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34D2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34E2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34F2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34G2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34H2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34I2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34J2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34K2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34L2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34M2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34N2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34O2  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends could spend more time withpartner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing or with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX35_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX36_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX37M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX37Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX38M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX38Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX39_2  1 "(1) Once" 2 "(2) More than once" 6 "(6) Refused"
                       7 "(7) Legit skip" 8 "(8) Don't know" ;
label define H2RX40_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX41A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX41B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX41C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX42_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX43_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX44_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX45A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX45B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX45C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX46_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX47_2  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H2RX48_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX49_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX50A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX50B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX50C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX51_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX52_2  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H2RX53_2  996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2RX54_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX55M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX55Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX56_2  7 "(7) Legitimate skip" ;
label define H2RX57M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX57Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX58_2  997 "(997) Legitimate skip" ;
label define H2RX59_2  7 "(7) Legitimate skip" ;
label define H2RX60_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX61M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX61Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX62_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX63M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX63Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX64_2  997 "(997) Legitimate skip" ;
label define H2RX65_2  7 "(7) Legitimate skip" ;
label define H2RX66_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX67M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX67Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX68_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX69M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2RX69Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX70_2  997 "(997) Legitimate skip" ;
label define H2RX71_2  7 "(7) Legitimate skip" ;
label define H2NR19_2  96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2NR20_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR21_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR22_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (never had sexual relationship/same sex partn"
                       8 "(8) Don't know" ;
label define H2NR23_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR24_2  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR25_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR26A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR26B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR26C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR26D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR26E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR26F2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR27A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR27B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR27C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR27D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR27E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28F2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR28G2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29A2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29B2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29C2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29D2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29E2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29F2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29G2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR29H2  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2NR30_2  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (relationship still going on)"
                       8 "(8) Don't know" ;
label define H2NR31_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR32M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR32Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR33_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR34M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitskip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR34Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR35_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR36M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR36Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR37_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR38M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR38Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR39_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR40M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR40Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR41_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR42M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR42Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR43M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR43Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR44_2  1 "(1) Once" 2 "(2) More than once"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR45_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR46A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR46B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR46C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR47_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR48_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR49_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR50A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR50B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR50C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR51_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR52_2  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)" ;
label define H2NR53_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR54_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR55A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR55B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR55C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR56_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR57_2  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (used only one method)" ;
label define H2NR58_2  996 "(996) Refused" 997 "(997) Legitimate skip" ;
label define H2NR59_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR60M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR60Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR61_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR62M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR62Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR63_2  1 "(1) Once" 97 "(97) Legitimate skip" ;
label define H2NR64_2  1 "(1) All of the time" 2 "(2) Most of the time"
                       3 "(3) About half of the time"
                       4 "(4) Less than half the time"
                       5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2NR65_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR66M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR66Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR67_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR68M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR68Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR69_2  900 "(900) 900 times" 997 "(997) Legitimate skip" ;
label define H2NR70_2  1 "(1) All of the time" 2 "(2) Most of the time"
                       4 "(4) Less than half the time"
                       5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2NR71_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR72M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR72Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR73_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR74M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legit skip (No sexual relation/section questions asked)"
                       98 "(98) Don't know" ;
label define H2NR74Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR75_2  97 "(97) Legitimate skip" ;
label define H2NR76_2  7 "(7) Legitimate skip" ;
label define H2NR77_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR78_2  97 "(97) Legitimate skip" ;
label define H2NR16_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR17_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR18_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define NRRXW2_3
                       1 "(1) Relationship Info questions asked reported RX variable s" ;
label define H2RX1M_3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask"
                       98 "(98) Don't know" ;
label define H2RX1Y_3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX2_3   97 "(97) Legitimate skip" ;
label define H2RX3_3
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H2RX4_3   5 "(5) 1st to 5th" 7 "(7) 7th" 8 "(8) 8th" 9 "(9) 9th"
                       10 "(10) 10th" 11 "(11) 11th" 12 "(12) 12th"
                       13 "(13) Beyond 12th grade"
                       14 "(14) {INITIALS} wasn't in school"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H2RX5_3   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX6_3   1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H2RX7A_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H2RX7B_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H2RX7C_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H2RX7D_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H2RX7E_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H2RX7F_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H2RX7G_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H2RX7H_3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legit skip (Two/fewer sexual relations/Sct 26 quest aske" ;
label define H2RX8_3   1 "(1) All of them" 2 "(2) Most of them"
                       3 "(3) A few of them" 4 "(4) One of them"
                       5 "(5) None of them"
                       6 "(6) When relationship w/{INITIALS} began/no close friends"
                       97 "(97) Legit skip (Two/fewer sexual relations/Sct 26 quest ask" ;
label define H2RX9_3   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX10M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX10Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX11_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX12M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX12Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX13_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX14M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX14Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX15_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX16M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX16Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX17_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX18M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX18Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX19_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX20M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX20Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX21_3  0 "(0) In your neighborhood"
                       1 "(1) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H2RX22_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX23_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX24_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX25_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX26_3  1 "(1) 1st" 2 "(2) 2nd" 3 "(3) 3rd" 4 "(4) 4th"
                       5 "(5) 5th" 6 "(6) 6th" 7 "(7) 7th" 8 "(8) 8th"
                       9 "(9) 9th" 10 "(10) 10th" 11 "(11) 11th"
                       12 "(12) 12th"
                       13 "(13) {INITIALS} graduated from HS/in another kind of school"
                       14 "(14) {INITIALS} has graduated from high school/is out of sch"
                       15 "(15) {INITIALS} has dropped out of school"
                       16 "(16) {INITIALS} is in school/but don't know what grade"
                       17 "(17) You don't know whether {INITIALS} is in school"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (Not asked S.24 questions for this part"
                       98 "(98) Don't know" ;
label define H2RX27_3  97 "(97) Legitimate skip" ;
label define H2RX28_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX29A3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX29B3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX29C3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX29D3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX29E3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX29F3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX30A3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX30B3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX30C3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX30D3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX30E3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX31A3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX31B3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX31C3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX31D3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX31E3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX31F3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX31G3  0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H2RX32_3  1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H2RX33A3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33B3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33C3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33D3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33E3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33F3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33G3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33H3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33I3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33J3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33K3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33L3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33M3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33N3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX33O3  0 "(0) Card rejected" 1 "(1) Card kept"
                       2 "(2) Refused to order card in Q34"
                       3 "(3) Did not know order in Q34" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX34A3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34B3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34C3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34D3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34E3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34F3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34G3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34H3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34I3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34J3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34K3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34L3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34M3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34N3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX34O3  1 "(1) You went out together in a group"
                       2 "(2) You met your partner's parents"
                       3 "(3) You told other people that you were a couple"
                       4 "(4) Saw less other friends spend more time with your partner"
                       5 "(5) You and your partner went out together alone"
                       6 "(6) You held hands"
                       7 "(7) You gave each other presents"
                       8 "(8) You told each other you loved each other"
                       9 "(9) You thought of yourselves as a couple"
                       10 "(10) Talked about contraception/sexually transmitted disease"
                       11 "(11) You kissed"
                       12 "(12) Touched each other under clothing/with no clothes on"
                       13 "(13) You had sexual intercourse"
                       14 "(14) You touched each others' genitals (private parts)"
                       15 "(15) Your partner or you got pregnant"
                       97 "(97) Legitimate skip" ;
label define H2RX35_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX36_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX37M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX37Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX38M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX38Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX39_3  1 "(1) Once" 2 "(2) More than once"
                       7 "(7) Legitimate skip" ;
label define H2RX40_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX41A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX41B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX41C3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX42_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX43_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX44_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX45A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX45B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX45C3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX46_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX47_3  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H2RX48_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX49_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX50A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX50B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX50C3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RX51_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX52_3  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H2RX53_3  997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX54_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX55M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX55Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX56_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX57M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX57Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX58_3  997 "(997) Legitimate skip" ;
label define H2RX59_3  7 "(7) Legitimate skip" ;
label define H2RX60_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX61M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX61Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX62_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX63M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX63Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX64_3  997 "(997) Legitimate skip" ;
label define H2RX65_3  7 "(7) Legitimate skip" ;
label define H2RX66_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX67M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX67Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX68_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2RX69M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2RX69Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2RX70_3  997 "(997) Legitimate skip" ;
label define H2RX71_3  7 "(7) Legitimate skip" ;
label define H2NR19_3  96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2NR20_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR21_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR22_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (never had sexual relationship/same sex partn"
                       8 "(8) Don't know" ;
label define H2NR23_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR24_3  1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR25_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR26A3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR26B3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR26C3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR26D3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR26E3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR26F3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR27A3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR27B3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR27C3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR27D3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR27E3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR28A3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR28B3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR28C3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR28D3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR28E3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR28F3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR28G3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR29A3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR29B3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR29C3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR29D3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR29E3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR29F3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR29G3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR29H3  0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR30_3  1 "(1) In your neighborhood"
                       2 "(2) Not in your neighborhood" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never had a sexual relationship)"
                       8 "(8) Don't know" ;
label define H2NR31_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR32M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR32Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR33_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR34M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR34Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR35_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR36M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR36Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR37_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR38M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR38Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR39_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR40M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR40Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR41_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR42M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR42Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR43M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR43Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR44_3  1 "(1) Once" 2 "(2) More than once"
                       7 "(7) Legitimate skip" ;
label define H2NR45_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR46A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR46B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR46C3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR47_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR48_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR49_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR50A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR50B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR50C3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR51_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR52_3  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H2NR53_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR54_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR55A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR55B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR55C3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR56_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR57_3  1 "(1) Used more than one method at same time"
                       2 "(2) Used one method at time/method varied time-to-time"
                       3 "(3) Sometimes only one method/sometimes more than one"
                       7 "(7) Legitimate skip (didn't use birth control)" ;
label define H2NR58_3  996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2NR59_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR60M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR60Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR61_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR62M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR62Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR63_3  97 "(97) Legitimate skip" ;
label define H2NR64_3  3 "(3) About half of the time"
                       5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2NR65_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR66M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR66Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR67_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR68M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR68Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR69_3  900 "(900) 900 times" 997 "(997) Legitimate skip" ;
label define H2NR70_3  5 "(5) None of the time" 7 "(7) Legitimate skip" ;
label define H2NR71_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR72M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR72Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR73_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR74M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip (relationship still going on)"
                       98 "(98) Don't know" ;
label define H2NR74Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2NR75_3  97 "(97) Legitimate skip" ;
label define H2NR76_3  7 "(7) Legitimate skip" ;
label define H2NR77_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR78_3  1 "(1) One time" 97 "(97) Legitimate skip" ;
label define H2NR79    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR80    1 "(1) 1 person" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NR81    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2NR82    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR83    0 "(0) Never" 1 "(1) Rarely" 2 "(2) Sometimes"
                       3 "(3) Often" 4 "(4) Always" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR84    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR85    97 "(97) Legitimate skip" ;
label define H2NR86    97 "(97) Legitimate skip" ;
label define H2NR87    0 "(0) Never" 1 "(1) Rarely" 2 "(2) Sometimes"
                       3 "(3) Often" 4 "(4) Always" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2NR88    1 "(1) All male" 2 "(2) All female"
                       3 "(3) Some male,some female" 7 "(7) Legitimate skip" ;
label define H2BC1     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2BC2     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2BC3     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2BC4     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2BC5     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2BC6     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2BC7     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2BC8     1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 6 "(6) Refused"
                       7 "(7) Legitimate skip (sex=no or age <15)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2TO1     0 "(0) No (skip to Q9)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q9)"
                       8 "(8) Don't know (skip to Q9)"
                       9 "(9) Not applicable (skip to Q9)" ;
label define H2TO3     0 "(0) No (skip to Q5)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q5)"
                       7 "(7) Legitimate skip (never smoked a whole cigarette)"
                       8 "(8) Don't know" ;
label define H2TO4M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2TO4Y    79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2TO5     0 "(0) No days" 96 "(96) Refused (skip to Q7)"
                       97 "(97) Legitimate skip (never smoked regular)"
                       98 "(98) Don't know (skip to Q7)" ;
label define H2TO6M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2TO6Y    76 "(76) 1976" 78 "(78) 1978" 79 "(79) 1979"
                       81 "(81) 1981" 82 "(82) 1982" 84 "(84) 1984"
                       87 "(87) 1987" 88 "(88) 1988" 89 "(89) 1989"
                       90 "(90) 1990" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2TO7     0 "(0) No cigarettes" 96 "(96) Refused"
                       97 "(97) Legit skip (never smoked regular/didn't smoke past 30da"
                       98 "(98) Don't know" ;
label define H2TO8     1 "(1) Today" 2 "(2) Yesterday (1 day ago)"
                       3 "(3) 2 days ago" 4 "(4) 3 days ago"
                       5 "(5) 4 days ago" 6 "(6) 5 days ago"
                       7 "(7) 6 or more days ago" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2TO9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2TO10    0 "(0) No friends" 1 "(1) One friend"
                       2 "(2) Two friends" 3 "(3) Three friends"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2TO11    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2TO12    0 "(0) No days (If 0/skip to Q12)"
                       96 "(96) Refused (skip to Q12)"
                       97 "(97) Legit skip (skip to Q12)"
                       98 "(98) Don't know (skip to Q12)"
                       99 "(99) Not applicable (skip to Q12)" ;
label define H2TO14    1 "(1) Today" 2 "(2) Yesterday (1 day ago)"
                       3 "(3) 2 days ago" 4 "(4) 3 days ago"
                       5 "(5) 4 days ago" 6 "(6) 5 days ago"
                       7 "(7) 6 or more days ago" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2TO15    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2TO16    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2TO18M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2TO18Y   79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2TO19    1 "(1) Every day/almost every day"
                       2 "(2) 3-5 days/week" 3 "(3) 1 or 2 days/week"
                       4 "(4) 2 or 3 days/month"
                       5 "(5) Once a month or less (3-12 times in past 12 months)"
                       6 "(6) 1 or 2 days in past 12 months" 7 "(7) Never"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2TO20    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2TO21    1 "(1) Every day/almost every day"
                       2 "(2) 3-5 days/week" 3 "(3) 1 or 2 days/week"
                       4 "(4) 2 or 3 days/month"
                       5 "(5) Once a month or less (3-12 times in past 12 months)"
                       6 "(6) 1 or 2 days in past 12 months" 7 "(7) Never"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2TO22    1 "(1) Every day/almost every day"
                       2 "(2) 3-5 days/week" 3 "(3) 1 or 2 days/week"
                       4 "(4) 2 or 3 days/month"
                       5 "(5) Once a month or less (3-12 times in past 12 months)"
                       6 "(6) 1 or 2 days in past 12 months" 7 "(7) Never"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2TO23    1 "(1) Beer" 2 "(2) Wine" 3 "(3) Wine coolers"
                       4 "(4) Straight liquor" 5 "(5) Mixed drinks"
                       6 "(6) Whatever is available" 96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't drunk in past 12 months)"
                       98 "(98) Don't know" ;
label define H2TO24    1 "(1) Less than 30 minutes ago"
                       2 "(2) 30 minutes to 1 hour ago"
                       3 "(3) 1 to 3 hours ago" 4 "(4) 4 to 6 hours ago"
                       5 "(5) 7 to 9 hours ago" 6 "(6) 10 to 12 hours ago"
                       7 "(7) More than 12 hours ago" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2TO25    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H2TO26    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H2TO27    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H2TO28    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H2TO29    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H2TO30    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H2TO31    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H2TO32    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H2TO33    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H2TO34    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2TO35    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2TO36    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2TO37    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3-4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk in past 12 months)"
                       8 "(8) Don't know" ;
label define H2TO38    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2TO39    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2TO40    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2TO41    0 "(0) No friends" 1 "(1) One friend"
                       2 "(2) Two friends" 3 "(3) Three friends"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2TO42    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2TO44    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2TO45    9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H2TO46    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2TO47    1 "(1) Today" 2 "(2) Yesterday (1 day ago)"
                       3 "(3) 2 days ago" 4 "(4) 3 days ago"
                       5 "(5) 4 days ago" 6 "(6) 5 days ago"
                       7 "(7) 6 days ago" 8 "(8) 1 to 2 weeks ago"
                       9 "(9) 3 to 4 weeks ago" 10 "(10) 5 to 6 weeks ago"
                       11 "(11) 7 to 8 weeks ago"
                       12 "(12) More than 8 weeks ago" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2TO48    0 "(0) No friends" 1 "(1) One friend"
                       2 "(2) Two friends" 3 "(3) Three friends"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2TO49    97 "(97) Legitimate skip" ;
label define H2TO50    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2TO51    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2TO52    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2TO54    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2TO55    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2TO56    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2TO58    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2TO59    9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H2TO60    9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H2TO61    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2TO62    1 "(1) Once or twice" 2 "(2) A few times"
                       3 "(3) Many times" 7 "(7) Legitimate skip" ;
label define H2TO63    97 "(97) Legitimate skip" ;
label define H2TO64    0 "(0) Never" 1 "(1) One or two times"
                       2 "(2) Three to ten times" 3 "(3) More than ten times"
                       7 "(7) Legitimate skip" ;
label define H2TO65    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2TO66    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2TO67    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2TO68    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS1     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS2     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS3     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS4     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS5     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS6     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS7     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS8     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS9     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS10    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS11    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS12    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS13    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2DS14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV1     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV2     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV3     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV4     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV5     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV6     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV7     0 "(0) Never" 1 "(1) Once" 2 "(2) More than once"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV8     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV11    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV12    0 "(0) None" 1 "(1) 1 day" 2 "(2) 2 or 3 days"
                       3 "(3) 4 or 5 days" 4 "(4) 6 or more days"
                       7 "(7) Legitimate skip" ;
label define H2FV13    1 "(1) A handgun"
                       2 "(2) Other kind of guy-rifle/shotgun/etc"
                       3 "(3) A club/stick/bat/pipe" 4 "(4) A knife or razor"
                       5 "(5) Some other kind of weapon" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FV14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2FV15A   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FV15B   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FV15C   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FV15D   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FV16    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2FV17    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2FV18    1 "(1) A total stranger"
                       2 "(2) A friend or someone you knew"
                       3 "(3) A {GIRLFRIEND/BOYFRIEND} or date"
                       4 "(4) A parent/brother/sister/other family member"
                       5 "(5) Someone not listed here"
                       6 "(6) More than one of the persons listed above"
                       7 "(7) Never fought (skip to next section)"
                       96 "(96) Refused (skip to next section)"
                       97 "(97) Legitimate skip"
                       98 "(98) Don't know (skip to next section)"
                       99 "(99) Not applicable (skip to next section)" ;
label define H2FV19    1 "(1) At school" 2 "(2) In your neighborhood"
                       3 "(3) At home" 4 "(4) At work" 5 "(5) Someplace else"
                       6 "(6) Refused" 7 "(7) Legitimate skip (never fought)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2FV20    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2FV21M   0 "(0) You never had to be treated" 1 "(1) January"
                       2 "(2) February" 3 "(3) March" 4 "(4) April"
                       5 "(5) May" 6 "(6) June" 7 "(7) July" 8 "(8) August"
                       9 "(9) September" 10 "(10) October" 11 "(11) November"
                       12 "(12) December" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H2FV21Y   0 "(0) You never had to be treated" 79 "(79) 1979"
                       87 "(87) 1987" 88 "(88) 1988" 89 "(89) 1989"
                       90 "(90) 1990" 91 "(91) 1991" 92 "(92) 1992"
                       93 "(93) 1993" 94 "(94) 1994" 95 "(95) 1995"
                       96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2FV22    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2JO1     0 "(0) No (skip to Q3)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q3)"
                       7 "(7) Legitimate skip (sex=no or drink=no)"
                       8 "(8) Don't know (skip to Q3)" ;
label define H2JO2     0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (hadn't been drinking at 1st intercourse" ;
label define H2JO3     0 "(0) No (skip to Q5)" 1 "(1) Yes"
                       2 "(2) You have had sexual intercourse only once (skip to Q5)"
                       6 "(6) Refused (skip to Q5)"
                       7 "(7) Legitimate skip (sex=no or drink=no)"
                       8 "(8) Don't know (skip to Q5)" ;
label define H2JO4     0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legit skip (hadn't been drinking at most recent intercou" ;
label define H2JO5     0 "(0) No (skip to Q7)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q7)"
                       7 "(7) Legitimate skip (sex=no or drugs=no)" ;
label define H2JO6A    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hadn't been using drugs at 1st intercou"
                       8 "(8) Don't know" ;
label define H2JO6B    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hadn't been using drugs at 1st intercou"
                       8 "(8) Don't know" ;
label define H2JO6C    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hadn't been using drugs at 1st intercou"
                       8 "(8) Don't know" ;
label define H2JO6D    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hadn't been using drugs at 1st intercou"
                       8 "(8) Don't know" ;
label define H2JO6E    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hadn't been using drugs at 1st intercou"
                       8 "(8) Don't know" ;
label define H2JO7     0 "(0) No (skip to Q9)" 1 "(1) Yes"
                       2 "(2) You have had sexual intercourse only once (skip to Q9)"
                       6 "(6) Refused (skip to Q9)"
                       7 "(7) Legitimate skip (sex=no or drink=no)"
                       8 "(8) Don't know" ;
label define H2JO8A    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legit skip (Not been using drugs at most recent intercou" ;
label define H2JO8B    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legit skip (Not been using drugs at most recent intercou" ;
label define H2JO8C    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legit skip (Not been using drugs at most recent intercou" ;
label define H2JO8D    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legit skip (Not been using drugs at most recent intercou" ;
label define H2JO8E    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legit skip (Not been using drugs at most recent intercou" ;
label define H2JO9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (drink=no)" 8 "(8) Don't know" ;
label define H2JO10A   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip" ;
label define H2JO10B   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip" ;
label define H2JO10C   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip" ;
label define H2JO10D   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip" ;
label define H2JO10E   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip" ;
label define H2JO11    0 "(0) No (skip to Q14)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q14)"
                       7 "(7) Legitimate skip (drink=no)" 8 "(8) Don't know" ;
label define H2JO12    0 "(0) No (skip to Q14)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q14)"
                       7 "(7) Legitimate skip (drink=no)" 8 "(8) Don't know" ;
label define H2JO13    0 "(0) No (skip to Q14)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q14)"
                       7 "(7) Legitimate skip (drink=no)" 8 "(8) Don't know" ;
label define H2JO14A   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip" ;
label define H2JO14B   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip" ;
label define H2JO14C   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip" ;
label define H2JO14D   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip" ;
label define H2JO14E   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legit skip" ;
label define H2JO16    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (hasn't drunk alcohol alone)" ;
label define H2MP1     1 "(1) I have not hair at all"
                       2 "(2) I have a little hair"
                       3 "(3) I have some hair/not a lot/spread out/is thicker"
                       4 "(4) I have a lot of hair that is thick"
                       5 "(5) Have whole lot of hair that is very thick/much as grown"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (female respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MP2     1 "(1) I have few scattered hair/growth isn't thick"
                       2 "(2) Hair is somewhat thick/still see a lot of skin under it"
                       3 "(3) Hair is thick/can't see much skin under it"
                       4 "(4) Hair is very thick/like grown man's facial hair"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (female respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MP3     1 "(1) No/about the same as when in grade school"
                       2 "(2) Yes/a little lower as when in grade school"
                       3 "(3) Yes/somewhat lower than when in grade school"
                       4 "(4) Yes/a lot lower than when in grade school"
                       5 "(5) Yes/a whole lot lower than when in grade school"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (female respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2MP4     1 "(1) I look younger than most"
                       2 "(2) I look younger than some"
                       3 "(3) I look about average"
                       4 "(4) I look older than some"
                       5 "(5) I look older than most" 6 "(6) Refused"
                       7 "(7) Legitimate skip (female respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2FP1
                       1 "(1) My breasts are about the same as when in grade school"
                       2 "(2) My breasts are a little bigger than when in grade school"
                       3 "(3) My breasts are somewhat bigger than when in grade school"
                       4 "(4) My breasts are a lot bigger than when in grade school"
                       5 "(5) My breasts are a whole lot bigger than when in grade sch"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (male respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2FP2
                       1 "(1) My body is about as curvy as when in grade school"
                       2 "(2) My body is a little more curvy than when in grade school"
                       3 "(3) My body is somewhat more curvy than when in grade school"
                       4 "(4) My body is a lot more curvy than when in grade school"
                       5 "(5) My body is a whole lot more curvy than when in grade sch"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (male respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2FP3     0 "(0) No (skip to Q6)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q6)"
                       7 "(7) Legitimate skip (male respondent)"
                       8 "(8) Don't know (skip to Q6)"
                       9 "(9) Not applicable (skip to Q6)" ;
label define H2FP4     7 "(7) 7 years old and younger" 8 "(8) 8 years old"
                       9 "(9) 9 years old" 10 "(10) 10 years old"
                       11 "(11) 11 years old" 12 "(12) 12 years old"
                       13 "(13) 13 years old" 14 "(14) 14 years old"
                       15 "(15) 15 years old" 16 "(16) 16 years old"
                       17 "(17) 17 years old and older" 96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't menstruated)"
                       98 "(98) Don't know" ;
label define H2FP5M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't menstruated)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2FP5D    96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't menstruated)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2FP6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP7     96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't menstruated)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2FP8     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP9     1 "(1) I look younger than most"
                       2 "(2) I look younger than some"
                       3 "(3) I look about average"
                       4 "(4) I look older than some"
                       5 "(5) I look older than most" 6 "(6) Refused"
                       7 "(7) Legitimate skip (male respondent)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2FP10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP11    0 "(0) None (skip to Q12)" 1 "(1) 1 time"
                       2 "(2) 2 times" 3 "(3) 3 times" 4 "(4) 4 times"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2FP12M1  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2FP12Y1  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2FP14_1  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FP12M2  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2FP12Y2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2FP14_2  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FP12M3  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2FP12Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2FP14_3  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H2FP16_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP17A1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2FP17B1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2FP17C1  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2FP18_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP19_1  1 "(1) Definitely no" 2 "(2) Probably no"
                       3 "(3) Neither wanted nor didn't want"
                       4 "(4) Probably yes" 5 "(5) Definitely yes"
                       6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H2FP20_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP21_1  0 "(0) No" 1 "(1) Yes" 3 "(3) You didn't care"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FP22_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP23_1  1 "(1) Before you were sure you were pregnant"
                       3 "(3) Within a month of being sure you were pregnant"
                       4 "(4) More than month after sure pregnant/before pregnancy end"
                       5 "(5) After the pregnancy ended"
                       7 "(7) Legitimate skip (did not marry partner)" ;
label define H2FP24M1  0 "(0) Still pregnant" 1 "(1) January"
                       2 "(2) February" 3 "(3) March" 4 "(4) April"
                       5 "(5) May" 6 "(6) June" 7 "(7) July" 8 "(8) August"
                       9 "(9) September" 10 "(10) October" 11 "(11) November"
                       12 "(12) December" 96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't menstruated)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2FP24Y1  0 "(0) Still pregnant" 79 "(79) 1979" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2FP25_1
                       1 "(1) It hasn't ended/still pregnant (skip to next section)"
                       2 "(2) A live birth" 3 "(3) Still birth"
                       4 "(4) Miscarriage (skip to next pregnancy/section)"
                       5 "(5) An abortion (skip to next pregnancy/section)"
                       6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H2FP26_1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP27A1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP28A1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2F29MA1  96 "(96) Refused" 97 "(97) Legitimate skip" ;
label define H2F29YA1  996 "(996) Refused" 997 "(997) Legitimate skip" ;
label define H2FP30A1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP31A1  0 "(0) Never" 4 "(4) More than once a week"
                       7 "(7) Legitimate skip" ;
label define H2FP32A1  2 "(2) Other relatives,including grandparents"
                       4 "(4) Other" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FP33A1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP34A1  0 "(0) Never" 1 "(1) Once a year" 2 "(2) Once a month"
                       3 "(3) Once a week" 4 "(4) More than once a week"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FP35A1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP36A1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP37A1  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP38A1  0 "(0) Father does not pay support"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2FP16_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP17A2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2FP17B2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2FP17C2  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 14 "(14) No other method"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2FP18_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP19_2  1 "(1) Definitely no" 2 "(2) Probably no"
                       3 "(3) Neither wanted nor didn't want"
                       4 "(4) Probably yes" 5 "(5) Definitely yes"
                       6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H2FP20_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP21_2  0 "(0) No" 1 "(1) Yes" 3 "(3) You didn't care"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FP22_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP23_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP24M2  0 "(0) Still pregnant" 1 "(1) January"
                       2 "(2) February" 3 "(3) March" 4 "(4) April"
                       5 "(5) May" 6 "(6) June" 7 "(7) July" 8 "(8) August"
                       9 "(9) September" 10 "(10) October" 11 "(11) November"
                       12 "(12) December" 96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't menstruated)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2FP24Y2  0 "(0) Still pregnant" 79 "(79) 1979" 87 "(87) 1987"
                       88 "(88) 1988" 89 "(89) 1989" 90 "(90) 1990"
                       91 "(91) 1991" 92 "(92) 1992" 93 "(93) 1993"
                       94 "(94) 1994" 95 "(95) 1995" 96 "(96) 1996"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H2FP25_2
                       1 "(1) It hasn't ended/still pregnant (skip to next section)"
                       2 "(2) A live birth" 3 "(3) Still birth"
                       4 "(4) Miscarriage (skip to next pregnancy/section)"
                       5 "(5) An abortion (skip to next pregnancy/section)"
                       7 "(7) Legitimate skip" ;
label define H2FP26_2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP27A2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP28A2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2F29MA2  0 "(0) Still pregnant" 1 "(1) January"
                       2 "(2) February" 3 "(3) March" 4 "(4) April"
                       5 "(5) May" 6 "(6) June" 7 "(7) July" 8 "(8) August"
                       9 "(9) September" 10 "(10) October" 11 "(11) November"
                       12 "(12) December" 96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't menstruated)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2F29YA2  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2FP30A2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP31A2  7 "(7) Legitimate skip" ;
label define H2FP32A2  7 "(7) Legitimate skip" ;
label define H2FP33A2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP34A2  0 "(0) Never" 1 "(1) Once a year" 2 "(2) Once a month"
                       3 "(3) Once a week" 4 "(4) More than once a week"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2FP35A2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP36A2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP37A2  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP38A2  0 "(0) Father does not pay support"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2FP16_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP17A3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2FP17B3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2FP17C3  1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time)" 4 "(4) Birth control pills"
                       5 "(5) Vaginal sponge"
                       6 "(6) Foam,jelly,creme,suppositories"
                       7 "(7) Diaphragm,with or without jelly"
                       8 "(8) IUD (intrauterine device)" 9 "(9) Norplant"
                       10 "(10) Ring" 11 "(11) Depo Provera"
                       12 "(12) Contraceptive film"
                       13 "(13) Some other method" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H2FP18_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP19_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP20_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP21_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP22_3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP23_3  1 "(1) Before you were sure you were pregnant"
                       3 "(3) Within a month of being sure you were pregnant"
                       4 "(4) More than month after sure pregnant/before pregnancy end"
                       5 "(5) After the pregnancy ended"
                       7 "(7) Legitimate skip (did not marry partner)" ;
label define H2FP24M3  0 "(0) Still pregnant" 1 "(1) January"
                       2 "(2) February" 3 "(3) March" 4 "(4) April"
                       5 "(5) May" 6 "(6) June" 7 "(7) July" 8 "(8) August"
                       9 "(9) September" 10 "(10) October" 11 "(11) November"
                       12 "(12) December" 96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't menstruated)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2FP24Y3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2FP25_3  6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H2FP26_3  7 "(7) Legitimate skip" ;
label define H2FP27A3  7 "(7) Legitimate skip" ;
label define H2FP28A3  7 "(7) Legitimate skip" ;
label define H2F29MA3  0 "(0) Still pregnant" 1 "(1) January"
                       2 "(2) February" 3 "(3) March" 4 "(4) April"
                       5 "(5) May" 6 "(6) June" 7 "(7) July" 8 "(8) August"
                       9 "(9) September" 10 "(10) October" 11 "(11) November"
                       12 "(12) December" 96 "(96) Refused"
                       97 "(97) Legitimate skip (hasn't menstruated)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2F29YA3  79 "(79) 1979" 87 "(87) 1987" 88 "(88) 1988"
                       89 "(89) 1989" 90 "(90) 1990" 91 "(91) 1991"
                       92 "(92) 1992" 93 "(93) 1993" 94 "(94) 1994"
                       95 "(95) 1995" 96 "(96) 1996" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H2FP30A3  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H2FP31A3  7 "(7) Legitimate skip" ;
label define H2FP32A3  7 "(7) Legitimate skip" ;
label define H2FP33A3  7 "(7) Legitimate skip" ;
label define H2FP34A3  7 "(7) Legitimate skip" ;
label define H2FP35A3  7 "(7) Legitimate skip" ;
label define H2FP36A3  7 "(7) Legitimate skip" ;
label define H2FP37A3  7 "(7) Legitimate skip" ;
label define H2FP38A3  997 "(997) Legitimate skip" ;
label define H2SU1     0 "(0) No (skip to Q4)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q4)"
                       8 "(8) Don't know (skip to Q4)"
                       9 "(9) Not applicable (skip to Q4)" ;
label define H2SU2     0 "(0) 0 times (skip to Q4)" 1 "(1) 1 times"
                       2 "(2) 2 or 3 times" 3 "(3) 4 or 5 times"
                       4 "(4) 6 or more times" 6 "(6) Refused (skip to Q4)"
                       7 "(7) Legit skip (didn't seriously think about committing suic"
                       8 "(8) Don't know (skip to Q4)" ;
label define H2SU3     0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (didn't attempt suicide)" ;
label define H2SU4     0 "(0) No (skip to Q6)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q6)"
                       8 "(8) Don't know (skip to Q6)"
                       9 "(9) Not applicable (skip to Q6)" ;
label define H2SU5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no friends tried to kill themselves)"
                       8 "(8) Don't know" ;
label define H2SU6     0 "(0) No (skip to Q8)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q8)"
                       8 "(8) Don't know (skip to Q8)"
                       9 "(9) Not applicable (skip to Q8)" ;
label define H2SU7     0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (no family members tried to kill themsel"
                       8 "(8) Don't know" ;
label define H2SU8     1 "(1) Not honestly at all" 2 "(2) Somewhat honestly"
                       3 "(3) Very honestly" 4 "(4) Completely honestly"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2SU9
                       1 "(1) I listened to all the questions being read to me"
                       2 "(2) I listened to the questions being read most of the time"
                       3 "(3) I listened to the questions being read about half the ti"
                       4 "(4) I listened to questions being read less than half the ti"
                       5 "(5) Read all questions myself/didn't listen to them being re"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H2PA1     1 "(1) Strongly disapprove" 2 "(2) Disapprove"
                       3 "(3) Neither disapprove nor approve" 4 "(4) Approve"
                       5 "(5) Strongly approve" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM or married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PA2     1 "(1) Strongly disapprove" 2 "(2) Disapprove"
                       3 "(3) Neither disapprove nor approve" 4 "(4) Approve"
                       5 "(5) Strongly approve" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM or married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PA3     1 "(1) Strongly disapprove" 2 "(2) Disapprove"
                       3 "(3) Neither disapprove nor approve" 4 "(4) Approve"
                       5 "(5) Strongly approve" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no resident MOM or married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PA4     1 "(1) Strongly disapprove" 2 "(2) Disapprove"
                       3 "(3) Neither disapprove nor approve" 4 "(4) Approve"
                       5 "(5) Strongly approve" 6 "(6) Refused"
                       7 "(7) Legimate skip (no resident DAD or married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PA5     1 "(1) Strongly disapprove" 2 "(2) Disapprove"
                       3 "(3) Neither disapprove nor approve" 4 "(4) Approve"
                       5 "(5) Strongly approve" 6 "(6) Refused"
                       7 "(7) Legimate skip (no resident DAD or married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PA6     1 "(1) Strongly disapprove" 2 "(2) Disapprove"
                       3 "(3) Neither disapprove nor approve" 4 "(4) Approve"
                       5 "(5) Strongly approve" 6 "(6) Refused"
                       7 "(7) Legimate skip (no resident DAD or married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PA7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (currently married)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2PR1     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2PR2     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2PR3     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2PR4     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2PR5     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2PR6     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2PR7     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2PR8     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Does not apply" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2NB1     1 "(1) True" 2 "(2) False" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2NB2     1 "(1) True" 2 "(2) False" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2NB3     1 "(1) True" 2 "(2) False" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2NB4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2NB5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2NB6     1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2NB7     1 "(1) Very unhappy" 2 "(2) A little happy"
                       3 "(3) Wouldn't make any difference"
                       4 "(4) A little happy" 5 "(5) Very happy"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2NB8     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2NB9     97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2NB10    97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H2RE1     0 "(0) None (skip to next section)" 1 "(1) Adventist"
                       2 "(2) AME/AME Zion/CME" 3 "(3) Assemblies of God"
                       4 "(4) Baptist"
                       5 "(5) Christian Church (Disciples of Christ)"
                       6 "(6) Christian Science" 7 "(7) Congregational"
                       8 "(8) Episcopal" 9 "(9) Friends/Quaker"
                       10 "(10) Holiness" 11 "(11) Jehovah's Witness"
                       12 "(12) Later Day Saints (Mormon)" 13 "(13) Lutheran"
                       14 "(14) Methodist" 15 "(15) National Baptist"
                       16 "(16) Pentecostal" 17 "(17) Presbyterian"
                       18 "(18) United Church of Christ"
                       19 "(19) other Protestant" 20 "(20) Baha'i"
                       21 "(21) Buddhist" 22 "(22) Catholic"
                       23 "(23) Eastern Orthodox" 24 "(24) Hindu"
                       25 "(25) Islam/Moslem/Muslim"
                       26 "(26) Jewish-Conservative/Reformed/Orthodox/Reconstructionist"
                       27 "(27) Unitarian" 28 "(28) Other religion"
                       29 "(29) None"
                       96 "(96) Refused (skip to next section)"
                       98 "(98) Don't know (skip to next section)"
                       99 "(99) Not applicable (skip to next section)" ;
label define H2RE2     1 "(1) Agree" 2 "(2) Disagree"
                       3 "(3) Religion doesn't have sacred scriptures"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no religion)"
                       8 "(8) Don't know" ;
label define H2RE3     1 "(1) Once a week or more"
                       2 "(2) Once a month or more/less than once a week"
                       3 "(3) Less than once a month" 4 "(4) Never"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no religion)"
                       8 "(8) Don't know" ;
label define H2RE4     1 "(1) Very important" 2 "(2) Fairly important"
                       3 "(3) Fairly unimportant"
                       4 "(4) Not important at all" 6 "(6) Refused"
                       7 "(7) Legitimate skip (no religion)"
                       8 "(8) Don't know" ;
label define H2RE5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (Q1 not=1 to 19)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2RE6     1 "(1) At least once a day"
                       2 "(2) At least once a week"
                       3 "(3) At least once a month"
                       4 "(4) Less than once a month" 5 "(5) Never"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no religion)"
                       8 "(8) Don't know" ;
label define H2RE7     1 "(1) Once a week or more"
                       2 "(2) Once a month or more/less than once a week"
                       3 "(3) Less than once a month" 4 "(4) Never"
                       6 "(6) Refused" 7 "(7) Legitimate skip (no religion)"
                       8 "(8) Don't know" ;
label define H2EE1     1 "(1) Low" 5 "(5) High"
                       6 "(6) In college now (skip to Q.3)" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H2EE2     1 "(1) Low" 5 "(5) High" 6 "(6) In college now"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (in college from Q.1)"
                       98 "(98) Don't know" ;
label define H2EE3     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2EE4     0 "(0) None (skip to Q6)" 996 "(996) Refused"
                       998 "(998) Don't know (skip to Q6)"
                       999 "(999) Not applicable (skip to Q6)" ;
label define H2EE5     0 "(0) None" 996 "(996) Refused"
                       997 "(997) Legitimate skip (doesn't work for pay in non-summer we"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2EE6     0 "(0) None (skip to Q8)" 996 "(996) Refused"
                       998 "(998) Don't know (skip to Q8)"
                       999 "(999) Not applicable (skip to Q8)" ;
label define H2EE7     0 "(0) None" 996 "(996) Refused"
                       997 "(997) Legitimate skip (doesn't work for pay in a summer week"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H2EE8     0 "(0) None" 96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H2EE9     0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q12)"
                       8 "(8) Don't know (skip to Q12)" ;
label define H2EE10    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (have never driven a car)" ;
label define H2EE11    1 "(1) 0/you don't drive" 2 "(2) 1-50 miles"
                       3 "(3) 51-100 miles" 4 "(4) Over 100 miles"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (have never driven a car)"
                       8 "(8) Don't know" ;
label define H2EE12    1 "(1) Almost no chance"
                       2 "(2) Some chance/probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2EE13    1 "(1) Almost no chance"
                       2 "(2) Some chance/probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2EE14    1 "(1) Almost no chance"
                       2 "(2) Some chance/probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2EE15    1 "(1) Almost no chance"
                       2 "(2) Some chance/probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2EE16    1 "(1) Almost no chance"
                       2 "(2) Some chance/probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2EE17    1 "(1) Almost no chance"
                       2 "(2) Some chance/probably not"
                       3 "(3) A 50-50 chance" 4 "(4) A good chance"
                       5 "(5) Almost certain" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2SIBA    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (skip to next section)"
                       8 "(8) Don't know" ;
label define H2TWINA   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS1A    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS2A    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS3A    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS4A    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS5A    1 "(1) A lot more" 2 "(2) A little more"
                       3 "(3) The same amount" 4 "(4) A little less"
                       5 "(5) A lot less" 6 "(6) Not applicable"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (not study sib/no HH member ages 12-18)"
                       98 "(98) Don't know" ;
label define H2WS6A    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS7A    1 "(1) Identical" 2 "(2) Fraternal" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not R's twin)" ;
label define H2WS8A    1 "(1) Two peas" 2 "(2) Same family (skip to Q12)"
                       7 "(7) Legitimate skip (not R's twin)"
                       8 "(8) Don't know" ;
label define H2WS9A    0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (look like members of the same family)"
                       8 "(8) Don't know (skip to Q12)" ;
label define H2WS10A   0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (strangers never confused)" ;
label define H2WS11A   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (teachers never confused)" ;
label define H2WS12A   1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2SIBB    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (skip to next section)"
                       8 "(8) Don't know" ;
label define H2TWINB   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (skip to next section)"
                       8 "(8) Don't know" ;
label define H2WS1B    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS2B    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS3B    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS4B    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS5B    1 "(1) A lot more" 2 "(2) A little more"
                       3 "(3) The same amount" 4 "(4) A little less"
                       5 "(5) A lot less" 6 "(6) Not applicable"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (not study sib/no HH member ages 12-18)"
                       98 "(98) Don't know" ;
label define H2WS6B    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS7B    1 "(1) Identical" 2 "(2) Fraternal" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not R's twin)" ;
label define H2WS8B    1 "(1) Two peas" 2 "(2) Same family (skip to Q12)"
                       7 "(7) Legitimate skip (not R's twin)"
                       8 "(8) Don't know" ;
label define H2WS9B    0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (look like members of the same family)"
                       8 "(8) Don't know (skip to Q12)" ;
label define H2WS10B   0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (strangers never confused)" ;
label define H2WS11B   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (teachers never confused)" ;
label define H2WS12B   1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2SIBC    0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (skip to next section)" ;
label define H2TWINC   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legit skip (not study sib/two or fewer HH member ages 12" ;
label define H2WS1C    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS2C    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS3C    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS4C    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS5C    1 "(1) A lot more" 2 "(2) A little more"
                       3 "(3) The same amount" 4 "(4) A little less"
                       5 "(5) A lot less" 6 "(6) Not applicable"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (not study sib/no HH member ages 12-18)"
                       98 "(98) Don't know" ;
label define H2WS6C    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS7C    1 "(1) Identical" 2 "(2) Fraternal" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not R's twin)" ;
label define H2WS8C    1 "(1) Two peas" 2 "(2) Same family (skip to Q12)"
                       7 "(7) Legitimate skip (not R's twin)"
                       8 "(8) Don't know" ;
label define H2WS9C    0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (look like members of the same family)"
                       8 "(8) Don't know (skip to Q12)" ;
label define H2WS10C   0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (strangers never confused)" ;
label define H2WS11C   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (teachers never confused)" ;
label define H2WS12C   1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2SIBD    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (skip to next section)"
                       8 "(8) Don't know" ;
label define H2TWIND   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/3 or fewer HH member ages 12-1" ;
label define H2WS1D    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS2D    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS3D    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS4D    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS5D    1 "(1) A lot more" 2 "(2) A little more"
                       3 "(3) The same amount" 4 "(4) A little less"
                       5 "(5) A lot less" 6 "(6) Not applicable"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (not study sib/no HH member ages 12-18)"
                       98 "(98) Don't know" ;
label define H2WS6D    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS7D    1 "(1) Identical" 2 "(2) Fraternal" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not R's twin)" ;
label define H2WS8D    1 "(1) Two peas" 2 "(2) Same family (skip to Q12)"
                       7 "(7) Legitimate skip (not R's twin)"
                       8 "(8) Don't know" ;
label define H2WS9D    0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (look like members of the same family)"
                       8 "(8) Don't know (skip to Q12)" ;
label define H2WS10D   0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (strangers never confused)" ;
label define H2WS11D   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (teachers never confused)" ;
label define H2WS12D   1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2SIBE    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (skip to next section)"
                       8 "(8) Don't know" ;
label define H2TWINE   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/4 or fewer HH member ages 12-1" ;
label define H2WS1E    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS2E    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS3E    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS4E    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS5E    1 "(1) A lot more" 2 "(2) A little more"
                       3 "(3) The same amount" 4 "(4) A little less"
                       5 "(5) A lot less" 6 "(6) Not applicable"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (not study sib/no HH member ages 12-18)"
                       98 "(98) Don't know" ;
label define H2WS6E    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS7E    1 "(1) Identical" 2 "(2) Fraternal" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not R's twin)" ;
label define H2WS8E    1 "(1) Two peas" 2 "(2) Same family (skip to Q12)"
                       7 "(7) Legitimate skip (not R's twin)"
                       8 "(8) Don't know" ;
label define H2WS9E    0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (look like members of the same family)"
                       8 "(8) Don't know (skip to Q12)" ;
label define H2WS10E   0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (strangers never confused)" ;
label define H2WS11E   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (teachers never confused)" ;
label define H2WS12E   1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2SIBF    0 "(0) No"
                       7 "(7) Legitimate skip (skip to next section)" ;
label define H2TWINF   0 "(0) No" 1 "(1) A lot" 2 "(2) Some" 3 "(3) Little"
                       4 "(4) None" 6 "(6) Refused"
                       7 "(7) Legit skip (not study sib/4 or fewer HH member ages 12-1" ;
label define H2WS1F    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS2F    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS3F    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS4F    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS5F    1 "(1) A lot more" 2 "(2) A little more"
                       3 "(3) The same amount" 4 "(4) A little less"
                       5 "(5) A lot less" 6 "(6) Not applicable"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (not study sib/no HH member ages 12-18)"
                       98 "(98) Don't know" ;
label define H2WS6F    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS7F    1 "(1) Identical" 2 "(2) Fraternal" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not R's twin)" ;
label define H2WS8F    1 "(1) Two peas" 2 "(2) Same family (skip to Q12)"
                       7 "(7) Legitimate skip (not R's twin)"
                       8 "(8) Don't know" ;
label define H2WS9F    0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (look like members of the same family)"
                       8 "(8) Don't know (skip to Q12)" ;
label define H2WS10F   0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (strangers never confused)" ;
label define H2WS11F   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (teachers never confused)" ;
label define H2WS12F   1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2SIBG    0 "(0) No" 1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)" ;
label define H2TWING   0 "(0) No"
                       7 "(7) Legit skip (not study sib/6 or fewer HH member ages 12-1" ;
label define H2WS1G    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS2G    1 "(1) A lot" 2 "(2) Some" 3 "(3) Little" 4 "(4) None"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS3G    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS4G    1 "(1) Very often" 2 "(2) Often" 3 "(3) Sometimes"
                       4 "(4) Seldom" 5 "(5) Never" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS5G    1 "(1) A lot more" 2 "(2) A little more"
                       3 "(3) The same amount" 4 "(4) A little less"
                       5 "(5) A lot less" 6 "(6) Not applicable"
                       96 "(96) Refused"
                       97 "(97) Legitimate skip (not study sib/no HH member ages 12-18)"
                       98 "(98) Don't know" ;
label define H2WS6G    1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused" 7 "(7) Legitimate skip (R's twin)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS7G    1 "(1) Identical" 2 "(2) Fraternal" 6 "(6) Refused"
                       7 "(7) Legitimate skip (not R's twin)" ;
label define H2WS8G    1 "(1) Two peas" 2 "(2) Same family (skip to Q12)"
                       7 "(7) Legitimate skip (not R's twin)"
                       8 "(8) Don't know" ;
label define H2WS9G    0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (look like members of the same family)"
                       8 "(8) Don't know (skip to Q12)" ;
label define H2WS10G   0 "(0) No (skip to Q12)" 1 "(1) Yes"
                       7 "(7) Legitimate skip (strangers never confused)" ;
label define H2WS11G   0 "(0) No" 1 "(1) Yes"
                       7 "(7) Legitimate skip (teachers never confused)" ;
label define H2WS12G   1 "(1) Not at all" 2 "(2) Very little"
                       3 "(3) Somewhat" 4 "(4) Quite a bit" 5 "(5) Very much"
                       6 "(6) Refused"
                       7 "(7) Legitimate skip (not study sib/no HH member ages 12-18)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2WS16HF  4 "(4) 4 feet" 5 "(5) 5 feet" 6 "(6) 6 feet"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H2WS16HI  0 "(0) 0 inches" 1 "(1) 1 inch" 2 "(2) 2 inches"
                       3 "(3) 3 inches" 4 "(4) 4 inches" 5 "(5) 5 inches"
                       6 "(6) 6 inches" 7 "(7) 7 inches" 8 "(8) 8 inches"
                       9 "(9) 9 inches" 10 "(10) 10 inches"
                       11 "(11) 11 inches" 12 "(12) 12 inches"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H2WS16W   996 "(996) Refused" 998 "(998) Don't know" ;
label define H2WS17    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legit skip" 8 "(8) Don't know" ;
label define H2IR1     1 "(1) Very unattractive" 2 "(2) Unattractive"
                       3 "(3) About average" 4 "(4) Attractive"
                       5 "(5) Very attractive" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2IR2     1 "(1) Very unattractive" 2 "(2) Unattractive"
                       3 "(3) About average" 4 "(4) Attractive"
                       5 "(5) Very attractive" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2IR3     1 "(1) Very poorly groomed" 2 "(2) Poorly groomed"
                       3 "(3) About average" 4 "(4) Well groomed"
                       5 "(5) Very well groomed" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2IR4     1 "(1) Very candid" 2 "(2) Moderately candid"
                       3 "(3) Somewhat candid" 4 "(4) Not candid"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2IR5     1 "(1) Very immature" 2 "(2) Immature"
                       3 "(3) About average" 4 "(4) Mature"
                       5 "(5) Very mature" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H2IR6     0 "(0) No (skip to Q9)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q9)"
                       8 "(8) Don't know (skip to Q9)" ;
label define H2IR7A    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7B    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7C    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7D    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7E    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7F    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7G    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7H    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7I    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7J    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7K    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7L    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7M    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7N    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7O    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7P    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7Q    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7R    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7S    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7T    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7U    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7V    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7W    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7X    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7Y    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7Z    0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7AA   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7BB   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7CC   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR7DD   0 "(0) Not marked (skip to Q9)" 1 "(1) Marked"
                       7 "(7) Legitimate skip (3rd person not present)" ;
label define H2IR8A    0 "(0) No one under 6" 1 "(1) One person under 6"
                       2 "(2) Two people under 6"
                       3 "(3) Three people under 6"
                       4 "(4) Four people under 6" 97 "(97) Legitimate skip" ;
label define H2IR8B    0 "(0) No one 6-11" 1 "(1) One person 6-11"
                       2 "(2) Two people 6-11" 3 "(3) Three people 6-11"
                       4 "(4) Four people 6-11" 97 "(97) Legitimate skip" ;
label define H2IR8C    0 "(0) No one 12-18" 1 "(1) One person 12-18"
                       2 "(2) Two people 12-18" 3 "(3) Three people 12-18"
                       8 "(8) Eight people 12-18"
                       97 "(97) Legitimate skip (able to determine relationship)" ;
label define H2IR8D    0 "(0) No one 19 and older"
                       1 "(1) One person 19 and older"
                       2 "(2) Two people 19 and older"
                       3 "(3) Three people 19 and older"
                       5 "(5) Five people 19 and older"
                       9 "(9) Nine people 19 and older"
                       97 "(97) Legitimate skip (able to determine relationship)" ;
label define H2IR9     1 "(1) Inside respondent's house"
                       2 "(2) Immediately outside respondent's house"
                       3 "(3) In interviewer's car"
                       4 "(4) At another location" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2IR10    1 "(1) Detached single-family house"
                       2 "(2) Mobile home/trailer"
                       3 "(3) Single-family row/town house (2 or more attached units)"
                       4 "(4) Divided house"
                       5 "(5) Small apartment building (2-4 units)"
                       6 "(6) Apt building (5 or more units)/free access to housing un"
                       7 "(7) Apt building (5 or more units)/locked entry/doorman/both"
                       8 "(8) Other" 98 "(98) Don't know" ;
label define H2IR11    1 "(1) Very well kept"
                       2 "(2) Fairly well kept (needs cosmetic work)"
                       3 "(3) Poorly kept (needs minor repairs)"
                       4 "(4) Very poorly kept (needs major repairs)"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H2IR12    1 "(1) Rural (skip to Q15)" 2 "(2) Suburban"
                       3 "(3) Urban/residential only"
                       4 "(4) 3 or more commercial properties/mostly retail"
                       5 "(5) 3 or more commercial properties/mostly wholesale/industr"
                       6 "(6) Other" 96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H2IR13    1 "(1) Detached single-family house"
                       2 "(2) Mobile home/trailer"
                       3 "(3) Single-family row/town house (2 or more attached units)"
                       4 "(4) Divided house"
                       5 "(5) Small apartment building (2-4 units)"
                       6 "(6) Apt building (5 or more units)/free access to housing un"
                       7 "(7) Apt building (5 or more units)/locked entry/doorman/both"
                       8 "(8) Other" 97 "(97) Legitimate skip (rural area)"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H2IR14    1 "(1) Very well kept"
                       2 "(2) Fairly well kept (needs cosmetic work)"
                       3 "(3) Poorly kept (needs minor repairs)"
                       4 "(4) Very poorly kept (needs major repairs)"
                       6 "(6) Refused" 7 "(7) Legitimate skip (rural area)"
                       8 "(8) Don't know" ;
label define H2IR15    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2IR16    0 "(0) No interruptions (skip to Q18)"
                       96 "(96) Refused (skip to Q18)"
                       98 "(98) Don't know (skip to Q18)" ;
label define H2IR17A   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (no interruptions)"
                       8 "(8) Don't know" ;
label define H2IR17B   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (no interruptions)"
                       8 "(8) Don't know" ;
label define H2IR17C   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (no interruptions)"
                       8 "(8) Don't know" ;
label define H2IR17D   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (no interruptions)"
                       8 "(8) Don't know" ;
label define H2IR17E   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (no interruptions)"
                       8 "(8) Don't know" ;
label define H2IR17F   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (no interruptions)"
                       8 "(8) Don't know" ;
label define H2IR17G   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (no interruptions)"
                       8 "(8) Don't know" ;
label define H2IR17H   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (no interruptions)"
                       8 "(8) Don't know" ;
label define H2IR17I   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (no interruptions)"
                       8 "(8) Don't know" ;
label define H2IR17J   0 "(0) Not selected" 1 "(1) Selected"
                       7 "(7) Legitimate skip (no interruptions)"
                       8 "(8) Don't know" ;
label define H2IR18    0 "(0) No" 1 "(1) Yes" 2 "(2) Perhaps" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2IR19    0 "(0) No (skip to Q21)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q21)"
                       8 "(8) Don't know (skip to Q21)" ;
label define H2IR20    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never bored/impatient)"
                       8 "(8) Don't know" ;
label define H2IR21    0 "(0) No (skip to Q23)" 1 "(1) Yes"
                       6 "(6) Refused (skip to Q23)"
                       8 "(8) Don't know (skip to Q23)"
                       9 "(9) Not applicable (skip to Q23)" ;
label define H2IR22A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22E   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22F   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22G   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22H   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22I   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22J   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22K   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22L   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22M   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22N   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22O   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22P   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22Q   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22R   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22S   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22T   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22U   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22V   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22W   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22X   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22Y   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22Z   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22AA  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22BB  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22CC  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22DD  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22EE  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22FF  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22GG  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22HH  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22II  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22JJ  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22KK  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR22LL  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip (never embarrassed)"
                       8 "(8) Don't know" ;
label define H2IR23    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2IR24    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H2IR25    1 "(1) English" 2 "(2) Spanish" 3 "(3) Other"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H2IR26    0 "(0) No" 1 "(1) Yes/in 1 eye"
                       2 "(2) Yes/in both eyes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2IR27    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H2IR28    0 "(0) No" 1 "(1) Yes" ;
label define H2IR31    1 "(1) ENTER COMMENTS" 2 "(2) NO COMMENTS"
                       6 "(6) Refused" 8 "(8) Don't know" ;


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
replace BIO_SEX2 = . if (BIO_SEX2 == 6)
replace H2GI1M = . if (H2GI1M == 96)
replace H2GI1Y = . if (H2GI1Y == 96)
replace H2GI3 = . if (H2GI3 == 7)
replace H2GI4M = . if (H2GI4M == 97)
replace H2GI4Y = . if (H2GI4Y == 997)
replace H2GI5 = . if (H2GI5 == 7 | H2GI5 == 8)
replace H2GI7 = . if (H2GI7 == 7)
replace H2GI8 = . if (H2GI8 == 7)
replace H2GI9 = . if (H2GI9 == 97)
replace H2GI10 = . if (H2GI10 == 97)
replace H2GI11M = . if (H2GI11M == 97 | H2GI11M == 98)
replace H2GI11Y = . if (H2GI11Y == 997 | H2GI11Y == 998)
replace H2GI12 = . if (H2GI12 == 7 | H2GI12 == 8)
replace H2GI13M = . if (H2GI13M == 97 | H2GI13M == 98)
replace H2GI13Y = . if (H2GI13Y == 9997 | H2GI13Y == 9998)
replace H2GI14A = . if (H2GI14A == 7 | H2GI14A == 8)
replace H2GI14B = . if (H2GI14B == 7 | H2GI14B == 8)
replace H2GI14C = . if (H2GI14C == 7 | H2GI14C == 8)
replace H2GI14D = . if (H2GI14D == 7 | H2GI14D == 8)
replace H2GI14E = . if (H2GI14E == 7 | H2GI14E == 8)
replace H2GI14F = . if (H2GI14F == 7 | H2GI14F == 8)
replace H2GI14G = . if (H2GI14G == 7 | H2GI14G == 8)
replace H2GI14H = . if (H2GI14H == 7 | H2GI14H == 8)
replace H2GI15 = . if (H2GI15 == 8)
replace H2GI16 = . if (H2GI16 == 7 | H2GI16 == 8)
replace H2DA1 = . if (H2DA1 == 6 | H2DA1 == 8)
replace H2DA2 = . if (H2DA2 == 6 | H2DA2 == 8)
replace H2DA3 = . if (H2DA3 == 6 | H2DA3 == 8)
replace H2DA4 = . if (H2DA4 == 6 | H2DA4 == 8)
replace H2DA5 = . if (H2DA5 == 6 | H2DA5 == 8)
replace H2DA6 = . if (H2DA6 == 6 | H2DA6 == 8)
replace H2DA7 = . if (H2DA7 == 6 | H2DA7 == 8)
replace H2DA8 = . if (H2DA8 == 998)
replace H2DA9 = . if (H2DA9 == 98 | H2DA9 == 996)
replace H2DA10 = . if (H2DA10 == 98 | H2DA10 == 996)
replace H2DA11 = . if (H2DA11 == 996 | H2DA11 == 998)
replace H2GH1 = . if (H2GH1 == 6 | H2GH1 == 8)
replace H2GH2 = . if (H2GH2 == 6 | H2GH2 == 8)
replace H2GH3 = . if (H2GH3 == 6 | H2GH3 == 8)
replace H2GH4 = . if (H2GH4 == 6 | H2GH4 == 8)
replace H2GH5 = . if (H2GH5 == 6 | H2GH5 == 8)
replace H2GH6A = . if (H2GH6A == 6 | H2GH6A == 7 | H2GH6A == 8)
replace H2GH6B = . if (H2GH6B == 6 | H2GH6B == 7 | H2GH6B == 8)
replace H2GH6C = . if (H2GH6C == 6 | H2GH6C == 7 | H2GH6C == 8)
replace H2GH7 = . if (H2GH7 == 6 | H2GH7 == 7 | H2GH7 == 8)
replace H2GH8 = . if (H2GH8 == 6 | H2GH8 == 8)
replace H2GH9 = . if (H2GH9 == 6 | H2GH9 == 8)
replace H2GH10 = . if (H2GH10 == 6 | H2GH10 == 8)
replace H2GH11 = . if (H2GH11 == 6 | H2GH11 == 8)
replace H2GH12 = . if (H2GH12 == 6 | H2GH12 == 8)
replace H2GH13 = . if (H2GH13 == 6 | H2GH13 == 8)
replace H2GH14 = . if (H2GH14 == 6 | H2GH14 == 8)
replace H2GH15 = . if (H2GH15 == 6 | H2GH15 == 8)
replace H2GH16 = . if (H2GH16 == 6 | H2GH16 == 8)
replace H2GH17 = . if (H2GH17 == 6 | H2GH17 == 8)
replace H2GH18 = . if (H2GH18 == 6 | H2GH18 == 8)
replace H2GH19 = . if (H2GH19 == 6 | H2GH19 == 8)
replace H2GH20 = . if (H2GH20 == 6 | H2GH20 == 8)
replace H2GH21 = . if (H2GH21 == 6 | H2GH21 == 8)
replace H2GH22 = . if (H2GH22 == 6 | H2GH22 == 8)
replace H2GH23 = . if (H2GH23 == 6 | H2GH23 == 8)
replace H2GH24 = . if (H2GH24 == 6 | H2GH24 == 8)
replace H2GH25 = . if (H2GH25 == 6 | H2GH25 == 8)
replace H2GH26 = . if (H2GH26 == 6 | H2GH26 == 8)
replace H2GH27 = . if (H2GH27 == 6 | H2GH27 == 8)
replace H2GH28 = . if (H2GH28 == 8)
replace H2GH29A = . if (H2GH29A == 6 | H2GH29A == 7 | H2GH29A == 8)
replace H2GH29B = . if (H2GH29B == 6 | H2GH29B == 7 | H2GH29B == 8)
replace H2GH29C = . if (H2GH29C == 6 | H2GH29C == 7 | H2GH29C == 8)
replace H2GH29D = . if (H2GH29D == 6 | H2GH29D == 7 | H2GH29D == 8)
replace H2GH29E = . if (H2GH29E == 6 | H2GH29E == 7 | H2GH29E == 8)
replace H2GH29F = . if (H2GH29F == 6 | H2GH29F == 7 | H2GH29F == 8)
replace H2GH29G = . if (H2GH29G == 6 | H2GH29G == 7 | H2GH29G == 8)
replace H2GH29H = . if (H2GH29H == 6 | H2GH29H == 7 | H2GH29H == 8)
replace H2GH29I = . if (H2GH29I == 6 | H2GH29I == 7 | H2GH29I == 8)
replace H2GH29J = . if (H2GH29J == 6 | H2GH29J == 7 | H2GH29J == 8)
replace H2GH30 = . if (H2GH30 == 6 | H2GH30 == 8)
replace H2GH31 = . if (H2GH31 == 6 | H2GH31 == 8)
replace H2GH32A = . if (H2GH32A == 6 | H2GH32A == 7 | H2GH32A == 8)
replace H2GH32B = . if (H2GH32B == 6 | H2GH32B == 7 | H2GH32B == 8)
replace H2GH32C = . if (H2GH32C == 6 | H2GH32C == 7 | H2GH32C == 8)
replace H2GH32D = . if (H2GH32D == 6 | H2GH32D == 7 | H2GH32D == 8)
replace H2GH32E = . if (H2GH32E == 6 | H2GH32E == 7 | H2GH32E == 8)
replace H2GH32F = . if (H2GH32F == 6 | H2GH32F == 7 | H2GH32F == 8)
replace H2GH32G = . if (H2GH32G == 6 | H2GH32G == 7 | H2GH32G == 8)
replace H2GH33A = . if (H2GH33A == 7)
replace H2GH33B = . if (H2GH33B == 7)
replace H2GH33C = . if (H2GH33C == 7)
replace H2GH33D = . if (H2GH33D == 7)
replace H2GH33E = . if (H2GH33E == 7)
replace H2GH33F = . if (H2GH33F == 7)
replace H2GH33G = . if (H2GH33G == 7)
replace H2GH34 = . if (H2GH34 == 6 | H2GH34 == 7 | H2GH34 == 8)
replace H2GH35 = . if (H2GH35 == 7 | H2GH35 == 8)
replace H2GH36 = . if (H2GH36 == 6 | H2GH36 == 8)
replace H2GH37 = . if (H2GH37 == 6 | H2GH37 == 8)
replace H2GH38 = . if (H2GH38 == 6 | H2GH38 == 7 | H2GH38 == 8)
replace H2GH39 = . if (H2GH39 == 6 | H2GH39 == 8)
replace H2GH40 = . if (H2GH40 == 6 | H2GH40 == 7 | H2GH40 == 8)
replace H2GH41 = . if (H2GH41 == 6 | H2GH41 == 8)
replace H2GH42 = "" if (H2GH42 == "999996" | H2GH42 == "999998")
replace H2GH43 = "" if (H2GH43 == "999996" | H2GH43 == "999998")
replace H2GH44 = . if (H2GH44 == 98)
replace H2GH45 = . if (H2GH45 == 8)
replace H2GH46 = . if (H2GH46 == 6 | H2GH46 == 8)
replace H2GH47 = . if (H2GH47 == 6 | H2GH47 == 8)
replace H2GH48 = . if (H2GH48 == 8)
replace H2GH49 = . if (H2GH49 == 8)
replace H2GH50 = . if (H2GH50 == 8)
replace H2GH51 = . if (H2GH51 == 8)
replace H2GH52F = . if (H2GH52F == 96 | H2GH52F == 98)
replace H2GH52I = . if (H2GH52I == 96 | H2GH52I == 98)
replace H2GH53 = . if (H2GH53 == 996 | H2GH53 == 998)
replace H2NU1 = . if (H2NU1 == 8)
replace H2NU2 = . if (H2NU2 == 7 | H2NU2 == 8)
replace H2NU3 = . if (H2NU3 == 8)
replace H2NU4 = . if (H2NU4 == 7 | H2NU4 == 8)
replace H2NU5 = . if (H2NU5 == 8)
replace H2NU6 = . if (H2NU6 == 8)
replace H2NU7 = . if (H2NU7 == 8)
replace H2NU8 = . if (H2NU8 == 7 | H2NU8 == 8)
replace H2NU9 = . if (H2NU9 == 8)
replace H2NU10 = . if (H2NU10 == 8)
replace H2NU11 = . if (H2NU11 == 8)
replace H2NU12 = . if (H2NU12 == 8)
replace H2NU13 = . if (H2NU13 == 8)
replace H2NU14 = . if (H2NU14 == 8)
replace H2NU15 = . if (H2NU15 == 8)
replace H2NU16 = . if (H2NU16 == 8)
replace H2NU17 = . if (H2NU17 == 8)
replace H2NU18 = . if (H2NU18 == 8)
replace H2NU19 = . if (H2NU19 == 8)
replace H2NU20 = . if (H2NU20 == 8)
replace H2NU21 = . if (H2NU21 == 8)
replace H2NU22 = . if (H2NU22 == 8)
replace H2NU23 = . if (H2NU23 == 8)
replace H2NU24 = . if (H2NU24 == 8)
replace H2NU25 = . if (H2NU25 == 8)
replace H2NU26 = . if (H2NU26 == 8)
replace H2NU27 = . if (H2NU27 == 8)
replace H2NU28 = . if (H2NU28 == 8)
replace H2NU29 = . if (H2NU29 == 8)
replace H2NU30 = . if (H2NU30 == 8)
replace H2NU31 = . if (H2NU31 == 8)
replace H2NU32 = . if (H2NU32 == 8)
replace H2NU33 = . if (H2NU33 == 7 | H2NU33 == 8)
replace H2NU34 = . if (H2NU34 == 8)
replace H2NU35 = . if (H2NU35 == 7 | H2NU35 == 8)
replace H2NU36 = . if (H2NU36 == 8)
replace H2NU37 = . if (H2NU37 == 7 | H2NU37 == 8)
replace H2NU38 = . if (H2NU38 == 8)
replace H2NU39 = . if (H2NU39 == 7 | H2NU39 == 8)
replace H2NU40 = . if (H2NU40 == 8)
replace H2NU41 = . if (H2NU41 == 8)
replace H2NU42 = . if (H2NU42 == 7 | H2NU42 == 8)
replace H2NU43 = . if (H2NU43 == 8)
replace H2NU44 = . if (H2NU44 == 7 | H2NU44 == 8)
replace H2NU45 = . if (H2NU45 == 8)
replace H2NU46 = . if (H2NU46 == 6 | H2NU46 == 7 | H2NU46 == 8)
replace H2NU47 = . if (H2NU47 == 7 | H2NU47 == 8)
replace H2NU48 = . if (H2NU48 == 8)
replace H2NU49 = . if (H2NU49 == 7 | H2NU49 == 8)
replace H2NU50 = . if (H2NU50 == 8)
replace H2NU51 = . if (H2NU51 == 8)
replace H2NU52 = . if (H2NU52 == 8)
replace H2NU53 = . if (H2NU53 == 8)
replace H2NU54 = . if (H2NU54 == 7 | H2NU54 == 8)
replace H2NU55 = . if (H2NU55 == 8)
replace H2NU56 = . if (H2NU56 == 7 | H2NU56 == 8)
replace H2NU57 = . if (H2NU57 == 8)
replace H2NU58 = . if (H2NU58 == 8)
replace H2NU59 = . if (H2NU59 == 8)
replace H2NU60 = . if (H2NU60 == 8)
replace H2NU61 = . if (H2NU61 == 8)
replace H2NU62 = . if (H2NU62 == 8)
replace H2NU63 = . if (H2NU63 == 8)
replace H2NU64 = . if (H2NU64 == 7 | H2NU64 == 8)
replace H2NU65 = . if (H2NU65 == 8)
replace H2NU66 = . if (H2NU66 == 8)
replace H2NU67 = . if (H2NU67 == 7 | H2NU67 == 8)
replace H2NU68 = . if (H2NU68 == 8)
replace H2NU69 = . if (H2NU69 == 7 | H2NU69 == 8)
replace H2NU70 = . if (H2NU70 == 8)
replace H2NU71 = . if (H2NU71 == 8)
replace H2NU72 = . if (H2NU72 == 7 | H2NU72 == 8)
replace H2NU73 = . if (H2NU73 == 8)
replace H2NU74 = . if (H2NU74 == 7 | H2NU74 == 8)
replace H2NU75 = . if (H2NU75 == 8)
replace H2NU76 = . if (H2NU76 == 7 | H2NU76 == 8)
replace H2NU77 = . if (H2NU77 == 8)
replace H2NU78 = . if (H2NU78 == 96 | H2NU78 == 98)
replace H2NU79 = . if (H2NU79 == 96 | H2NU79 == 98)
replace H2NU80 = . if (H2NU80 == 96 | H2NU80 == 98)
replace H2NU81 = . if (H2NU81 == 6 | H2NU81 == 8)
replace H2NU82 = . if (H2NU82 == 97 | H2NU82 == 98)
replace H2UV1 = . if (H2UV1 == 8)
replace H2UV2 = . if (H2UV2 == 8)
replace H2UV3 = . if (H2UV3 == 8)
replace H2UV4 = . if (H2UV4 == 6 | H2UV4 == 8)
replace H2UV5 = . if (H2UV5 == 96 | H2UV5 == 98)
replace H2UV6 = . if (H2UV6 == 96 | H2UV6 == 98)
replace H2UV7 = . if (H2UV7 == 97 | H2UV7 == 98)
replace H2UV8 = . if (H2UV8 == 8)
replace H2UV9 = . if (H2UV9 == 8)
replace H2UV10 = . if (H2UV10 == 998)
replace H2ED1 = . if (H2ED1 == 6 | H2ED1 == 7 | H2ED1 == 8)
replace H2ED2 = . if (H2ED2 == 996 | H2ED2 == 997 | H2ED2 == 998)
replace H2ED3 = . if (H2ED3 == 7 | H2ED3 == 8)
replace H2ED5 = . if (H2ED5 == 7)
replace H2ED7 = . if (H2ED7 == 96 | H2ED7 == 97 | H2ED7 == 98)
replace H2ED8 = . if (H2ED8 == 96 | H2ED8 == 97 | H2ED8 == 98)
replace H2ED9 = . if (H2ED9 == 96 | H2ED9 == 97 | H2ED9 == 98)
replace H2ED10 = . if (H2ED10 == 96 | H2ED10 == 97 | H2ED10 == 98)
replace H2ED11 = . if (H2ED11 == 6 | H2ED11 == 7 | H2ED11 == 8)
replace H2ED12 = . if (H2ED12 == 6 | H2ED12 == 7 | H2ED12 == 8)
replace H2ED13 = . if (H2ED13 == 6 | H2ED13 == 7 | H2ED13 == 8)
replace H2ED14 = . if (H2ED14 == 6 | H2ED14 == 7 | H2ED14 == 8)
replace H2ED15 = . if (H2ED15 == 6 | H2ED15 == 7 | H2ED15 == 8)
replace H2ED16 = . if (H2ED16 == 6 | H2ED16 == 7 | H2ED16 == 8)
replace H2ED17 = . if (H2ED17 == 6 | H2ED17 == 7 | H2ED17 == 8)
replace H2ED18 = . if (H2ED18 == 6 | H2ED18 == 7 | H2ED18 == 8)
replace H2ED19 = . if (H2ED19 == 6 | H2ED19 == 7 | H2ED19 == 8)
replace H2ED20 = . if (H2ED20 == 6 | H2ED20 == 7 | H2ED20 == 8)
replace H2HS1 = . if (H2HS1 == 8)
replace H2HS2A = . if (H2HS2A == 7)
replace H2HS2B = . if (H2HS2B == 7)
replace H2HS2C = . if (H2HS2C == 7)
replace H2HS2D = . if (H2HS2D == 7)
replace H2HS2E = . if (H2HS2E == 7)
replace H2HS3 = . if (H2HS3 == 8)
replace H2HS4A = . if (H2HS4A == 7 | H2HS4A == 8)
replace H2HS4B = . if (H2HS4B == 7 | H2HS4B == 8)
replace H2HS4C = . if (H2HS4C == 7 | H2HS4C == 8)
replace H2HS4D = . if (H2HS4D == 7 | H2HS4D == 8)
replace H2HS4E = . if (H2HS4E == 7 | H2HS4E == 8)
replace H2HS5 = . if (H2HS5 == 8)
replace H2HS6A = . if (H2HS6A == 7)
replace H2HS6B = . if (H2HS6B == 7)
replace H2HS6C = . if (H2HS6C == 7)
replace H2HS6D = . if (H2HS6D == 7)
replace H2HS6E = . if (H2HS6E == 7)
replace H2HS7 = . if (H2HS7 == 8)
replace H2HS8A = . if (H2HS8A == 7)
replace H2HS8B = . if (H2HS8B == 7)
replace H2HS8C = . if (H2HS8C == 7)
replace H2HS8D = . if (H2HS8D == 7)
replace H2HS8E = . if (H2HS8E == 7)
replace H2HS9 = . if (H2HS9 == 6 | H2HS9 == 8)
replace H2HS10A = . if (H2HS10A == 7)
replace H2HS10B = . if (H2HS10B == 7)
replace H2HS10C = . if (H2HS10C == 7)
replace H2HS10D = . if (H2HS10D == 7)
replace H2HS10E = . if (H2HS10E == 7)
replace H2HS11 = . if (H2HS11 == 6 | H2HS11 == 8)
replace H2HS12A = . if (H2HS12A == 7)
replace H2HS12B = . if (H2HS12B == 7)
replace H2HS12C = . if (H2HS12C == 7)
replace H2HS12D = . if (H2HS12D == 7)
replace H2HS12E = . if (H2HS12E == 7)
replace H2HS13 = . if (H2HS13 == 6 | H2HS13 == 7 | H2HS13 == 8)
replace H2HS14A = . if (H2HS14A == 7 | H2HS14A == 8)
replace H2HS14B = . if (H2HS14B == 7 | H2HS14B == 8)
replace H2HS14C = . if (H2HS14C == 7 | H2HS14C == 8)
replace H2HS14D = . if (H2HS14D == 7 | H2HS14D == 8)
replace H2HS14E = . if (H2HS14E == 7 | H2HS14E == 8)
replace H2RP1 = . if (H2RP1 == 6 | H2RP1 == 8)
replace H2RP2 = . if (H2RP2 == 96 | H2RP2 == 98)
replace H2RP3 = . if (H2RP3 == 6 | H2RP3 == 8)
replace H2RP4 = . if (H2RP4 == 96 | H2RP4 == 98)
replace H2RP5 = . if (H2RP5 >= 6 & H2RP5 <= 9)
replace H2RP6 = . if (H2RP6 >= 6 & H2RP6 <= 9)
replace H2RP7 = . if (H2RP7 >= 6 & H2RP7 <= 9)
replace H2RP8 = . if (H2RP8 >= 6 & H2RP8 <= 9)
replace H2RP9 = . if (H2RP9 == 6 | H2RP9 == 7 | H2RP9 == 8)
replace H2RP10 = . if (H2RP10 == 6 | H2RP10 == 7 | H2RP10 == 8)
replace H2SE1 = . if (H2SE1 == 96 | H2SE1 == 97 | H2SE1 == 98)
replace H2SE2 = . if (H2SE2 == 96 | H2SE2 == 97 | H2SE2 == 98)
replace H2SE3 = . if (H2SE3 == 96 | H2SE3 == 97 | H2SE3 == 98)
replace H2SE4 = . if (H2SE4 == 96 | H2SE4 == 97 | H2SE4 == 98)
replace H2FS1 = . if (H2FS1 == 6 | H2FS1 == 8)
replace H2FS2 = . if (H2FS2 == 6 | H2FS2 == 8)
replace H2FS3 = . if (H2FS3 == 6 | H2FS3 == 8)
replace H2FS4 = . if (H2FS4 == 6 | H2FS4 == 8)
replace H2FS5 = . if (H2FS5 == 6 | H2FS5 == 8)
replace H2FS6 = . if (H2FS6 == 6 | H2FS6 == 8)
replace H2FS7 = . if (H2FS7 == 6 | H2FS7 == 8)
replace H2FS8 = . if (H2FS8 == 6 | H2FS8 == 8)
replace H2FS9 = . if (H2FS9 == 6 | H2FS9 == 8)
replace H2FS10 = . if (H2FS10 == 6 | H2FS10 == 8)
replace H2FS11 = . if (H2FS11 == 6 | H2FS11 == 8)
replace H2FS12 = . if (H2FS12 == 6 | H2FS12 == 8)
replace H2FS13 = . if (H2FS13 == 6 | H2FS13 == 8)
replace H2FS14 = . if (H2FS14 == 6 | H2FS14 == 8)
replace H2FS15 = . if (H2FS15 == 6 | H2FS15 == 8)
replace H2FS16 = . if (H2FS16 == 6 | H2FS16 == 8)
replace H2FS17 = . if (H2FS17 == 6 | H2FS17 == 8)
replace H2FS18 = . if (H2FS18 == 6 | H2FS18 == 8)
replace H2FS19 = . if (H2FS19 == 6 | H2FS19 == 8)
replace H2HR1 = . if (H2HR1 == 6 | H2HR1 == 7 | H2HR1 == 8)
replace H2HR2A = . if (H2HR2A == 6 | H2HR2A == 7 | H2HR2A == 8)
replace H2HR2B = . if (H2HR2B == 7)
replace H2HR2C = . if (H2HR2C == 7)
replace H2HR2D = . if (H2HR2D == 7)
replace H2HR2E = . if (H2HR2E == 7)
replace H2HR2F = . if (H2HR2F == 7)
replace H2HR2G = . if (H2HR2G == 7)
replace H2HR2H = . if (H2HR2H == 7)
replace H2HR2I = . if (H2HR2I == 7)
replace H2HR2J = . if (H2HR2J == 7)
replace H2HR2K = . if (H2HR2K == 7)
replace H2HR2L = . if (H2HR2L == 7)
replace H2HR2M = . if (H2HR2M == 7)
replace H2HR2N = . if (H2HR2N == 7)
replace H2HR2O = . if (H2HR2O == 7)
replace H2HR2P = . if (H2HR2P == 7)
replace H2HR2Q = . if (H2HR2Q == 7)
replace H2HR2R = . if (H2HR2R == 7)
replace H2HR3A = . if (H2HR3A == 7 | H2HR3A == 8)
replace H2HR4A = . if (H2HR4A == 96 | H2HR4A == 97 | H2HR4A == 98)
replace H2HR5A = . if (H2HR5A == 97)
replace H2HR6A = . if (H2HR6A == 97)
replace H2HR7A = . if (H2HR7A == 97)
replace H2HR8A = . if (H2HR8A == 996 | H2HR8A == 997 | H2HR8A == 998)
replace H2HR9A = . if (H2HR9A == 996 | H2HR9A == 997 | H2HR9A == 998)
replace H2HR3B = . if (H2HR3B == 7)
replace H2HR4B = . if (H2HR4B == 97)
replace H2HR5B = . if (H2HR5B == 97)
replace H2HR6B = . if (H2HR6B == 97 | H2HR6B == 98)
replace H2HR7B = . if (H2HR7B == 97)
replace H2HR8B = . if (H2HR8B == 996 | H2HR8B == 997 | H2HR8B == 998)
replace H2HR9B = . if (H2HR9B == 996 | H2HR9B == 997 | H2HR9B == 998)
replace H2HR3C = . if (H2HR3C == 7)
replace H2HR4C = . if (H2HR4C == 97)
replace H2HR5C = . if (H2HR5C == 97)
replace H2HR6C = . if (H2HR6C == 97)
replace H2HR7C = . if (H2HR7C == 97)
replace H2HR8C = . if (H2HR8C == 996 | H2HR8C == 997 | H2HR8C == 998)
replace H2HR9C = . if (H2HR9C == 996 | H2HR9C == 997 | H2HR9C == 998)
replace H2HR3D = . if (H2HR3D == 7)
replace H2HR4D = . if (H2HR4D == 96 | H2HR4D == 97 | H2HR4D == 98)
replace H2HR5D = . if (H2HR5D == 97)
replace H2HR6D = . if (H2HR6D == 97)
replace H2HR7D = . if (H2HR7D == 97)
replace H2HR8D = . if (H2HR8D == 997 | H2HR8D == 998)
replace H2HR9D = . if (H2HR9D == 997 | H2HR9D == 998)
replace H2HR3E = . if (H2HR3E == 7)
replace H2HR4E = . if (H2HR4E == 96 | H2HR4E == 97 | H2HR4E == 98)
replace H2HR5E = . if (H2HR5E == 97)
replace H2HR6E = . if (H2HR6E == 97)
replace H2HR7E = . if (H2HR7E == 97)
replace H2HR8E = . if (H2HR8E == 997 | H2HR8E == 998)
replace H2HR9E = . if (H2HR9E == 997 | H2HR9E == 998)
replace H2HR3F = . if (H2HR3F == 7)
replace H2HR4F = . if (H2HR4F == 96 | H2HR4F == 97 | H2HR4F == 98)
replace H2HR5F = . if (H2HR5F == 97 | H2HR5F == 98)
replace H2HR6F = . if (H2HR6F == 97 | H2HR6F == 98)
replace H2HR7F = . if (H2HR7F == 97 | H2HR7F == 98)
replace H2HR8F = . if (H2HR8F == 997 | H2HR8F == 998)
replace H2HR9F = . if (H2HR9F == 997 | H2HR9F == 998)
replace H2HR3G = . if (H2HR3G == 7)
replace H2HR4G = . if (H2HR4G == 96 | H2HR4G == 97 | H2HR4G == 98)
replace H2HR5G = . if (H2HR5G == 97)
replace H2HR6G = . if (H2HR6G == 97)
replace H2HR7G = . if (H2HR7G == 97)
replace H2HR8G = . if (H2HR8G == 997 | H2HR8G == 998)
replace H2HR9G = . if (H2HR9G == 997 | H2HR9G == 998)
replace H2HR3H = . if (H2HR3H == 7)
replace H2HR4H = . if (H2HR4H == 96 | H2HR4H == 97 | H2HR4H == 98)
replace H2HR5H = . if (H2HR5H == 97 | H2HR5H == 98)
replace H2HR6H = . if (H2HR6H == 97 | H2HR6H == 98)
replace H2HR7H = . if (H2HR7H == 97 | H2HR7H == 98)
replace H2HR8H = . if (H2HR8H == 997 | H2HR8H == 998)
replace H2HR9H = . if (H2HR9H == 997 | H2HR9H == 998)
replace H2HR3I = . if (H2HR3I == 7)
replace H2HR4I = . if (H2HR4I == 96 | H2HR4I == 97 | H2HR4I == 98)
replace H2HR5I = . if (H2HR5I == 97 | H2HR5I == 98)
replace H2HR6I = . if (H2HR6I == 97 | H2HR6I == 98)
replace H2HR7I = . if (H2HR7I == 97 | H2HR7I == 98)
replace H2HR8I = . if (H2HR8I == 997 | H2HR8I == 998)
replace H2HR9I = . if (H2HR9I == 997 | H2HR9I == 998)
replace H2HR3J = . if (H2HR3J == 7)
replace H2HR4J = . if (H2HR4J == 96 | H2HR4J == 97 | H2HR4J == 98)
replace H2HR5J = . if (H2HR5J == 97 | H2HR5J == 98)
replace H2HR6J = . if (H2HR6J == 97 | H2HR6J == 98)
replace H2HR7J = . if (H2HR7J == 97 | H2HR7J == 98)
replace H2HR8J = . if (H2HR8J == 997 | H2HR8J == 998)
replace H2HR9J = . if (H2HR9J == 997 | H2HR9J == 998)
replace H2HR3K = . if (H2HR3K == 7)
replace H2HR4K = . if (H2HR4K == 96 | H2HR4K == 97 | H2HR4K == 98)
replace H2HR5K = . if (H2HR5K == 97 | H2HR5K == 98)
replace H2HR6K = . if (H2HR6K == 97 | H2HR6K == 98)
replace H2HR7K = . if (H2HR7K == 97 | H2HR7K == 98)
replace H2HR8K = . if (H2HR8K == 997 | H2HR8K == 998)
replace H2HR9K = . if (H2HR9K == 997 | H2HR9K == 998)
replace H2HR3L = . if (H2HR3L == 7)
replace H2HR4L = . if (H2HR4L == 96 | H2HR4L == 97 | H2HR4L == 98)
replace H2HR5L = . if (H2HR5L == 97 | H2HR5L == 98)
replace H2HR6L = . if (H2HR6L == 97 | H2HR6L == 98)
replace H2HR7L = . if (H2HR7L == 97 | H2HR7L == 98)
replace H2HR8L = . if (H2HR8L == 997 | H2HR8L == 998)
replace H2HR9L = . if (H2HR9L == 997 | H2HR9L == 998)
replace H2HR3M = . if (H2HR3M == 7)
replace H2HR4M = . if (H2HR4M == 96 | H2HR4M == 97 | H2HR4M == 98)
replace H2HR5M = . if (H2HR5M == 97 | H2HR5M == 98)
replace H2HR6M = . if (H2HR6M == 97 | H2HR6M == 98)
replace H2HR7M = . if (H2HR7M == 97 | H2HR7M == 98)
replace H2HR8M = . if (H2HR8M == 997 | H2HR8M == 998)
replace H2HR9M = . if (H2HR9M == 997 | H2HR9M == 998)
replace H2HR3N = . if (H2HR3N == 7)
replace H2HR4N = . if (H2HR4N == 97 | H2HR4N == 98)
replace H2HR5N = . if (H2HR5N == 97 | H2HR5N == 98)
replace H2HR6N = . if (H2HR6N == 97 | H2HR6N == 98)
replace H2HR7N = . if (H2HR7N == 97 | H2HR7N == 98)
replace H2HR8N = . if (H2HR8N == 997 | H2HR8N == 998)
replace H2HR9N = . if (H2HR9N == 997 | H2HR9N == 998)
replace H2HR3O = . if (H2HR3O == 997)
replace H2HR4O = . if (H2HR4O == 97 | H2HR4O == 98)
replace H2HR5O = . if (H2HR5O == 97 | H2HR5O == 98)
replace H2HR6O = . if (H2HR6O == 97 | H2HR6O == 98)
replace H2HR7O = . if (H2HR7O == 97 | H2HR7O == 98)
replace H2HR8O = . if (H2HR8O == 997 | H2HR8O == 998)
replace H2HR9O = . if (H2HR9O == 997 | H2HR9O == 998)
replace H2HR3P = . if (H2HR3P == 7)
replace H2HR4P = . if (H2HR4P == 97 | H2HR4P == 98)
replace H2HR5P = . if (H2HR5P == 97 | H2HR5P == 98)
replace H2HR6P = . if (H2HR6P == 97 | H2HR6P == 98)
replace H2HR7P = . if (H2HR7P == 97 | H2HR7P == 98)
replace H2HR8P = . if (H2HR8P == 997 | H2HR8P == 998)
replace H2HR9P = . if (H2HR9P == 997 | H2HR9P == 998)
replace H2HR3Q = . if (H2HR3Q == 7)
replace H2HR4Q = . if (H2HR4Q == 97 | H2HR4Q == 98)
replace H2HR5Q = . if (H2HR5Q == 97 | H2HR5Q == 98)
replace H2HR6Q = . if (H2HR6Q == 97 | H2HR6Q == 98)
replace H2HR7Q = . if (H2HR7Q == 97 | H2HR7Q == 98)
replace H2HR8Q = . if (H2HR8Q == 997 | H2HR8Q == 998)
replace H2HR9Q = . if (H2HR9Q == 997 | H2HR9Q == 998)
replace H2HR10 = . if (H2HR10 == 97 | H2HR10 == 98 | H2HR10 == 99)
replace H2HR11 = . if (H2HR11 == 97 | H2HR11 == 98 | H2HR11 == 99)
replace H2NM1 = . if (H2NM1 == 6 | H2NM1 == 7 | H2NM1 == 8)
replace H2NM2 = . if (H2NM2 == 6 | H2NM2 == 7 | H2NM2 == 8)
replace H2NM3M = . if (H2NM3M == 97)
replace H2NM3Y = . if (H2NM3Y == 997)
replace H2NM4 = . if (H2NM4 == 6 | H2NM4 == 7 | H2NM4 == 8)
replace H2NM5 = . if (H2NM5 == 97)
replace H2NM9 = . if (H2NM9 == 6 | H2NM9 == 7 | H2NM9 == 8)
replace H2NM10 = . if (H2NM10 == 6 | H2NM10 == 7 | H2NM10 == 8)
replace H2NM11A = . if (H2NM11A == 6 | H2NM11A == 7 | H2NM11A == 8)
replace H2NM11B = . if (H2NM11B == 6 | H2NM11B == 7 | H2NM11B == 8)
replace H2NM11C = . if (H2NM11C == 6 | H2NM11C == 7 | H2NM11C == 8)
replace H2NM11D = . if (H2NM11D == 6 | H2NM11D == 7 | H2NM11D == 8)
replace H2NM11E = . if (H2NM11E == 6 | H2NM11E == 7 | H2NM11E == 8)
replace H2NM11F = . if (H2NM11F == 6 | H2NM11F == 7 | H2NM11F == 8)
replace H2NM11G = . if (H2NM11G == 6 | H2NM11G == 7 | H2NM11G == 8)
replace H2NM11H = . if (H2NM11H == 6 | H2NM11H == 7 | H2NM11H == 8)
replace H2NM11I = . if (H2NM11I == 6 | H2NM11I == 7 | H2NM11I == 8)
replace H2NM11J = . if (H2NM11J == 6 | H2NM11J == 7 | H2NM11J == 8)
replace H2NM11K = . if (H2NM11K == 6 | H2NM11K == 7 | H2NM11K == 8)
replace H2NM12 = . if (H2NM12 == 6 | H2NM12 == 7 | H2NM12 == 8)
replace H2NM13 = . if (H2NM13 == 6 | H2NM13 == 7 | H2NM13 == 8)
replace H2NF1 = . if (H2NF1 == 6 | H2NF1 == 7 | H2NF1 == 8)
replace H2NF2 = . if (H2NF2 == 6 | H2NF2 == 7 | H2NF2 == 8)
replace H2NF3M = . if (H2NF3M == 97 | H2NF3M == 98)
replace H2NF3Y = . if (H2NF3Y == 996 | H2NF3Y == 997 | H2NF3Y == 998)
replace H2NF4 = . if (H2NF4 == 6 | H2NF4 == 7 | H2NF4 == 8)
replace H2NF5 = . if (H2NF5 == 97 | H2NF5 == 98)
replace H2NF9 = . if (H2NF9 == 6 | H2NF9 == 7 | H2NF9 == 8)
replace H2NF10 = . if (H2NF10 == 6 | H2NF10 == 7 | H2NF10 == 8)
replace H2NF11A = . if (H2NF11A == 6 | H2NF11A == 7 | H2NF11A == 8)
replace H2NF11B = . if (H2NF11B == 6 | H2NF11B == 7 | H2NF11B == 8)
replace H2NF11C = . if (H2NF11C == 6 | H2NF11C == 7 | H2NF11C == 8)
replace H2NF11D = . if (H2NF11D == 6 | H2NF11D == 7 | H2NF11D == 8)
replace H2NF11E = . if (H2NF11E == 6 | H2NF11E == 7 | H2NF11E == 8)
replace H2NF11F = . if (H2NF11F == 6 | H2NF11F == 7 | H2NF11F == 8)
replace H2NF11G = . if (H2NF11G == 6 | H2NF11G == 7 | H2NF11G == 8)
replace H2NF11H = . if (H2NF11H == 6 | H2NF11H == 7 | H2NF11H == 8)
replace H2NF11I = . if (H2NF11I == 6 | H2NF11I == 7 | H2NF11I == 8)
replace H2NF11J = . if (H2NF11J == 6 | H2NF11J == 7 | H2NF11J == 8)
replace H2NF11K = . if (H2NF11K == 6 | H2NF11K == 7 | H2NF11K == 8)
replace H2NF12 = . if (H2NF12 == 6 | H2NF12 == 7 | H2NF12 == 8)
replace H2NF13 = . if (H2NF13 == 6 | H2NF13 == 7 | H2NF13 == 8)
replace H2RM1 = . if (H2RM1 == 96 | H2RM1 == 97 | H2RM1 == 98)
replace H2RM2 = . if (H2RM2 == 6 | H2RM2 == 7 | H2RM2 == 8)
replace H2RM3 = . if (H2RM3 >= 996 & H2RM3 <= 999)
replace H2RM4 = . if (H2RM4 == 96 | H2RM4 == 97 | H2RM4 == 98)
replace H2RM5 = . if (H2RM5 == 6 | H2RM5 == 7 | H2RM5 == 8)
replace H2RM6 = . if (H2RM6 == 6 | H2RM6 == 7 | H2RM6 == 8)
replace H2RM7 = . if (H2RM7 == 996 | H2RM7 == 997 | H2RM7 == 998)
replace H2RM8 = . if (H2RM8 == 6 | H2RM8 == 7 | H2RM8 == 8)
replace H2RM9 = . if (H2RM9 == 6 | H2RM9 == 7 | H2RM9 == 8)
replace H2RM10 = . if (H2RM10 == 6 | H2RM10 == 7 | H2RM10 == 8)
replace H2RM11 = . if (H2RM11 >= 96 & H2RM11 <= 99)
replace H2RM12 = . if (H2RM12 >= 96 & H2RM12 <= 99)
replace H2RM13 = . if (H2RM13 >= 96 & H2RM13 <= 99)
replace H2RM14 = . if (H2RM14 == 6 | H2RM14 == 7 | H2RM14 == 8)
replace H2RF1 = . if (H2RF1 >= 96 & H2RF1 <= 99)
replace H2RF2 = . if (H2RF2 >= 6 & H2RF2 <= 9)
replace H2RF3 = . if (H2RF3 >= 996 & H2RF3 <= 999)
replace H2RF4 = . if (H2RF4 >= 96 & H2RF4 <= 99)
replace H2RF5 = . if (H2RF5 >= 6 & H2RF5 <= 9)
replace H2RF6 = . if (H2RF6 >= 6 & H2RF6 <= 9)
replace H2RF7 = . if (H2RF7 == 996 | H2RF7 == 997 | H2RF7 == 998)
replace H2RF8 = . if (H2RF8 == 6 | H2RF8 == 7 | H2RF8 == 8)
replace H2RF9 = . if (H2RF9 >= 6 & H2RF9 <= 9)
replace H2RF10 = . if (H2RF10 >= 6 & H2RF10 <= 9)
replace H2RF11 = . if (H2RF11 >= 96 & H2RF11 <= 99)
replace H2RF12 = . if (H2RF12 >= 96 & H2RF12 <= 99)
replace H2RF13 = . if (H2RF13 >= 96 & H2RF13 <= 99)
replace H2RF14 = . if (H2RF14 >= 6 & H2RF14 <= 9)
replace H2WP1 = . if (H2WP1 >= 6 & H2WP1 <= 9)
replace H2WP2 = . if (H2WP2 >= 6 & H2WP2 <= 9)
replace H2WP3 = . if (H2WP3 >= 6 & H2WP3 <= 9)
replace H2WP4 = . if (H2WP4 >= 6 & H2WP4 <= 9)
replace H2WP5 = . if (H2WP5 >= 6 & H2WP5 <= 9)
replace H2WP6 = . if (H2WP6 >= 6 & H2WP6 <= 9)
replace H2WP7 = . if (H2WP7 >= 6 & H2WP7 <= 9)
replace H2WP8 = . if (H2WP8 == 96 | H2WP8 == 97 | H2WP8 == 98)
replace H2WP9 = . if (H2WP9 == 7 | H2WP9 == 8)
replace H2WP10 = . if (H2WP10 == 6 | H2WP10 == 7 | H2WP10 == 8)
replace H2WP11 = . if (H2WP11 >= 6 & H2WP11 <= 9)
replace H2WP12 = . if (H2WP12 == 97 | H2WP12 == 98)
replace H2WP13 = . if (H2WP13 == 7 | H2WP13 == 8)
replace H2WP14 = . if (H2WP14 >= 6 & H2WP14 <= 9)
replace H2WP15 = . if (H2WP15 >= 6 & H2WP15 <= 9)
replace H2WP16 = . if (H2WP16 == 96 | H2WP16 == 97 | H2WP16 == 98)
replace H2WP17A = . if (H2WP17A == 6 | H2WP17A == 7 | H2WP17A == 8)
replace H2WP17B = . if (H2WP17B == 6 | H2WP17B == 7 | H2WP17B == 8)
replace H2WP17C = . if (H2WP17C == 6 | H2WP17C == 7 | H2WP17C == 8)
replace H2WP17D = . if (H2WP17D == 6 | H2WP17D == 7 | H2WP17D == 8)
replace H2WP17E = . if (H2WP17E == 6 | H2WP17E == 7 | H2WP17E == 8)
replace H2WP17F = . if (H2WP17F == 6 | H2WP17F == 7 | H2WP17F == 8)
replace H2WP17G = . if (H2WP17G == 6 | H2WP17G == 7 | H2WP17G == 8)
replace H2WP17H = . if (H2WP17H == 6 | H2WP17H == 7 | H2WP17H == 8)
replace H2WP17I = . if (H2WP17I == 6 | H2WP17I == 7 | H2WP17I == 8)
replace H2WP17J = . if (H2WP17J == 6 | H2WP17J == 7 | H2WP17J == 8)
replace H2WP17K = . if (H2WP17K == 6 | H2WP17K == 7 | H2WP17K == 8)
replace H2WP18A = . if (H2WP18A == 6 | H2WP18A == 7 | H2WP18A == 8)
replace H2WP18B = . if (H2WP18B == 6 | H2WP18B == 7 | H2WP18B == 8)
replace H2WP18C = . if (H2WP18C == 6 | H2WP18C == 7 | H2WP18C == 8)
replace H2WP18D = . if (H2WP18D == 6 | H2WP18D == 7 | H2WP18D == 8)
replace H2WP18E = . if (H2WP18E == 6 | H2WP18E == 7 | H2WP18E == 8)
replace H2WP18F = . if (H2WP18F == 6 | H2WP18F == 7 | H2WP18F == 8)
replace H2WP18G = . if (H2WP18G == 6 | H2WP18G == 7 | H2WP18G == 8)
replace H2WP18H = . if (H2WP18H == 6 | H2WP18H == 7 | H2WP18H == 8)
replace H2WP18I = . if (H2WP18I == 6 | H2WP18I == 7 | H2WP18I == 8)
replace H2WP18J = . if (H2WP18J == 6 | H2WP18J == 7 | H2WP18J == 8)
replace H2WP18K = . if (H2WP18K == 6 | H2WP18K == 7 | H2WP18K == 8)
replace H2MO1 = . if (H2MO1 >= 6 & H2MO1 <= 9)
replace H2MO2 = . if (H2MO2 >= 6 & H2MO2 <= 9)
replace H2MO3 = . if (H2MO3 >= 6 & H2MO3 <= 9)
replace H2MO4 = . if (H2MO4 >= 6 & H2MO4 <= 9)
replace H2MO5 = . if (H2MO5 >= 6 & H2MO5 <= 9)
replace H2MO6 = . if (H2MO6 >= 6 & H2MO6 <= 9)
replace H2MO7 = . if (H2MO7 >= 6 & H2MO7 <= 9)
replace H2MO8 = . if (H2MO8 >= 6 & H2MO8 <= 9)
replace H2MO9 = . if (H2MO9 >= 6 & H2MO9 <= 9)
replace H2MO10 = . if (H2MO10 >= 6 & H2MO10 <= 9)
replace H2MO11 = . if (H2MO11 >= 6 & H2MO11 <= 9)
replace H2MO12 = . if (H2MO12 >= 6 & H2MO12 <= 9)
replace H2MO13 = . if (H2MO13 >= 6 & H2MO13 <= 9)
replace H2MO14 = . if (H2MO14 >= 6 & H2MO14 <= 9)
replace H2MO15 = . if (H2MO15 >= 6 & H2MO15 <= 9)
replace H2MO16 = . if (H2MO16 == 6 | H2MO16 == 7 | H2MO16 == 8)
replace H2PF1 = . if (H2PF1 >= 6 & H2PF1 <= 9)
replace H2PF2 = . if (H2PF2 >= 6 & H2PF2 <= 9)
replace H2PF3 = . if (H2PF3 >= 6 & H2PF3 <= 9)
replace H2PF4 = . if (H2PF4 >= 6 & H2PF4 <= 9)
replace H2PF5 = . if (H2PF5 >= 6 & H2PF5 <= 9)
replace H2PF6 = . if (H2PF6 >= 6 & H2PF6 <= 9)
replace H2PF7 = . if (H2PF7 == 6 | H2PF7 == 7 | H2PF7 == 8)
replace H2PF8 = . if (H2PF8 == 6 | H2PF8 == 7 | H2PF8 == 8)
replace H2PF9 = . if (H2PF9 >= 6 & H2PF9 <= 9)
replace H2PF10 = . if (H2PF10 == 6 | H2PF10 == 7 | H2PF10 == 8)
replace H2PF11 = . if (H2PF11 >= 6 & H2PF11 <= 9)
replace H2PF12 = . if (H2PF12 >= 6 & H2PF12 <= 9)
replace H2PF13 = . if (H2PF13 == 6 | H2PF13 == 7 | H2PF13 == 8)
replace H2PF14 = . if (H2PF14 == 6 | H2PF14 == 7 | H2PF14 == 8)
replace H2PF15 = . if (H2PF15 == 6 | H2PF15 == 7 | H2PF15 == 8)
replace H2PF16 = . if (H2PF16 == 6 | H2PF16 == 7 | H2PF16 == 8)
replace H2PF17 = . if (H2PF17 >= 6 & H2PF17 <= 9)
replace H2PF18 = . if (H2PF18 >= 6 & H2PF18 <= 9)
replace H2PF19 = . if (H2PF19 == 6 | H2PF19 == 7 | H2PF19 == 8)
replace H2PF20 = . if (H2PF20 >= 6 & H2PF20 <= 9)
replace H2PF21 = . if (H2PF21 >= 6 & H2PF21 <= 9)
replace H2PF22 = . if (H2PF22 >= 6 & H2PF22 <= 9)
replace H2PF23 = . if (H2PF23 >= 6 & H2PF23 <= 9)
replace H2PF24 = . if (H2PF24 >= 6 & H2PF24 <= 9)
replace H2PF25 = . if (H2PF25 >= 6 & H2PF25 <= 9)
replace H2PF26 = . if (H2PF26 >= 6 & H2PF26 <= 9)
replace H2PF27 = . if (H2PF27 == 6 | H2PF27 == 7 | H2PF27 == 8)
replace H2PF28 = . if (H2PF28 == 6 | H2PF28 == 7 | H2PF28 == 8)
replace H2PF29 = . if (H2PF29 == 6 | H2PF29 == 7 | H2PF29 == 8)
replace H2PF30 = . if (H2PF30 == 6 | H2PF30 == 7 | H2PF30 == 8)
replace H2PF31 = . if (H2PF31 == 6 | H2PF31 == 7 | H2PF31 == 8)
replace H2PF32 = . if (H2PF32 == 6 | H2PF32 == 7 | H2PF32 == 8)
replace H2PF33 = . if (H2PF33 == 6 | H2PF33 == 7 | H2PF33 == 8)
replace H2PF34 = . if (H2PF34 == 6 | H2PF34 == 7 | H2PF34 == 8)
replace H2PF35 = . if (H2PF35 == 6 | H2PF35 == 7 | H2PF35 == 8)
replace H2PF36 = . if (H2PF36 == 6 | H2PF36 == 7 | H2PF36 == 8)
replace H2PF37 = . if (H2PF37 == 6 | H2PF37 == 7 | H2PF37 == 8)
replace H2PF38 = . if (H2PF38 == 6 | H2PF38 == 7 | H2PF38 == 8)
replace H2PF39 = . if (H2PF39 == 6 | H2PF39 == 7 | H2PF39 == 8)
replace H2PF40 = . if (H2PF40 == 6 | H2PF40 == 7 | H2PF40 == 8)
replace H2PF41 = . if (H2PF41 == 6 | H2PF41 == 7 | H2PF41 == 8)
replace H2KQ1A = . if (H2KQ1A >= 6 & H2KQ1A <= 9)
replace H2KQ1B = . if (H2KQ1B >= 6 & H2KQ1B <= 9)
replace H2KQ2A = . if (H2KQ2A >= 6 & H2KQ2A <= 9)
replace H2KQ2B = . if (H2KQ2B >= 6 & H2KQ2B <= 9)
replace H2KQ3A = . if (H2KQ3A >= 6 & H2KQ3A <= 9)
replace H2KQ3B = . if (H2KQ3B >= 6 & H2KQ3B <= 9)
replace H2KQ4A = . if (H2KQ4A >= 6 & H2KQ4A <= 9)
replace H2KQ4B = . if (H2KQ4B >= 6 & H2KQ4B <= 9)
replace H2KQ5A = . if (H2KQ5A >= 6 & H2KQ5A <= 9)
replace H2KQ5B = . if (H2KQ5B >= 6 & H2KQ5B <= 9)
replace H2KQ6A = . if (H2KQ6A >= 6 & H2KQ6A <= 9)
replace H2KQ6B = . if (H2KQ6B >= 6 & H2KQ6B <= 9)
replace H2KQ7A = . if (H2KQ7A >= 6 & H2KQ7A <= 9)
replace H2KQ7B = . if (H2KQ7B >= 6 & H2KQ7B <= 9)
replace H2KQ8A = . if (H2KQ8A >= 6 & H2KQ8A <= 9)
replace H2KQ8B = . if (H2KQ8B >= 6 & H2KQ8B <= 9)
replace H2KQ9A = . if (H2KQ9A >= 6 & H2KQ9A <= 9)
replace H2KQ9B = . if (H2KQ9B >= 6 & H2KQ9B <= 9)
replace H2KQ10A = . if (H2KQ10A >= 6 & H2KQ10A <= 9)
replace H2KQ10B = . if (H2KQ10B >= 6 & H2KQ10B <= 9)
replace FR_FLAG2 = . if (FR_FLAG2 == 6 | FR_FLAG2 == 7 | FR_FLAG2 == 8)
replace H2MF1 = . if (H2MF1 == 6 | H2MF1 == 7 | H2MF1 == 8)
replace H2MF3A = . if (H2MF3A == 6 | H2MF3A == 7 | H2MF3A == 8)
replace H2MF3B = . if (H2MF3B == 6 | H2MF3B == 7 | H2MF3B == 8)
replace H2MF3C = . if (H2MF3C == 6 | H2MF3C == 7 | H2MF3C == 8)
replace H2MF3D = . if (H2MF3D == 6 | H2MF3D == 7 | H2MF3D == 8)
replace H2MF4A = . if (H2MF4A == 6 | H2MF4A == 7 | H2MF4A == 8)
replace H2MF5A = . if (H2MF5A == 96 | H2MF5A == 97 | H2MF5A == 98)
replace H2MF6A = . if (H2MF6A == 6 | H2MF6A == 7 | H2MF6A == 8)
replace H2MF7A = . if (H2MF7A >= 6 & H2MF7A <= 9)
replace H2MF8A = . if (H2MF8A == 6 | H2MF8A == 7 | H2MF8A == 8)
replace H2MF9A = . if (H2MF9A == 6 | H2MF9A == 7 | H2MF9A == 8)
replace H2MF11A = . if (H2MF11A == 6 | H2MF11A == 7 | H2MF11A == 8)
replace H2MF12A = . if (H2MF12A == 6 | H2MF12A == 7 | H2MF12A == 8)
replace H2MF13A = . if (H2MF13A == 6 | H2MF13A == 7 | H2MF13A == 8)
replace H2MF14A = . if (H2MF14A == 6 | H2MF14A == 7 | H2MF14A == 8)
replace H2MF15A = . if (H2MF15A == 6 | H2MF15A == 7 | H2MF15A == 8)
replace H2MF4B = . if (H2MF4B == 6 | H2MF4B == 7 | H2MF4B == 8)
replace H2MF5B = . if (H2MF5B == 96 | H2MF5B == 97 | H2MF5B == 98)
replace H2MF6B = . if (H2MF6B == 6 | H2MF6B == 7 | H2MF6B == 8)
replace H2MF7B = . if (H2MF7B == 6 | H2MF7B == 7 | H2MF7B == 8)
replace H2MF8B = . if (H2MF8B == 6 | H2MF8B == 7 | H2MF8B == 8)
replace H2MF9B = . if (H2MF9B == 6 | H2MF9B == 7 | H2MF9B == 8)
replace H2MF11B = . if (H2MF11B == 6 | H2MF11B == 7 | H2MF11B == 8)
replace H2MF12B = . if (H2MF12B == 6 | H2MF12B == 7 | H2MF12B == 8)
replace H2MF13B = . if (H2MF13B == 6 | H2MF13B == 7 | H2MF13B == 8)
replace H2MF14B = . if (H2MF14B == 6 | H2MF14B == 7 | H2MF14B == 8)
replace H2MF15B = . if (H2MF15B == 6 | H2MF15B == 7 | H2MF15B == 8)
replace H2MF4C = . if (H2MF4C == 6 | H2MF4C == 7 | H2MF4C == 8)
replace H2MF5C = . if (H2MF5C == 96 | H2MF5C == 97 | H2MF5C == 98)
replace H2MF6C = . if (H2MF6C == 6 | H2MF6C == 7 | H2MF6C == 8)
replace H2MF7C = . if (H2MF7C == 6 | H2MF7C == 7 | H2MF7C == 8)
replace H2MF8C = . if (H2MF8C == 6 | H2MF8C == 7 | H2MF8C == 8)
replace H2MF9C = . if (H2MF9C == 6 | H2MF9C == 7 | H2MF9C == 8)
replace H2MF11C = . if (H2MF11C == 6 | H2MF11C == 7 | H2MF11C == 8)
replace H2MF12C = . if (H2MF12C == 6 | H2MF12C == 7 | H2MF12C == 8)
replace H2MF13C = . if (H2MF13C == 6 | H2MF13C == 7 | H2MF13C == 8)
replace H2MF14C = . if (H2MF14C == 6 | H2MF14C == 7 | H2MF14C == 8)
replace H2MF15C = . if (H2MF15C == 6 | H2MF15C == 7 | H2MF15C == 8)
replace H2MF4D = . if (H2MF4D == 6 | H2MF4D == 7 | H2MF4D == 8)
replace H2MF5D = . if (H2MF5D == 96 | H2MF5D == 97 | H2MF5D == 98)
replace H2MF6D = . if (H2MF6D == 6 | H2MF6D == 7 | H2MF6D == 8)
replace H2MF7D = . if (H2MF7D == 6 | H2MF7D == 7 | H2MF7D == 8)
replace H2MF8D = . if (H2MF8D == 6 | H2MF8D == 7 | H2MF8D == 8)
replace H2MF9D = . if (H2MF9D == 6 | H2MF9D == 7 | H2MF9D == 8)
replace H2MF11D = . if (H2MF11D == 6 | H2MF11D == 7 | H2MF11D == 8)
replace H2MF12D = . if (H2MF12D == 6 | H2MF12D == 7 | H2MF12D == 8)
replace H2MF13D = . if (H2MF13D == 6 | H2MF13D == 7 | H2MF13D == 8)
replace H2MF14D = . if (H2MF14D == 6 | H2MF14D == 7 | H2MF14D == 8)
replace H2MF15D = . if (H2MF15D == 6 | H2MF15D == 7 | H2MF15D == 8)
replace H2MF4E = . if (H2MF4E == 6 | H2MF4E == 7 | H2MF4E == 8)
replace H2MF5E = . if (H2MF5E == 96 | H2MF5E == 97 | H2MF5E == 98)
replace H2MF6E = . if (H2MF6E == 6 | H2MF6E == 7 | H2MF6E == 8)
replace H2MF7E = . if (H2MF7E == 6 | H2MF7E == 7 | H2MF7E == 8)
replace H2MF8E = . if (H2MF8E == 6 | H2MF8E == 7 | H2MF8E == 8)
replace H2MF9E = . if (H2MF9E == 6 | H2MF9E == 7 | H2MF9E == 8)
replace H2MF11E = . if (H2MF11E == 6 | H2MF11E == 7 | H2MF11E == 8)
replace H2MF12E = . if (H2MF12E == 6 | H2MF12E == 7 | H2MF12E == 8)
replace H2MF13E = . if (H2MF13E == 6 | H2MF13E == 7 | H2MF13E == 8)
replace H2MF14E = . if (H2MF14E == 6 | H2MF14E == 7 | H2MF14E == 8)
replace H2MF15E = . if (H2MF15E == 6 | H2MF15E == 7 | H2MF15E == 8)
replace H2FF1 = . if (H2FF1 == 6 | H2FF1 == 7 | H2FF1 == 8)
replace H2FF3A = . if (H2FF3A == 6 | H2FF3A == 7 | H2FF3A == 8)
replace H2FF3B = . if (H2FF3B == 6 | H2FF3B == 7 | H2FF3B == 8)
replace H2FF3C = . if (H2FF3C == 6 | H2FF3C == 7 | H2FF3C == 8)
replace H2FF3D = . if (H2FF3D == 6 | H2FF3D == 7 | H2FF3D == 8)
replace H2FF4A = . if (H2FF4A == 6 | H2FF4A == 7 | H2FF4A == 8)
replace H2FF5A = . if (H2FF5A == 96 | H2FF5A == 97 | H2FF5A == 98)
replace H2FF6A = . if (H2FF6A == 6 | H2FF6A == 7 | H2FF6A == 8)
replace H2FF7A = . if (H2FF7A >= 6 & H2FF7A <= 9)
replace H2FF8A = . if (H2FF8A == 6 | H2FF8A == 7 | H2FF8A == 8)
replace H2FF9A = . if (H2FF9A == 6 | H2FF9A == 7 | H2FF9A == 8)
replace H2FF11A = . if (H2FF11A == 6 | H2FF11A == 7 | H2FF11A == 8)
replace H2FF12A = . if (H2FF12A == 6 | H2FF12A == 7 | H2FF12A == 8)
replace H2FF13A = . if (H2FF13A == 6 | H2FF13A == 7 | H2FF13A == 8)
replace H2FF14A = . if (H2FF14A == 6 | H2FF14A == 7 | H2FF14A == 8)
replace H2FF15A = . if (H2FF15A == 6 | H2FF15A == 7 | H2FF15A == 8)
replace H2FF4B = . if (H2FF4B == 6 | H2FF4B == 7 | H2FF4B == 8)
replace H2FF5B = . if (H2FF5B == 96 | H2FF5B == 97 | H2FF5B == 98)
replace H2FF6B = . if (H2FF6B == 6 | H2FF6B == 7 | H2FF6B == 8)
replace H2FF7B = . if (H2FF7B == 6 | H2FF7B == 7 | H2FF7B == 8)
replace H2FF8B = . if (H2FF8B == 6 | H2FF8B == 7 | H2FF8B == 8)
replace H2FF9B = . if (H2FF9B == 6 | H2FF9B == 7 | H2FF9B == 8)
replace H2FF11B = . if (H2FF11B == 6 | H2FF11B == 7 | H2FF11B == 8)
replace H2FF12B = . if (H2FF12B == 6 | H2FF12B == 7 | H2FF12B == 8)
replace H2FF13B = . if (H2FF13B == 6 | H2FF13B == 7 | H2FF13B == 8)
replace H2FF14B = . if (H2FF14B == 6 | H2FF14B == 7 | H2FF14B == 8)
replace H2FF15B = . if (H2FF15B == 6 | H2FF15B == 7 | H2FF15B == 8)
replace H2FF4C = . if (H2FF4C == 6 | H2FF4C == 7 | H2FF4C == 8)
replace H2FF5C = . if (H2FF5C == 96 | H2FF5C == 97 | H2FF5C == 98)
replace H2FF6C = . if (H2FF6C == 6 | H2FF6C == 7 | H2FF6C == 8)
replace H2FF7C = . if (H2FF7C == 6 | H2FF7C == 7 | H2FF7C == 8)
replace H2FF8C = . if (H2FF8C == 6 | H2FF8C == 7 | H2FF8C == 8)
replace H2FF9C = . if (H2FF9C == 6 | H2FF9C == 7 | H2FF9C == 8)
replace H2FF11C = . if (H2FF11C == 6 | H2FF11C == 7 | H2FF11C == 8)
replace H2FF12C = . if (H2FF12C == 6 | H2FF12C == 7 | H2FF12C == 8)
replace H2FF13C = . if (H2FF13C == 6 | H2FF13C == 7 | H2FF13C == 8)
replace H2FF14C = . if (H2FF14C == 6 | H2FF14C == 7 | H2FF14C == 8)
replace H2FF15C = . if (H2FF15C == 6 | H2FF15C == 7 | H2FF15C == 8)
replace H2FF4D = . if (H2FF4D == 6 | H2FF4D == 7 | H2FF4D == 8)
replace H2FF5D = . if (H2FF5D == 96 | H2FF5D == 97 | H2FF5D == 98)
replace H2FF6D = . if (H2FF6D == 7 | H2FF6D == 9)
replace H2FF7D = . if (H2FF7D == 7 | H2FF7D == 9)
replace H2FF8D = . if (H2FF8D == 7 | H2FF8D == 9)
replace H2FF9D = . if (H2FF9D == 7 | H2FF9D == 9)
replace H2FF11D = . if (H2FF11D == 7 | H2FF11D == 9)
replace H2FF12D = . if (H2FF12D == 7 | H2FF12D == 9)
replace H2FF13D = . if (H2FF13D == 7 | H2FF13D == 9)
replace H2FF14D = . if (H2FF14D == 7 | H2FF14D == 9)
replace H2FF15D = . if (H2FF15D == 7 | H2FF15D == 9)
replace H2FF4E = . if (H2FF4E == 7 | H2FF4E == 9)
replace H2FF5E = . if (H2FF5E == 96 | H2FF5E == 97 | H2FF5E == 98)
replace H2FF6E = . if (H2FF6E == 6 | H2FF6E == 7 | H2FF6E == 8)
replace H2FF7E = . if (H2FF7E == 6 | H2FF7E == 7 | H2FF7E == 8)
replace H2FF8E = . if (H2FF8E == 6 | H2FF8E == 7 | H2FF8E == 8)
replace H2FF9E = . if (H2FF9E == 6 | H2FF9E == 7 | H2FF9E == 8)
replace H2FF11E = . if (H2FF11E == 6 | H2FF11E == 7 | H2FF11E == 8)
replace H2FF12E = . if (H2FF12E == 6 | H2FF12E == 7 | H2FF12E == 8)
replace H2FF13E = . if (H2FF13E == 6 | H2FF13E == 7 | H2FF13E == 8)
replace H2FF14E = . if (H2FF14E == 6 | H2FF14E == 7 | H2FF14E == 8)
replace H2FF15E = . if (H2FF15E == 6 | H2FF15E == 7 | H2FF15E == 8)
replace H2RR1 = . if (H2RR1 == 6 | H2RR1 == 7 | H2RR1 == 8)
replace H2RR2A = . if (H2RR2A == 6 | H2RR2A == 7 | H2RR2A == 8)
replace H2RR2B = . if (H2RR2B == 6 | H2RR2B == 7 | H2RR2B == 8)
replace H2RR2C = . if (H2RR2C == 6 | H2RR2C == 7 | H2RR2C == 8)
replace H2RR2D = . if (H2RR2D == 6 | H2RR2D == 7 | H2RR2D == 8)
replace H2RR4A = . if (H2RR4A == 6 | H2RR4A == 7 | H2RR4A == 8)
replace H2RR5A = . if (H2RR5A == 6 | H2RR5A == 7 | H2RR5A == 8)
replace H2RR6A = . if (H2RR6A == 6 | H2RR6A == 7 | H2RR6A == 8)
replace H2RR4B = . if (H2RR4B == 6 | H2RR4B == 7 | H2RR4B == 8)
replace H2RR5B = . if (H2RR5B == 6 | H2RR5B == 7 | H2RR5B == 8)
replace H2RR6B = . if (H2RR6B == 6 | H2RR6B == 7 | H2RR6B == 8)
replace H2RR4C = . if (H2RR4C == 6 | H2RR4C == 7 | H2RR4C == 8)
replace H2RR5C = . if (H2RR5C == 6 | H2RR5C == 7 | H2RR5C == 8)
replace H2RR6C = . if (H2RR6C == 6 | H2RR6C == 7 | H2RR6C == 8)
replace H2LR1 = . if (H2LR1 == 6 | H2LR1 == 7 | H2LR1 == 8)
replace H2LR2 = . if (H2LR2 >= 6 & H2LR2 <= 9)
replace H2LR3 = . if (H2LR3 >= 6 & H2LR3 <= 9)
replace H2LR4 = . if (H2LR4 >= 6 & H2LR4 <= 9)
replace H2CO1 = . if (H2CO1 == 2)
replace H2CO1 = . if (H2CO1 >= 6 & H2CO1 <= 9)
replace H2CO2 = . if (H2CO2 == 6 | H2CO2 == 7 | H2CO2 == 8)
replace H2CO3M = . if (H2CO3M >= 96 & H2CO3M <= 99)
replace H2CO3Y = . if (H2CO3Y == 996 | H2CO3Y == 997 | H2CO3Y == 998)
replace H2CO4 = . if (H2CO4 == 6 | H2CO4 == 7 | H2CO4 == 8)
replace H2CO5A = . if (H2CO5A == 96 | H2CO5A == 97 | H2CO5A == 98)
replace H2CO5B = . if (H2CO5B == 96 | H2CO5B == 97 | H2CO5B == 98)
replace H2CO5C = . if (H2CO5C == 96 | H2CO5C == 97 | H2CO5C == 98)
replace H2CO6M = . if (H2CO6M >= 96 & H2CO6M <= 99)
replace H2CO6Y = . if (H2CO6Y == 996 | H2CO6Y == 997 | H2CO6Y == 998)
replace H2CO7 = . if (H2CO7 == 7)
replace H2CO8A = . if (H2CO8A == 96 | H2CO8A == 97 | H2CO8A == 98)
replace H2CO8B = . if (H2CO8B == 96 | H2CO8B == 97 | H2CO8B == 98)
replace H2CO8C = . if (H2CO8C == 96 | H2CO8C == 97 | H2CO8C == 98)
replace H2CO9 = . if (H2CO9 == 6 | H2CO9 == 7 | H2CO9 == 8)
replace H2CO10 = . if (H2CO10 == 6 | H2CO10 == 7 | H2CO10 == 8)
replace H2CO11 = . if (H2CO11 == 6 | H2CO11 == 7 | H2CO11 == 8)
replace H2CO12 = . if (H2CO12 == 6 | H2CO12 == 7 | H2CO12 == 8)
replace H2CO13 = . if (H2CO13 == 6 | H2CO13 == 7 | H2CO13 == 8)
replace H2CO14 = . if (H2CO14 == 6 | H2CO14 == 7 | H2CO14 == 8)
replace H2CO15A = . if (H2CO15A == 96 | H2CO15A == 97 | H2CO15A == 98)
replace H2CO15B = . if (H2CO15B == 96 | H2CO15B == 97 | H2CO15B == 98)
replace H2CO15C = . if (H2CO15C == 96 | H2CO15C == 97 | H2CO15C == 98)
replace H2CO16 = . if (H2CO16 == 6 | H2CO16 == 7 | H2CO16 == 8)
replace H2CO17M = . if (H2CO17M >= 96 & H2CO17M <= 99)
replace H2CO17Y = . if (H2CO17Y == 996 | H2CO17Y == 997 | H2CO17Y == 998)
replace H2CO18 = . if (H2CO18 == 6 | H2CO18 == 7 | H2CO18 == 8)
replace H2CO19A = . if (H2CO19A == 6 | H2CO19A == 7 | H2CO19A == 8)
replace H2CO19B = . if (H2CO19B == 6 | H2CO19B == 7 | H2CO19B == 8)
replace H2CO19C = . if (H2CO19C == 6 | H2CO19C == 7 | H2CO19C == 8)
replace H2CO19D = . if (H2CO19D == 6 | H2CO19D == 7 | H2CO19D == 8)
replace H2CO19E = . if (H2CO19E == 6 | H2CO19E == 7 | H2CO19E == 8)
replace H2CO19F = . if (H2CO19F == 6 | H2CO19F == 7 | H2CO19F == 8)
replace H2CO19G = . if (H2CO19G == 6 | H2CO19G == 7 | H2CO19G == 8)
replace H2CO19H = . if (H2CO19H == 6 | H2CO19H == 7 | H2CO19H == 8)
replace H2CO19I = . if (H2CO19I == 6 | H2CO19I == 7 | H2CO19I == 8)
replace H2CO19J = . if (H2CO19J == 6 | H2CO19J == 7 | H2CO19J == 8)
replace H2RI1M_1 = . if (H2RI1M_1 >= 96 & H2RI1M_1 <= 99)
replace H2RI1Y_1 = . if (H2RI1Y_1 == 996 | H2RI1Y_1 == 997 | H2RI1Y_1 == 998)
replace H2RI2_1 = . if (H2RI2_1 == 96 | H2RI2_1 == 97 | H2RI2_1 == 98)
replace H2RI3_1 = . if (H2RI3_1 == 96 | H2RI3_1 == 97 | H2RI3_1 == 98)
replace H2RI4_1 = . if (H2RI4_1 == 96 | H2RI4_1 == 97 | H2RI4_1 == 98)
replace H2RI5_1 = . if (H2RI5_1 == 6 | H2RI5_1 == 7 | H2RI5_1 == 8)
replace H2RI6_1 = . if (H2RI6_1 == 6 | H2RI6_1 == 7 | H2RI6_1 == 8)
replace H2RI7A_1 = . if (H2RI7A_1 == 6 | H2RI7A_1 == 7 | H2RI7A_1 == 8)
replace H2RI7B_1 = . if (H2RI7B_1 == 6 | H2RI7B_1 == 7 | H2RI7B_1 == 8)
replace H2RI7C_1 = . if (H2RI7C_1 == 6 | H2RI7C_1 == 7 | H2RI7C_1 == 8)
replace H2RI7D_1 = . if (H2RI7D_1 == 6 | H2RI7D_1 == 7 | H2RI7D_1 == 8)
replace H2RI7E_1 = . if (H2RI7E_1 == 6 | H2RI7E_1 == 7 | H2RI7E_1 == 8)
replace H2RI7F_1 = . if (H2RI7F_1 == 6 | H2RI7F_1 == 7 | H2RI7F_1 == 8)
replace H2RI7G_1 = . if (H2RI7G_1 == 6 | H2RI7G_1 == 7 | H2RI7G_1 == 8)
replace H2RI7H_1 = . if (H2RI7H_1 == 6 | H2RI7H_1 == 7 | H2RI7H_1 == 8)
replace H2RI8_1 = . if (H2RI8_1 == 96 | H2RI8_1 == 97 | H2RI8_1 == 98)
replace H2RI9_1 = . if (H2RI9_1 == 6 | H2RI9_1 == 7 | H2RI9_1 == 8)
replace H2RI10M1 = . if (H2RI10M1 == 96 | H2RI10M1 == 97 | H2RI10M1 == 98)
replace H2RI10Y1 = . if (H2RI10Y1 == 996 | H2RI10Y1 == 997 | H2RI10Y1 == 998)
replace H2RI11_1 = . if (H2RI11_1 == 6 | H2RI11_1 == 7 | H2RI11_1 == 8)
replace H2RI12M1 = . if (H2RI12M1 == 96 | H2RI12M1 == 97 | H2RI12M1 == 98)
replace H2RI12Y1 = . if (H2RI12Y1 == 996 | H2RI12Y1 == 997 | H2RI12Y1 == 998)
replace H2RI13_1 = . if (H2RI13_1 == 6 | H2RI13_1 == 7 | H2RI13_1 == 8)
replace H2RI14M1 = . if (H2RI14M1 == 96 | H2RI14M1 == 97 | H2RI14M1 == 98)
replace H2RI14Y1 = . if (H2RI14Y1 == 996 | H2RI14Y1 == 997 | H2RI14Y1 == 998)
replace H2RI15_1 = . if (H2RI15_1 == 6 | H2RI15_1 == 7 | H2RI15_1 == 8)
replace H2RI16M1 = . if (H2RI16M1 == 96 | H2RI16M1 == 97 | H2RI16M1 == 98)
replace H2RI16Y1 = . if (H2RI16Y1 == 996 | H2RI16Y1 == 997 | H2RI16Y1 == 998)
replace H2RI17_1 = . if (H2RI17_1 == 6 | H2RI17_1 == 7 | H2RI17_1 == 8)
replace H2RI18M1 = . if (H2RI18M1 == 96 | H2RI18M1 == 97 | H2RI18M1 == 98)
replace H2RI18Y1 = . if (H2RI18Y1 == 996 | H2RI18Y1 == 997 | H2RI18Y1 == 998)
replace H2RI19_1 = . if (H2RI19_1 == 6 | H2RI19_1 == 7 | H2RI19_1 == 8)
replace H2RI20M1 = . if (H2RI20M1 == 96 | H2RI20M1 == 97 | H2RI20M1 == 98)
replace H2RI20Y1 = . if (H2RI20Y1 == 996 | H2RI20Y1 == 997 | H2RI20Y1 == 998)
replace H2RI21_1 = . if (H2RI21_1 == 6 | H2RI21_1 == 7 | H2RI21_1 == 8)
replace H2RI22_1 = . if (H2RI22_1 == 6 | H2RI22_1 == 7 | H2RI22_1 == 8)
replace H2RI23_1 = . if (H2RI23_1 == 6 | H2RI23_1 == 7 | H2RI23_1 == 8)
replace H2RI24_1 = . if (H2RI24_1 == 6 | H2RI24_1 == 7 | H2RI24_1 == 8)
replace H2RI25_1 = . if (H2RI25_1 == 6 | H2RI25_1 == 7 | H2RI25_1 == 8)
replace H2RI26_1 = . if (H2RI26_1 == 96 | H2RI26_1 == 97 | H2RI26_1 == 98)
replace H2RI27_1 = . if (H2RI27_1 == 96 | H2RI27_1 == 97 | H2RI27_1 == 98)
replace H2RI28_1 = . if (H2RI28_1 == 6 | H2RI28_1 == 7 | H2RI28_1 == 8)
replace H2RI29A1 = . if (H2RI29A1 == 6 | H2RI29A1 == 7 | H2RI29A1 == 8)
replace H2RI29B1 = . if (H2RI29B1 == 6 | H2RI29B1 == 7 | H2RI29B1 == 8)
replace H2RI29C1 = . if (H2RI29C1 == 6 | H2RI29C1 == 7 | H2RI29C1 == 8)
replace H2RI29D1 = . if (H2RI29D1 == 6 | H2RI29D1 == 7 | H2RI29D1 == 8)
replace H2RI29E1 = . if (H2RI29E1 == 6 | H2RI29E1 == 7 | H2RI29E1 == 8)
replace H2RI29F1 = . if (H2RI29F1 == 6 | H2RI29F1 == 7 | H2RI29F1 == 8)
replace H2RI30A1 = . if (H2RI30A1 == 6 | H2RI30A1 == 7 | H2RI30A1 == 8)
replace H2RI30B1 = . if (H2RI30B1 == 6 | H2RI30B1 == 7 | H2RI30B1 == 8)
replace H2RI30C1 = . if (H2RI30C1 == 6 | H2RI30C1 == 7 | H2RI30C1 == 8)
replace H2RI30D1 = . if (H2RI30D1 == 6 | H2RI30D1 == 7 | H2RI30D1 == 8)
replace H2RI30E1 = . if (H2RI30E1 == 6 | H2RI30E1 == 7 | H2RI30E1 == 8)
replace H2RI31A1 = . if (H2RI31A1 == 6 | H2RI31A1 == 7 | H2RI31A1 == 8)
replace H2RI31B1 = . if (H2RI31B1 == 6 | H2RI31B1 == 7 | H2RI31B1 == 8)
replace H2RI31C1 = . if (H2RI31C1 == 6 | H2RI31C1 == 7 | H2RI31C1 == 8)
replace H2RI31D1 = . if (H2RI31D1 == 6 | H2RI31D1 == 7 | H2RI31D1 == 8)
replace H2RI31E1 = . if (H2RI31E1 == 6 | H2RI31E1 == 7 | H2RI31E1 == 8)
replace H2RI31F1 = . if (H2RI31F1 == 6 | H2RI31F1 == 7 | H2RI31F1 == 8)
replace H2RI31G1 = . if (H2RI31G1 == 6 | H2RI31G1 == 7 | H2RI31G1 == 8)
replace H2RI32_1 = . if (H2RI32_1 == 6 | H2RI32_1 == 7 | H2RI32_1 == 8)
replace H2RI33A1 = . if (H2RI33A1 == 6 | H2RI33A1 == 7 | H2RI33A1 == 8)
replace H2RI33B1 = . if (H2RI33B1 == 6 | H2RI33B1 == 7 | H2RI33B1 == 8)
replace H2RI33C1 = . if (H2RI33C1 == 6 | H2RI33C1 == 7 | H2RI33C1 == 8)
replace H2RI33D1 = . if (H2RI33D1 == 6 | H2RI33D1 == 7 | H2RI33D1 == 8)
replace H2RI33E1 = . if (H2RI33E1 == 6 | H2RI33E1 == 7 | H2RI33E1 == 8)
replace H2RI33F1 = . if (H2RI33F1 == 6 | H2RI33F1 == 7 | H2RI33F1 == 8)
replace H2RI33G1 = . if (H2RI33G1 == 6 | H2RI33G1 == 7 | H2RI33G1 == 8)
replace H2RI33H1 = . if (H2RI33H1 == 6 | H2RI33H1 == 7 | H2RI33H1 == 8)
replace H2RI33I1 = . if (H2RI33I1 == 6 | H2RI33I1 == 7 | H2RI33I1 == 8)
replace H2RI33J1 = . if (H2RI33J1 == 6 | H2RI33J1 == 7 | H2RI33J1 == 8)
replace H2RI33K1 = . if (H2RI33K1 == 6 | H2RI33K1 == 7 | H2RI33K1 == 8)
replace H2RI33L1 = . if (H2RI33L1 == 6 | H2RI33L1 == 7 | H2RI33L1 == 8)
replace H2RI33M1 = . if (H2RI33M1 == 6 | H2RI33M1 == 7 | H2RI33M1 == 8)
replace H2RI33N1 = . if (H2RI33N1 == 6 | H2RI33N1 == 7 | H2RI33N1 == 8)
replace H2RI33O1 = . if (H2RI33O1 == 6 | H2RI33O1 == 7 | H2RI33O1 == 8)
replace H2RI34A1 = . if (H2RI34A1 == 97)
replace H2RI34B1 = . if (H2RI34B1 == 97)
replace H2RI34C1 = . if (H2RI34C1 == 97)
replace H2RI34D1 = . if (H2RI34D1 == 97)
replace H2RI34E1 = . if (H2RI34E1 == 97)
replace H2RI34F1 = . if (H2RI34F1 == 97)
replace H2RI34G1 = . if (H2RI34G1 == 97)
replace H2RI34H1 = . if (H2RI34H1 == 97)
replace H2RI34I1 = . if (H2RI34I1 == 97)
replace H2RI34J1 = . if (H2RI34J1 == 97)
replace H2RI34K1 = . if (H2RI34K1 == 97)
replace H2RI34L1 = . if (H2RI34L1 == 97)
replace H2RI34M1 = . if (H2RI34M1 == 97)
replace H2RI34N1 = . if (H2RI34N1 == 97)
replace H2RI34O1 = . if (H2RI34O1 == 97)
replace H2RI35_1 = . if (H2RI35_1 == 6 | H2RI35_1 == 7 | H2RI35_1 == 8)
replace H2RI36_1 = . if (H2RI36_1 == 6 | H2RI36_1 == 7 | H2RI36_1 == 8)
replace H2RI37M1 = . if (H2RI37M1 == 96 | H2RI37M1 == 97 | H2RI37M1 == 98)
replace H2RI37Y1 = . if (H2RI37Y1 == 996 | H2RI37Y1 == 997 | H2RI37Y1 == 998)
replace H2RI38M1 = . if (H2RI38M1 == 96 | H2RI38M1 == 97 | H2RI38M1 == 98)
replace H2RI38Y1 = . if (H2RI38Y1 == 996 | H2RI38Y1 == 997 | H2RI38Y1 == 998)
replace H2RI39_1 = . if (H2RI39_1 == 6 | H2RI39_1 == 7 | H2RI39_1 == 8)
replace H2RI40_1 = . if (H2RI40_1 == 6 | H2RI40_1 == 7 | H2RI40_1 == 8)
replace H2RI41A1 = . if (H2RI41A1 == 96 | H2RI41A1 == 97 | H2RI41A1 == 98)
replace H2RI41B1 = . if (H2RI41B1 == 96 | H2RI41B1 == 97 | H2RI41B1 == 98)
replace H2RI41C1 = . if (H2RI41C1 == 96 | H2RI41C1 == 97 | H2RI41C1 == 98)
replace H2RI42_1 = . if (H2RI42_1 == 6 | H2RI42_1 == 7 | H2RI42_1 == 8)
replace H2RI43_1 = . if (H2RI43_1 == 6 | H2RI43_1 == 7 | H2RI43_1 == 8)
replace H2RI44_1 = . if (H2RI44_1 == 6 | H2RI44_1 == 7 | H2RI44_1 == 8)
replace H2RI45A1 = . if (H2RI45A1 == 96 | H2RI45A1 == 97 | H2RI45A1 == 98)
replace H2RI45B1 = . if (H2RI45B1 == 96 | H2RI45B1 == 97 | H2RI45B1 == 98)
replace H2RI45C1 = . if (H2RI45C1 == 96 | H2RI45C1 == 97 | H2RI45C1 == 98)
replace H2RI46_1 = . if (H2RI46_1 == 6 | H2RI46_1 == 7 | H2RI46_1 == 8)
replace H2RI47_1 = . if (H2RI47_1 == 6 | H2RI47_1 == 7 | H2RI47_1 == 8)
replace H2RI48_1 = . if (H2RI48_1 == 6 | H2RI48_1 == 7 | H2RI48_1 == 8)
replace H2RI49_1 = . if (H2RI49_1 == 6 | H2RI49_1 == 7 | H2RI49_1 == 8)
replace H2RI50A1 = . if (H2RI50A1 == 96 | H2RI50A1 == 97 | H2RI50A1 == 98)
replace H2RI50B1 = . if (H2RI50B1 == 96 | H2RI50B1 == 97 | H2RI50B1 == 98)
replace H2RI50C1 = . if (H2RI50C1 == 96 | H2RI50C1 == 97 | H2RI50C1 == 98)
replace H2RI51_1 = . if (H2RI51_1 == 6 | H2RI51_1 == 7 | H2RI51_1 == 8)
replace H2RI52_1 = . if (H2RI52_1 == 6 | H2RI52_1 == 7 | H2RI52_1 == 8)
replace H2RI53_1 = . if (H2RI53_1 == 996 | H2RI53_1 == 997 | H2RI53_1 == 998)
replace H2RI54_1 = . if (H2RI54_1 == 6 | H2RI54_1 == 7 | H2RI54_1 == 8)
replace H2RI55M1 = . if (H2RI55M1 == 96 | H2RI55M1 == 97 | H2RI55M1 == 98)
replace H2RI55Y1 = . if (H2RI55Y1 == 996 | H2RI55Y1 == 997 | H2RI55Y1 == 998)
replace H2RI56_1 = . if (H2RI56_1 == 6 | H2RI56_1 == 7 | H2RI56_1 == 8)
replace H2RI57M1 = . if (H2RI57M1 == 96 | H2RI57M1 == 97 | H2RI57M1 == 98)
replace H2RI57Y1 = . if (H2RI57Y1 == 996 | H2RI57Y1 == 997 | H2RI57Y1 == 998)
replace H2RI58_1 = . if (H2RI58_1 == 996 | H2RI58_1 == 997 | H2RI58_1 == 998)
replace H2RI59_1 = . if (H2RI59_1 == 6 | H2RI59_1 == 7 | H2RI59_1 == 8)
replace H2RI60_1 = . if (H2RI60_1 == 6 | H2RI60_1 == 7 | H2RI60_1 == 8)
replace H2RI61M1 = . if (H2RI61M1 == 96 | H2RI61M1 == 97 | H2RI61M1 == 98)
replace H2RI61Y1 = . if (H2RI61Y1 == 996 | H2RI61Y1 == 997 | H2RI61Y1 == 998)
replace H2RI62_1 = . if (H2RI62_1 == 6 | H2RI62_1 == 7 | H2RI62_1 == 8)
replace H2RI63M1 = . if (H2RI63M1 == 96 | H2RI63M1 == 97 | H2RI63M1 == 98)
replace H2RI63Y1 = . if (H2RI63Y1 == 996 | H2RI63Y1 == 997 | H2RI63Y1 == 998)
replace H2RI64_1 = . if (H2RI64_1 == 997)
replace H2RI65_1 = . if (H2RI65_1 == 7)
replace H2RI66_1 = . if (H2RI66_1 == 6 | H2RI66_1 == 7 | H2RI66_1 == 8)
replace H2RI67M1 = . if (H2RI67M1 == 96 | H2RI67M1 == 97 | H2RI67M1 == 98)
replace H2RI67Y1 = . if (H2RI67Y1 == 996 | H2RI67Y1 == 997 | H2RI67Y1 == 998)
replace H2RI68_1 = . if (H2RI68_1 == 6 | H2RI68_1 == 7 | H2RI68_1 == 8)
replace H2RI69M1 = . if (H2RI69M1 == 96 | H2RI69M1 == 97 | H2RI69M1 == 98)
replace H2RI69Y1 = . if (H2RI69Y1 == 996 | H2RI69Y1 == 997 | H2RI69Y1 == 998)
replace H2RI70_1 = . if (H2RI70_1 == 997)
replace H2RI71_1 = . if (H2RI71_1 == 7)
replace H2RI1M_2 = . if (H2RI1M_2 == 96 | H2RI1M_2 == 97 | H2RI1M_2 == 98)
replace H2RI1Y_2 = . if (H2RI1Y_2 == 996 | H2RI1Y_2 == 997 | H2RI1Y_2 == 998)
replace H2RI2_2 = . if (H2RI2_2 >= 96 & H2RI2_2 <= 99)
replace H2RI3_2 = . if (H2RI3_2 >= 96 & H2RI3_2 <= 99)
replace H2RI4_2 = . if (H2RI4_2 >= 96 & H2RI4_2 <= 99)
replace H2RI5_2 = . if (H2RI5_2 >= 6 & H2RI5_2 <= 9)
replace H2RI6_2 = . if (H2RI6_2 >= 6 & H2RI6_2 <= 9)
replace H2RI7A_2 = . if (H2RI7A_2 >= 6 & H2RI7A_2 <= 9)
replace H2RI7B_2 = . if (H2RI7B_2 >= 6 & H2RI7B_2 <= 9)
replace H2RI7C_2 = . if (H2RI7C_2 >= 6 & H2RI7C_2 <= 9)
replace H2RI7D_2 = . if (H2RI7D_2 >= 6 & H2RI7D_2 <= 9)
replace H2RI7E_2 = . if (H2RI7E_2 >= 6 & H2RI7E_2 <= 9)
replace H2RI7F_2 = . if (H2RI7F_2 >= 6 & H2RI7F_2 <= 9)
replace H2RI7G_2 = . if (H2RI7G_2 >= 6 & H2RI7G_2 <= 9)
replace H2RI7H_2 = . if (H2RI7H_2 >= 6 & H2RI7H_2 <= 9)
replace H2RI8_2 = . if (H2RI8_2 >= 96 & H2RI8_2 <= 99)
replace H2RI9_2 = . if (H2RI9_2 >= 6 & H2RI9_2 <= 9)
replace H2RI10M2 = . if (H2RI10M2 >= 96 & H2RI10M2 <= 99)
replace H2RI10Y2 = . if (H2RI10Y2 >= 996 & H2RI10Y2 <= 999)
replace H2RI11_2 = . if (H2RI11_2 >= 6 & H2RI11_2 <= 9)
replace H2RI12M2 = . if (H2RI12M2 >= 96 & H2RI12M2 <= 99)
replace H2RI12Y2 = . if (H2RI12Y2 >= 996 & H2RI12Y2 <= 999)
replace H2RI13_2 = . if (H2RI13_2 >= 6 & H2RI13_2 <= 9)
replace H2RI14M2 = . if (H2RI14M2 >= 96 & H2RI14M2 <= 99)
replace H2RI14Y2 = . if (H2RI14Y2 >= 996 & H2RI14Y2 <= 999)
replace H2RI15_2 = . if (H2RI15_2 >= 6 & H2RI15_2 <= 9)
replace H2RI16M2 = . if (H2RI16M2 >= 96 & H2RI16M2 <= 99)
replace H2RI16Y2 = . if (H2RI16Y2 >= 996 & H2RI16Y2 <= 999)
replace H2RI17_2 = . if (H2RI17_2 >= 6 & H2RI17_2 <= 9)
replace H2RI18M2 = . if (H2RI18M2 >= 96 & H2RI18M2 <= 99)
replace H2RI18Y2 = . if (H2RI18Y2 >= 996 & H2RI18Y2 <= 999)
replace H2RI19_2 = . if (H2RI19_2 >= 6 & H2RI19_2 <= 9)
replace H2RI20M2 = . if (H2RI20M2 >= 96 & H2RI20M2 <= 99)
replace H2RI20Y2 = . if (H2RI20Y2 >= 996 & H2RI20Y2 <= 999)
replace H2RI21_2 = . if (H2RI21_2 == 6 | H2RI21_2 == 7 | H2RI21_2 == 8)
replace H2RI22_2 = . if (H2RI22_2 >= 6 & H2RI22_2 <= 9)
replace H2RI23_2 = . if (H2RI23_2 >= 6 & H2RI23_2 <= 9)
replace H2RI24_2 = . if (H2RI24_2 >= 6 & H2RI24_2 <= 9)
replace H2RI25_2 = . if (H2RI25_2 >= 6 & H2RI25_2 <= 9)
replace H2RI26_2 = . if (H2RI26_2 == 96 | H2RI26_2 == 97 | H2RI26_2 == 98)
replace H2RI27_2 = . if (H2RI27_2 == 96 | H2RI27_2 == 97 | H2RI27_2 == 98)
replace H2RI28_2 = . if (H2RI28_2 == 6 | H2RI28_2 == 7 | H2RI28_2 == 8)
replace H2RI29A2 = . if (H2RI29A2 == 6 | H2RI29A2 == 7 | H2RI29A2 == 8)
replace H2RI29B2 = . if (H2RI29B2 == 6 | H2RI29B2 == 7 | H2RI29B2 == 8)
replace H2RI29C2 = . if (H2RI29C2 == 6 | H2RI29C2 == 7 | H2RI29C2 == 8)
replace H2RI29D2 = . if (H2RI29D2 == 6 | H2RI29D2 == 7 | H2RI29D2 == 8)
replace H2RI29E2 = . if (H2RI29E2 == 6 | H2RI29E2 == 7 | H2RI29E2 == 8)
replace H2RI29F2 = . if (H2RI29F2 == 6 | H2RI29F2 == 7 | H2RI29F2 == 8)
replace H2RI30A2 = . if (H2RI30A2 == 6 | H2RI30A2 == 7 | H2RI30A2 == 8)
replace H2RI30B2 = . if (H2RI30B2 == 6 | H2RI30B2 == 7 | H2RI30B2 == 8)
replace H2RI30C2 = . if (H2RI30C2 == 6 | H2RI30C2 == 7 | H2RI30C2 == 8)
replace H2RI30D2 = . if (H2RI30D2 == 6 | H2RI30D2 == 7 | H2RI30D2 == 8)
replace H2RI30E2 = . if (H2RI30E2 == 6 | H2RI30E2 == 7 | H2RI30E2 == 8)
replace H2RI31A2 = . if (H2RI31A2 == 6 | H2RI31A2 == 7 | H2RI31A2 == 8)
replace H2RI31B2 = . if (H2RI31B2 == 6 | H2RI31B2 == 7 | H2RI31B2 == 8)
replace H2RI31C2 = . if (H2RI31C2 == 6 | H2RI31C2 == 7 | H2RI31C2 == 8)
replace H2RI31D2 = . if (H2RI31D2 == 6 | H2RI31D2 == 7 | H2RI31D2 == 8)
replace H2RI31E2 = . if (H2RI31E2 == 6 | H2RI31E2 == 7 | H2RI31E2 == 8)
replace H2RI31F2 = . if (H2RI31F2 == 6 | H2RI31F2 == 7 | H2RI31F2 == 8)
replace H2RI31G2 = . if (H2RI31G2 == 6 | H2RI31G2 == 7 | H2RI31G2 == 8)
replace H2RI32_2 = . if (H2RI32_2 == 6 | H2RI32_2 == 7 | H2RI32_2 == 8)
replace H2RI33A2 = . if (H2RI33A2 == 6 | H2RI33A2 == 7 | H2RI33A2 == 8)
replace H2RI33B2 = . if (H2RI33B2 == 6 | H2RI33B2 == 7 | H2RI33B2 == 8)
replace H2RI33C2 = . if (H2RI33C2 == 6 | H2RI33C2 == 7 | H2RI33C2 == 8)
replace H2RI33D2 = . if (H2RI33D2 == 6 | H2RI33D2 == 7 | H2RI33D2 == 8)
replace H2RI33E2 = . if (H2RI33E2 == 6 | H2RI33E2 == 7 | H2RI33E2 == 8)
replace H2RI33F2 = . if (H2RI33F2 == 6 | H2RI33F2 == 7 | H2RI33F2 == 8)
replace H2RI33G2 = . if (H2RI33G2 == 6 | H2RI33G2 == 7 | H2RI33G2 == 8)
replace H2RI33H2 = . if (H2RI33H2 == 6 | H2RI33H2 == 7 | H2RI33H2 == 8)
replace H2RI33I2 = . if (H2RI33I2 == 6 | H2RI33I2 == 7 | H2RI33I2 == 8)
replace H2RI33J2 = . if (H2RI33J2 == 6 | H2RI33J2 == 7 | H2RI33J2 == 8)
replace H2RI33K2 = . if (H2RI33K2 == 6 | H2RI33K2 == 7 | H2RI33K2 == 8)
replace H2RI33L2 = . if (H2RI33L2 == 6 | H2RI33L2 == 7 | H2RI33L2 == 8)
replace H2RI33M2 = . if (H2RI33M2 == 6 | H2RI33M2 == 7 | H2RI33M2 == 8)
replace H2RI33N2 = . if (H2RI33N2 == 6 | H2RI33N2 == 7 | H2RI33N2 == 8)
replace H2RI33O2 = . if (H2RI33O2 == 6 | H2RI33O2 == 7 | H2RI33O2 == 8)
replace H2RI34A2 = . if (H2RI34A2 == 97)
replace H2RI34B2 = . if (H2RI34B2 == 97)
replace H2RI34C2 = . if (H2RI34C2 == 97)
replace H2RI34D2 = . if (H2RI34D2 == 97)
replace H2RI34E2 = . if (H2RI34E2 == 97)
replace H2RI34F2 = . if (H2RI34F2 == 97)
replace H2RI34G2 = . if (H2RI34G2 == 97)
replace H2RI34H2 = . if (H2RI34H2 == 97)
replace H2RI34I2 = . if (H2RI34I2 == 97)
replace H2RI34J2 = . if (H2RI34J2 == 97)
replace H2RI34K2 = . if (H2RI34K2 == 97)
replace H2RI34L2 = . if (H2RI34L2 == 97)
replace H2RI34M2 = . if (H2RI34M2 == 97)
replace H2RI34N2 = . if (H2RI34N2 == 97)
replace H2RI34O2 = . if (H2RI34O2 == 97)
replace H2RI35_2 = . if (H2RI35_2 == 6 | H2RI35_2 == 7 | H2RI35_2 == 8)
replace H2RI36_2 = . if (H2RI36_2 == 6 | H2RI36_2 == 7 | H2RI36_2 == 8)
replace H2RI37M2 = . if (H2RI37M2 >= 96 & H2RI37M2 <= 99)
replace H2RI37Y2 = . if (H2RI37Y2 >= 996 & H2RI37Y2 <= 999)
replace H2RI38M2 = . if (H2RI38M2 >= 96 & H2RI38M2 <= 99)
replace H2RI38Y2 = . if (H2RI38Y2 >= 996 & H2RI38Y2 <= 999)
replace H2RI39_2 = . if (H2RI39_2 == 6 | H2RI39_2 == 7 | H2RI39_2 == 8)
replace H2RI40_2 = . if (H2RI40_2 == 6 | H2RI40_2 == 7 | H2RI40_2 == 8)
replace H2RI41A2 = . if (H2RI41A2 == 96 | H2RI41A2 == 97 | H2RI41A2 == 98)
replace H2RI41B2 = . if (H2RI41B2 == 96 | H2RI41B2 == 97 | H2RI41B2 == 98)
replace H2RI41C2 = . if (H2RI41C2 == 96 | H2RI41C2 == 97 | H2RI41C2 == 98)
replace H2RI42_2 = . if (H2RI42_2 == 6 | H2RI42_2 == 7 | H2RI42_2 == 8)
replace H2RI43_2 = . if (H2RI43_2 == 6 | H2RI43_2 == 7 | H2RI43_2 == 8)
replace H2RI44_2 = . if (H2RI44_2 == 6 | H2RI44_2 == 7 | H2RI44_2 == 8)
replace H2RI45A2 = . if (H2RI45A2 == 97 | H2RI45A2 == 98)
replace H2RI45B2 = . if (H2RI45B2 == 97 | H2RI45B2 == 98)
replace H2RI45C2 = . if (H2RI45C2 == 97 | H2RI45C2 == 98)
replace H2RI46_2 = . if (H2RI46_2 == 6 | H2RI46_2 == 7 | H2RI46_2 == 8)
replace H2RI47_2 = . if (H2RI47_2 == 6 | H2RI47_2 == 7 | H2RI47_2 == 8)
replace H2RI48_2 = . if (H2RI48_2 == 6 | H2RI48_2 == 7 | H2RI48_2 == 8)
replace H2RI49_2 = . if (H2RI49_2 == 6 | H2RI49_2 == 7 | H2RI49_2 == 8)
replace H2RI50A2 = . if (H2RI50A2 == 96 | H2RI50A2 == 97 | H2RI50A2 == 98)
replace H2RI50B2 = . if (H2RI50B2 == 96 | H2RI50B2 == 97 | H2RI50B2 == 98)
replace H2RI50C2 = . if (H2RI50C2 == 96 | H2RI50C2 == 97 | H2RI50C2 == 98)
replace H2RI51_2 = . if (H2RI51_2 == 6 | H2RI51_2 == 7 | H2RI51_2 == 8)
replace H2RI52_2 = . if (H2RI52_2 == 6 | H2RI52_2 == 7 | H2RI52_2 == 8)
replace H2RI53_2 = . if (H2RI53_2 == 996 | H2RI53_2 == 997 | H2RI53_2 == 998)
replace H2RI54_2 = . if (H2RI54_2 == 6 | H2RI54_2 == 7 | H2RI54_2 == 8)
replace H2RI55M2 = . if (H2RI55M2 >= 96 & H2RI55M2 <= 99)
replace H2RI55Y2 = . if (H2RI55Y2 >= 996 & H2RI55Y2 <= 999)
replace H2RI56_2 = . if (H2RI56_2 == 7 | H2RI56_2 == 8)
replace H2RI57M2 = . if (H2RI57M2 >= 96 & H2RI57M2 <= 99)
replace H2RI57Y2 = . if (H2RI57Y2 >= 996 & H2RI57Y2 <= 999)
replace H2RI58_2 = . if (H2RI58_2 == 996 | H2RI58_2 == 997 | H2RI58_2 == 998)
replace H2RI59_2 = . if (H2RI59_2 == 7)
replace H2RI60_2 = . if (H2RI60_2 == 7 | H2RI60_2 == 8)
replace H2RI61M2 = . if (H2RI61M2 >= 96 & H2RI61M2 <= 99)
replace H2RI61Y2 = . if (H2RI61Y2 >= 996 & H2RI61Y2 <= 999)
replace H2RI62_2 = . if (H2RI62_2 == 7 | H2RI62_2 == 8)
replace H2RI63M2 = . if (H2RI63M2 >= 96 & H2RI63M2 <= 99)
replace H2RI63Y2 = . if (H2RI63Y2 >= 996 & H2RI63Y2 <= 999)
replace H2RI64_2 = . if (H2RI64_2 == 997)
replace H2RI65_2 = . if (H2RI65_2 == 7)
replace H2RI66_2 = . if (H2RI66_2 == 7 | H2RI66_2 == 8)
replace H2RI67M2 = . if (H2RI67M2 >= 96 & H2RI67M2 <= 99)
replace H2RI67Y2 = . if (H2RI67Y2 >= 996 & H2RI67Y2 <= 999)
replace H2RI68_2 = . if (H2RI68_2 == 7 | H2RI68_2 == 8)
replace H2RI69M2 = . if (H2RI69M2 >= 96 & H2RI69M2 <= 99)
replace H2RI69Y2 = . if (H2RI69Y2 >= 996 & H2RI69Y2 <= 999)
replace H2RI70_2 = . if (H2RI70_2 == 997)
replace H2RI71_2 = . if (H2RI71_2 == 7)
replace H2RI1M_3 = . if (H2RI1M_3 >= 96 & H2RI1M_3 <= 99)
replace H2RI1Y_3 = . if (H2RI1Y_3 >= 996 & H2RI1Y_3 <= 999)
replace H2RI2_3 = . if (H2RI2_3 == 96 | H2RI2_3 == 97 | H2RI2_3 == 98)
replace H2RI3_3 = . if (H2RI3_3 == 96 | H2RI3_3 == 97 | H2RI3_3 == 98)
replace H2RI4_3 = . if (H2RI4_3 == 96 | H2RI4_3 == 97 | H2RI4_3 == 98)
replace H2RI5_3 = . if (H2RI5_3 == 6 | H2RI5_3 == 7 | H2RI5_3 == 8)
replace H2RI6_3 = . if (H2RI6_3 == 6 | H2RI6_3 == 7 | H2RI6_3 == 8)
replace H2RI7A_3 = . if (H2RI7A_3 >= 6 & H2RI7A_3 <= 9)
replace H2RI7B_3 = . if (H2RI7B_3 >= 6 & H2RI7B_3 <= 9)
replace H2RI7C_3 = . if (H2RI7C_3 >= 6 & H2RI7C_3 <= 9)
replace H2RI7D_3 = . if (H2RI7D_3 >= 6 & H2RI7D_3 <= 9)
replace H2RI7E_3 = . if (H2RI7E_3 >= 6 & H2RI7E_3 <= 9)
replace H2RI7F_3 = . if (H2RI7F_3 >= 6 & H2RI7F_3 <= 9)
replace H2RI7G_3 = . if (H2RI7G_3 >= 6 & H2RI7G_3 <= 9)
replace H2RI7H_3 = . if (H2RI7H_3 >= 6 & H2RI7H_3 <= 9)
replace H2RI8_3 = . if (H2RI8_3 == 96 | H2RI8_3 == 97 | H2RI8_3 == 98)
replace H2RI9_3 = . if (H2RI9_3 == 6 | H2RI9_3 == 7 | H2RI9_3 == 8)
replace H2RI10M3 = . if (H2RI10M3 == 96 | H2RI10M3 == 97 | H2RI10M3 == 98)
replace H2RI10Y3 = . if (H2RI10Y3 >= 996 & H2RI10Y3 <= 999)
replace H2RI11_3 = . if (H2RI11_3 == 6 | H2RI11_3 == 7 | H2RI11_3 == 8)
replace H2RI12M3 = . if (H2RI12M3 == 96 | H2RI12M3 == 97 | H2RI12M3 == 98)
replace H2RI12Y3 = . if (H2RI12Y3 >= 996 & H2RI12Y3 <= 999)
replace H2RI13_3 = . if (H2RI13_3 == 6 | H2RI13_3 == 7 | H2RI13_3 == 8)
replace H2RI14M3 = . if (H2RI14M3 == 96 | H2RI14M3 == 97 | H2RI14M3 == 98)
replace H2RI14Y3 = . if (H2RI14Y3 >= 996 & H2RI14Y3 <= 999)
replace H2RI15_3 = . if (H2RI15_3 == 6 | H2RI15_3 == 7 | H2RI15_3 == 8)
replace H2RI16M3 = . if (H2RI16M3 == 96 | H2RI16M3 == 97 | H2RI16M3 == 98)
replace H2RI16Y3 = . if (H2RI16Y3 >= 996 & H2RI16Y3 <= 999)
replace H2RI17_3 = . if (H2RI17_3 == 6 | H2RI17_3 == 7 | H2RI17_3 == 8)
replace H2RI18M3 = . if (H2RI18M3 == 96 | H2RI18M3 == 97 | H2RI18M3 == 99)
replace H2RI18Y3 = . if (H2RI18Y3 >= 996 & H2RI18Y3 <= 999)
replace H2RI19_3 = . if (H2RI19_3 == 6 | H2RI19_3 == 7 | H2RI19_3 == 8)
replace H2RI20M3 = . if (H2RI20M3 == 96 | H2RI20M3 == 97 | H2RI20M3 == 98)
replace H2RI20Y3 = . if (H2RI20Y3 >= 996 & H2RI20Y3 <= 999)
replace H2RI21_3 = . if (H2RI21_3 == 6 | H2RI21_3 == 7 | H2RI21_3 == 8)
replace H2RI22_3 = . if (H2RI22_3 == 6 | H2RI22_3 == 7 | H2RI22_3 == 8)
replace H2RI23_3 = . if (H2RI23_3 == 6 | H2RI23_3 == 7 | H2RI23_3 == 8)
replace H2RI24_3 = . if (H2RI24_3 == 6 | H2RI24_3 == 7 | H2RI24_3 == 8)
replace H2RI25_3 = . if (H2RI25_3 == 6 | H2RI25_3 == 7 | H2RI25_3 == 8)
replace H2RI26_3 = . if (H2RI26_3 == 96 | H2RI26_3 == 97 | H2RI26_3 == 98)
replace H2RI27_3 = . if (H2RI27_3 == 96 | H2RI27_3 == 97 | H2RI27_3 == 98)
replace H2RI28_3 = . if (H2RI28_3 == 6 | H2RI28_3 == 7 | H2RI28_3 == 8)
replace H2RI29A3 = . if (H2RI29A3 >= 6 & H2RI29A3 <= 9)
replace H2RI29B3 = . if (H2RI29B3 >= 6 & H2RI29B3 <= 9)
replace H2RI29C3 = . if (H2RI29C3 >= 6 & H2RI29C3 <= 9)
replace H2RI29D3 = . if (H2RI29D3 >= 6 & H2RI29D3 <= 9)
replace H2RI29E3 = . if (H2RI29E3 >= 6 & H2RI29E3 <= 9)
replace H2RI29F3 = . if (H2RI29F3 >= 6 & H2RI29F3 <= 9)
replace H2RI30A3 = . if (H2RI30A3 >= 6 & H2RI30A3 <= 9)
replace H2RI30B3 = . if (H2RI30B3 >= 6 & H2RI30B3 <= 9)
replace H2RI30C3 = . if (H2RI30C3 >= 6 & H2RI30C3 <= 9)
replace H2RI30D3 = . if (H2RI30D3 >= 6 & H2RI30D3 <= 9)
replace H2RI30E3 = . if (H2RI30E3 >= 6 & H2RI30E3 <= 9)
replace H2RI31A3 = . if (H2RI31A3 >= 6 & H2RI31A3 <= 9)
replace H2RI31B3 = . if (H2RI31B3 >= 6 & H2RI31B3 <= 9)
replace H2RI31C3 = . if (H2RI31C3 >= 6 & H2RI31C3 <= 9)
replace H2RI31D3 = . if (H2RI31D3 >= 6 & H2RI31D3 <= 9)
replace H2RI31E3 = . if (H2RI31E3 >= 6 & H2RI31E3 <= 9)
replace H2RI31F3 = . if (H2RI31F3 >= 6 & H2RI31F3 <= 9)
replace H2RI31G3 = . if (H2RI31G3 >= 6 & H2RI31G3 <= 9)
replace H2RI32_3 = . if (H2RI32_3 == 6 | H2RI32_3 == 7 | H2RI32_3 == 8)
replace H2RI33A3 = . if (H2RI33A3 == 6 | H2RI33A3 == 7 | H2RI33A3 == 8)
replace H2RI33B3 = . if (H2RI33B3 == 6 | H2RI33B3 == 7 | H2RI33B3 == 8)
replace H2RI33C3 = . if (H2RI33C3 == 6 | H2RI33C3 == 7 | H2RI33C3 == 8)
replace H2RI33D3 = . if (H2RI33D3 == 6 | H2RI33D3 == 7 | H2RI33D3 == 8)
replace H2RI33E3 = . if (H2RI33E3 == 6 | H2RI33E3 == 7 | H2RI33E3 == 8)
replace H2RI33F3 = . if (H2RI33F3 == 6 | H2RI33F3 == 7 | H2RI33F3 == 8)
replace H2RI33G3 = . if (H2RI33G3 == 6 | H2RI33G3 == 7 | H2RI33G3 == 8)
replace H2RI33H3 = . if (H2RI33H3 == 6 | H2RI33H3 == 7 | H2RI33H3 == 8)
replace H2RI33I3 = . if (H2RI33I3 == 6 | H2RI33I3 == 7 | H2RI33I3 == 8)
replace H2RI33J3 = . if (H2RI33J3 == 6 | H2RI33J3 == 7 | H2RI33J3 == 8)
replace H2RI33K3 = . if (H2RI33K3 == 6 | H2RI33K3 == 7 | H2RI33K3 == 8)
replace H2RI33L3 = . if (H2RI33L3 == 6 | H2RI33L3 == 7 | H2RI33L3 == 8)
replace H2RI33M3 = . if (H2RI33M3 == 6 | H2RI33M3 == 7 | H2RI33M3 == 8)
replace H2RI33N3 = . if (H2RI33N3 == 6 | H2RI33N3 == 7 | H2RI33N3 == 8)
replace H2RI33O3 = . if (H2RI33O3 == 6 | H2RI33O3 == 7 | H2RI33O3 == 8)
replace H2RI34A3 = . if (H2RI34A3 == 97)
replace H2RI34B3 = . if (H2RI34B3 == 97)
replace H2RI34C3 = . if (H2RI34C3 == 97)
replace H2RI34D3 = . if (H2RI34D3 == 97)
replace H2RI34E3 = . if (H2RI34E3 == 97)
replace H2RI34F3 = . if (H2RI34F3 == 97)
replace H2RI34G3 = . if (H2RI34G3 == 97)
replace H2RI34H3 = . if (H2RI34H3 == 97)
replace H2RI34I3 = . if (H2RI34I3 == 97)
replace H2RI34J3 = . if (H2RI34J3 == 97)
replace H2RI34K3 = . if (H2RI34K3 == 97)
replace H2RI34L3 = . if (H2RI34L3 == 97)
replace H2RI34M3 = . if (H2RI34M3 == 97)
replace H2RI34N3 = . if (H2RI34N3 == 97)
replace H2RI34O3 = . if (H2RI34O3 == 97)
replace H2RI35_3 = . if (H2RI35_3 == 6 | H2RI35_3 == 7 | H2RI35_3 == 8)
replace H2RI36_3 = . if (H2RI36_3 == 6 | H2RI36_3 == 7 | H2RI36_3 == 8)
replace H2RI37M3 = . if (H2RI37M3 == 96 | H2RI37M3 == 97 | H2RI37M3 == 98)
replace H2RI37Y3 = . if (H2RI37Y3 >= 996 & H2RI37Y3 <= 999)
replace H2RI38M3 = . if (H2RI38M3 == 96 | H2RI38M3 == 97 | H2RI38M3 == 98)
replace H2RI38Y3 = . if (H2RI38Y3 >= 996 & H2RI38Y3 <= 999)
replace H2RI39_3 = . if (H2RI39_3 == 6 | H2RI39_3 == 7 | H2RI39_3 == 8)
replace H2RI40_3 = . if (H2RI40_3 == 7 | H2RI40_3 == 8)
replace H2RI41A3 = . if (H2RI41A3 == 97 | H2RI41A3 == 98)
replace H2RI41B3 = . if (H2RI41B3 == 97 | H2RI41B3 == 98)
replace H2RI41C3 = . if (H2RI41C3 == 97 | H2RI41C3 == 98)
replace H2RI42_3 = . if (H2RI42_3 == 6 | H2RI42_3 == 7 | H2RI42_3 == 8)
replace H2RI43_3 = . if (H2RI43_3 == 6 | H2RI43_3 == 7 | H2RI43_3 == 8)
replace H2RI44_3 = . if (H2RI44_3 == 6 | H2RI44_3 == 7 | H2RI44_3 == 8)
replace H2RI45A3 = . if (H2RI45A3 == 97 | H2RI45A3 == 98)
replace H2RI45B3 = . if (H2RI45B3 == 97 | H2RI45B3 == 98)
replace H2RI45C3 = . if (H2RI45C3 == 97 | H2RI45C3 == 98)
replace H2RI46_3 = . if (H2RI46_3 == 6 | H2RI46_3 == 7 | H2RI46_3 == 8)
replace H2RI47_3 = . if (H2RI47_3 == 6 | H2RI47_3 == 7 | H2RI47_3 == 8)
replace H2RI48_3 = . if (H2RI48_3 == 6 | H2RI48_3 == 7 | H2RI48_3 == 8)
replace H2RI49_3 = . if (H2RI49_3 == 6 | H2RI49_3 == 7 | H2RI49_3 == 8)
replace H2RI50A3 = . if (H2RI50A3 == 97 | H2RI50A3 == 98)
replace H2RI50B3 = . if (H2RI50B3 == 97 | H2RI50B3 == 98)
replace H2RI50C3 = . if (H2RI50C3 == 97 | H2RI50C3 == 98)
replace H2RI51_3 = . if (H2RI51_3 == 7 | H2RI51_3 == 8)
replace H2RI52_3 = . if (H2RI52_3 == 6 | H2RI52_3 == 7 | H2RI52_3 == 8)
replace H2RI53_3 = . if (H2RI53_3 == 996 | H2RI53_3 == 997 | H2RI53_3 == 998)
replace H2RI54_3 = . if (H2RI54_3 == 7 | H2RI54_3 == 8)
replace H2RI55M3 = . if (H2RI55M3 == 96 | H2RI55M3 == 97 | H2RI55M3 == 98)
replace H2RI55Y3 = . if (H2RI55Y3 == 997 | H2RI55Y3 == 998)
replace H2RI56_3 = . if (H2RI56_3 == 7 | H2RI56_3 == 8)
replace H2RI57M3 = . if (H2RI57M3 == 96 | H2RI57M3 == 97 | H2RI57M3 == 98)
replace H2RI57Y3 = . if (H2RI57Y3 == 997 | H2RI57Y3 == 998)
replace H2RI58_3 = . if (H2RI58_3 == 997 | H2RI58_3 == 998)
replace H2RI59_3 = . if (H2RI59_3 == 7)
replace H2RI60_3 = . if (H2RI60_3 == 7 | H2RI60_3 == 8)
replace H2RI61M3 = . if (H2RI61M3 == 96 | H2RI61M3 == 97 | H2RI61M3 == 98)
replace H2RI61Y3 = . if (H2RI61Y3 == 997)
replace H2RI62_3 = . if (H2RI62_3 == 7 | H2RI62_3 == 8)
replace H2RI63M3 = . if (H2RI63M3 == 96 | H2RI63M3 == 97 | H2RI63M3 == 98)
replace H2RI63Y3 = . if (H2RI63Y3 == 997)
replace H2RI64_3 = . if (H2RI64_3 == 997)
replace H2RI65_3 = . if (H2RI65_3 == 7)
replace H2RI66_3 = . if (H2RI66_3 == 7 | H2RI66_3 == 8)
replace H2RI67M3 = . if (H2RI67M3 == 96 | H2RI67M3 == 97 | H2RI67M3 == 98)
replace H2RI67Y3 = . if (H2RI67Y3 == 997)
replace H2RI68_3 = . if (H2RI68_3 == 7 | H2RI68_3 == 8)
replace H2RI69M3 = . if (H2RI69M3 == 96 | H2RI69M3 == 97 | H2RI69M3 == 98)
replace H2RI69Y3 = . if (H2RI69Y3 == 997)
replace H2RI70_3 = . if (H2RI70_3 == 997)
replace H2RI71_3 = . if (H2RI71_3 == 7)
replace H2NR1 = . if (H2NR1 == 6 | H2NR1 == 8 | H2NR1 == 9)
replace H2NR2 = . if (H2NR2 == 6 | H2NR2 == 8 | H2NR2 == 9)
replace H2NR4 = . if (H2NR4 >= 996 & H2NR4 <= 999)
replace H2NR5 = . if (H2NR5 == 6 | H2NR5 == 8 | H2NR5 == 9)
replace H2NR6 = . if (H2NR6 == 6 | H2NR6 == 7 | H2NR6 == 8)
replace H2NR7 = . if (H2NR7 == 6 | H2NR7 == 7 | H2NR7 == 8)
replace H2NR8 = . if (H2NR8 >= 996 & H2NR8 <= 999)
replace H2NR9 = . if (H2NR9 >= 996 & H2NR9 <= 999)
replace H2NR10 = . if (H2NR10 == 7 | H2NR10 == 8)
replace H2NR11 = . if (H2NR11 == 96 | H2NR11 == 97 | H2NR11 == 98)
replace H2NR12 = . if (H2NR12 == 96 | H2NR12 == 97 | H2NR12 == 98)
replace H2NR15A = . if (H2NR15A == 6 | H2NR15A == 7 | H2NR15A == 8)
replace H2NR15B = . if (H2NR15B == 6 | H2NR15B == 7 | H2NR15B == 8)
replace H2NR16_1 = . if (H2NR16_1 == 6 | H2NR16_1 == 7 | H2NR16_1 == 8)
replace H2NR17_1 = . if (H2NR17_1 == 6 | H2NR17_1 == 7 | H2NR17_1 == 8)
replace H2NR18_1 = . if (H2NR18_1 == 6 | H2NR18_1 == 7 | H2NR18_1 == 8)
replace H2RX1M_1 = . if (H2RX1M_1 == 96 | H2RX1M_1 == 97 | H2RX1M_1 == 98)
replace H2RX1Y_1 = . if (H2RX1Y_1 == 996 | H2RX1Y_1 == 997 | H2RX1Y_1 == 998)
replace H2RX2_1 = . if (H2RX2_1 == 96 | H2RX2_1 == 97 | H2RX2_1 == 98)
replace H2RX3_1 = . if (H2RX3_1 == 96 | H2RX3_1 == 97 | H2RX3_1 == 98)
replace H2RX4_1 = . if (H2RX4_1 == 96 | H2RX4_1 == 97 | H2RX4_1 == 98)
replace H2RX5_1 = . if (H2RX5_1 == 6 | H2RX5_1 == 7 | H2RX5_1 == 8)
replace H2RX6_1 = . if (H2RX6_1 == 6 | H2RX6_1 == 7 | H2RX6_1 == 8)
replace H2RX7A_1 = . if (H2RX7A_1 >= 6 & H2RX7A_1 <= 9)
replace H2RX7B_1 = . if (H2RX7B_1 >= 6 & H2RX7B_1 <= 9)
replace H2RX7C_1 = . if (H2RX7C_1 >= 6 & H2RX7C_1 <= 9)
replace H2RX7D_1 = . if (H2RX7D_1 >= 6 & H2RX7D_1 <= 9)
replace H2RX7E_1 = . if (H2RX7E_1 >= 6 & H2RX7E_1 <= 9)
replace H2RX7F_1 = . if (H2RX7F_1 >= 6 & H2RX7F_1 <= 9)
replace H2RX7G_1 = . if (H2RX7G_1 >= 6 & H2RX7G_1 <= 9)
replace H2RX7H_1 = . if (H2RX7H_1 >= 6 & H2RX7H_1 <= 9)
replace H2RX8_1 = . if (H2RX8_1 == 96 | H2RX8_1 == 97 | H2RX8_1 == 98)
replace H2RX9_1 = . if (H2RX9_1 == 6 | H2RX9_1 == 7 | H2RX9_1 == 8)
replace H2RX10M1 = . if (H2RX10M1 == 96 | H2RX10M1 == 97 | H2RX10M1 == 98)
replace H2RX10Y1 = . if (H2RX10Y1 == 996 | H2RX10Y1 == 997 | H2RX10Y1 == 998)
replace H2RX11_1 = . if (H2RX11_1 == 6 | H2RX11_1 == 7 | H2RX11_1 == 8)
replace H2RX12M1 = . if (H2RX12M1 == 96 | H2RX12M1 == 97 | H2RX12M1 == 98)
replace H2RX12Y1 = . if (H2RX12Y1 == 996 | H2RX12Y1 == 997 | H2RX12Y1 == 998)
replace H2RX13_1 = . if (H2RX13_1 == 6 | H2RX13_1 == 7 | H2RX13_1 == 8)
replace H2RX14M1 = . if (H2RX14M1 == 96 | H2RX14M1 == 97 | H2RX14M1 == 98)
replace H2RX14Y1 = . if (H2RX14Y1 == 996 | H2RX14Y1 == 997 | H2RX14Y1 == 998)
replace H2RX15_1 = . if (H2RX15_1 == 6 | H2RX15_1 == 7 | H2RX15_1 == 8)
replace H2RX16M1 = . if (H2RX16M1 == 96 | H2RX16M1 == 97 | H2RX16M1 == 98)
replace H2RX16Y1 = . if (H2RX16Y1 == 996 | H2RX16Y1 == 997 | H2RX16Y1 == 998)
replace H2RX17_1 = . if (H2RX17_1 == 6 | H2RX17_1 == 7 | H2RX17_1 == 8)
replace H2RX18M1 = . if (H2RX18M1 == 96 | H2RX18M1 == 97 | H2RX18M1 == 98)
replace H2RX18Y1 = . if (H2RX18Y1 == 996 | H2RX18Y1 == 997 | H2RX18Y1 == 998)
replace H2RX19_1 = . if (H2RX19_1 == 6 | H2RX19_1 == 7 | H2RX19_1 == 8)
replace H2RX20M1 = . if (H2RX20M1 == 96 | H2RX20M1 == 97 | H2RX20M1 == 98)
replace H2RX20Y1 = . if (H2RX20Y1 == 996 | H2RX20Y1 == 997 | H2RX20Y1 == 998)
replace H2RX21_1 = . if (H2RX21_1 == 6 | H2RX21_1 == 7 | H2RX21_1 == 8)
replace H2RX22_1 = . if (H2RX22_1 == 6 | H2RX22_1 == 7 | H2RX22_1 == 8)
replace H2RX23_1 = . if (H2RX23_1 == 6 | H2RX23_1 == 7 | H2RX23_1 == 8)
replace H2RX24_1 = . if (H2RX24_1 == 6 | H2RX24_1 == 7 | H2RX24_1 == 8)
replace H2RX25_1 = . if (H2RX25_1 == 6 | H2RX25_1 == 7 | H2RX25_1 == 8)
replace H2RX26_1 = . if (H2RX26_1 == 96 | H2RX26_1 == 97 | H2RX26_1 == 98)
replace H2RX27_1 = . if (H2RX27_1 == 96 | H2RX27_1 == 97 | H2RX27_1 == 98)
replace H2RX28_1 = . if (H2RX28_1 == 6 | H2RX28_1 == 7 | H2RX28_1 == 8)
replace H2RX29A1 = . if (H2RX29A1 >= 6 & H2RX29A1 <= 9)
replace H2RX29B1 = . if (H2RX29B1 >= 6 & H2RX29B1 <= 9)
replace H2RX29C1 = . if (H2RX29C1 >= 6 & H2RX29C1 <= 9)
replace H2RX29D1 = . if (H2RX29D1 >= 6 & H2RX29D1 <= 9)
replace H2RX29E1 = . if (H2RX29E1 >= 6 & H2RX29E1 <= 9)
replace H2RX29F1 = . if (H2RX29F1 >= 6 & H2RX29F1 <= 9)
replace H2RX30A1 = . if (H2RX30A1 >= 6 & H2RX30A1 <= 9)
replace H2RX30B1 = . if (H2RX30B1 >= 6 & H2RX30B1 <= 9)
replace H2RX30C1 = . if (H2RX30C1 >= 6 & H2RX30C1 <= 9)
replace H2RX30D1 = . if (H2RX30D1 >= 6 & H2RX30D1 <= 9)
replace H2RX30E1 = . if (H2RX30E1 >= 6 & H2RX30E1 <= 9)
replace H2RX31A1 = . if (H2RX31A1 >= 6 & H2RX31A1 <= 9)
replace H2RX31B1 = . if (H2RX31B1 >= 6 & H2RX31B1 <= 9)
replace H2RX31C1 = . if (H2RX31C1 >= 6 & H2RX31C1 <= 9)
replace H2RX31D1 = . if (H2RX31D1 >= 6 & H2RX31D1 <= 9)
replace H2RX31E1 = . if (H2RX31E1 >= 6 & H2RX31E1 <= 9)
replace H2RX31F1 = . if (H2RX31F1 >= 6 & H2RX31F1 <= 9)
replace H2RX31G1 = . if (H2RX31G1 >= 6 & H2RX31G1 <= 9)
replace H2RX32_1 = . if (H2RX32_1 == 6 | H2RX32_1 == 7 | H2RX32_1 == 8)
replace H2RX33A1 = . if (H2RX33A1 == 6 | H2RX33A1 == 7 | H2RX33A1 == 8)
replace H2RX33B1 = . if (H2RX33B1 == 6 | H2RX33B1 == 7 | H2RX33B1 == 8)
replace H2RX33C1 = . if (H2RX33C1 == 6 | H2RX33C1 == 7 | H2RX33C1 == 8)
replace H2RX33D1 = . if (H2RX33D1 == 6 | H2RX33D1 == 7 | H2RX33D1 == 8)
replace H2RX33E1 = . if (H2RX33E1 == 6 | H2RX33E1 == 7 | H2RX33E1 == 8)
replace H2RX33F1 = . if (H2RX33F1 == 6 | H2RX33F1 == 7 | H2RX33F1 == 8)
replace H2RX33G1 = . if (H2RX33G1 == 6 | H2RX33G1 == 7 | H2RX33G1 == 8)
replace H2RX33H1 = . if (H2RX33H1 == 6 | H2RX33H1 == 7 | H2RX33H1 == 8)
replace H2RX33I1 = . if (H2RX33I1 == 6 | H2RX33I1 == 7 | H2RX33I1 == 8)
replace H2RX33J1 = . if (H2RX33J1 == 6 | H2RX33J1 == 7 | H2RX33J1 == 8)
replace H2RX33K1 = . if (H2RX33K1 == 6 | H2RX33K1 == 7 | H2RX33K1 == 8)
replace H2RX33L1 = . if (H2RX33L1 == 6 | H2RX33L1 == 7 | H2RX33L1 == 8)
replace H2RX33M1 = . if (H2RX33M1 == 6 | H2RX33M1 == 7 | H2RX33M1 == 8)
replace H2RX33N1 = . if (H2RX33N1 == 6 | H2RX33N1 == 7 | H2RX33N1 == 8)
replace H2RX33O1 = . if (H2RX33O1 == 6 | H2RX33O1 == 7 | H2RX33O1 == 8)
replace H2RX34A1 = . if (H2RX34A1 == 97)
replace H2RX34B1 = . if (H2RX34B1 == 97)
replace H2RX34C1 = . if (H2RX34C1 == 97)
replace H2RX34D1 = . if (H2RX34D1 == 97)
replace H2RX34E1 = . if (H2RX34E1 == 97)
replace H2RX34F1 = . if (H2RX34F1 == 97)
replace H2RX34G1 = . if (H2RX34G1 == 97)
replace H2RX34H1 = . if (H2RX34H1 == 97)
replace H2RX34I1 = . if (H2RX34I1 == 97)
replace H2RX34J1 = . if (H2RX34J1 == 97)
replace H2RX34K1 = . if (H2RX34K1 == 97)
replace H2RX34L1 = . if (H2RX34L1 == 97)
replace H2RX34M1 = . if (H2RX34M1 == 97)
replace H2RX34N1 = . if (H2RX34N1 == 97)
replace H2RX34O1 = . if (H2RX34O1 == 97)
replace H2RX35_1 = . if (H2RX35_1 == 6 | H2RX35_1 == 7 | H2RX35_1 == 8)
replace H2RX36_1 = . if (H2RX36_1 == 6 | H2RX36_1 == 7 | H2RX36_1 == 8)
replace H2RX37M1 = . if (H2RX37M1 == 96 | H2RX37M1 == 97 | H2RX37M1 == 98)
replace H2RX37Y1 = . if (H2RX37Y1 == 996 | H2RX37Y1 == 997 | H2RX37Y1 == 998)
replace H2RX38M1 = . if (H2RX38M1 == 96 | H2RX38M1 == 97 | H2RX38M1 == 98)
replace H2RX38Y1 = . if (H2RX38Y1 == 996 | H2RX38Y1 == 997 | H2RX38Y1 == 998)
replace H2RX39_1 = . if (H2RX39_1 == 6 | H2RX39_1 == 7 | H2RX39_1 == 8)
replace H2RX40_1 = . if (H2RX40_1 == 6 | H2RX40_1 == 7 | H2RX40_1 == 8)
replace H2RX41A1 = . if (H2RX41A1 == 96 | H2RX41A1 == 97 | H2RX41A1 == 98)
replace H2RX41B1 = . if (H2RX41B1 == 96 | H2RX41B1 == 97 | H2RX41B1 == 98)
replace H2RX41C1 = . if (H2RX41C1 == 96 | H2RX41C1 == 97 | H2RX41C1 == 98)
replace H2RX42_1 = . if (H2RX42_1 == 6 | H2RX42_1 == 7 | H2RX42_1 == 8)
replace H2RX43_1 = . if (H2RX43_1 == 6 | H2RX43_1 == 7 | H2RX43_1 == 8)
replace H2RX44_1 = . if (H2RX44_1 == 6 | H2RX44_1 == 7 | H2RX44_1 == 8)
replace H2RX45A1 = . if (H2RX45A1 == 96 | H2RX45A1 == 97 | H2RX45A1 == 98)
replace H2RX45B1 = . if (H2RX45B1 == 96 | H2RX45B1 == 97 | H2RX45B1 == 98)
replace H2RX45C1 = . if (H2RX45C1 == 96 | H2RX45C1 == 97 | H2RX45C1 == 98)
replace H2RX46_1 = . if (H2RX46_1 == 6 | H2RX46_1 == 7 | H2RX46_1 == 8)
replace H2RX47_1 = . if (H2RX47_1 == 6 | H2RX47_1 == 7 | H2RX47_1 == 8)
replace H2RX48_1 = . if (H2RX48_1 == 6 | H2RX48_1 == 7 | H2RX48_1 == 8)
replace H2RX49_1 = . if (H2RX49_1 == 6 | H2RX49_1 == 7 | H2RX49_1 == 8)
replace H2RX50A1 = . if (H2RX50A1 == 96 | H2RX50A1 == 97 | H2RX50A1 == 98)
replace H2RX50B1 = . if (H2RX50B1 == 96 | H2RX50B1 == 97 | H2RX50B1 == 98)
replace H2RX50C1 = . if (H2RX50C1 == 96 | H2RX50C1 == 97 | H2RX50C1 == 98)
replace H2RX51_1 = . if (H2RX51_1 == 6 | H2RX51_1 == 7 | H2RX51_1 == 8)
replace H2RX52_1 = . if (H2RX52_1 == 6 | H2RX52_1 == 7 | H2RX52_1 == 8)
replace H2RX53_1 = . if (H2RX53_1 == 996 | H2RX53_1 == 997 | H2RX53_1 == 998)
replace H2RX54_1 = . if (H2RX54_1 == 6 | H2RX54_1 == 7 | H2RX54_1 == 8)
replace H2RX55M1 = . if (H2RX55M1 == 96 | H2RX55M1 == 97 | H2RX55M1 == 98)
replace H2RX55Y1 = . if (H2RX55Y1 == 996 | H2RX55Y1 == 997 | H2RX55Y1 == 998)
replace H2RX56_1 = . if (H2RX56_1 == 6 | H2RX56_1 == 7 | H2RX56_1 == 8)
replace H2RX57M1 = . if (H2RX57M1 == 96 | H2RX57M1 == 97 | H2RX57M1 == 98)
replace H2RX57Y1 = . if (H2RX57Y1 == 996 | H2RX57Y1 == 997 | H2RX57Y1 == 998)
replace H2RX58_1 = . if (H2RX58_1 == 996 | H2RX58_1 == 997 | H2RX58_1 == 998)
replace H2RX59_1 = . if (H2RX59_1 == 7)
replace H2RX60_1 = . if (H2RX60_1 == 6 | H2RX60_1 == 7 | H2RX60_1 == 8)
replace H2RX61M1 = . if (H2RX61M1 == 96 | H2RX61M1 == 97 | H2RX61M1 == 98)
replace H2RX61Y1 = . if (H2RX61Y1 == 996 | H2RX61Y1 == 997 | H2RX61Y1 == 998)
replace H2RX62_1 = . if (H2RX62_1 == 6 | H2RX62_1 == 7 | H2RX62_1 == 8)
replace H2RX63M1 = . if (H2RX63M1 == 96 | H2RX63M1 == 97 | H2RX63M1 == 98)
replace H2RX63Y1 = . if (H2RX63Y1 == 996 | H2RX63Y1 == 997 | H2RX63Y1 == 998)
replace H2RX64_1 = . if (H2RX64_1 == 997 | H2RX64_1 == 998)
replace H2RX65_1 = . if (H2RX65_1 == 7)
replace H2RX66_1 = . if (H2RX66_1 == 6 | H2RX66_1 == 7 | H2RX66_1 == 8)
replace H2RX67M1 = . if (H2RX67M1 == 96 | H2RX67M1 == 97 | H2RX67M1 == 98)
replace H2RX67Y1 = . if (H2RX67Y1 == 996 | H2RX67Y1 == 997 | H2RX67Y1 == 998)
replace H2RX68_1 = . if (H2RX68_1 == 6 | H2RX68_1 == 7 | H2RX68_1 == 8)
replace H2RX69M1 = . if (H2RX69M1 == 96 | H2RX69M1 == 97 | H2RX69M1 == 98)
replace H2RX69Y1 = . if (H2RX69Y1 == 996 | H2RX69Y1 == 997 | H2RX69Y1 == 998)
replace H2RX70_1 = . if (H2RX70_1 == 997 | H2RX70_1 == 998)
replace H2RX71_1 = . if (H2RX71_1 == 7)
replace H2NR19_1 = . if (H2NR19_1 == 96 | H2NR19_1 == 97 | H2NR19_1 == 98)
replace H2NR20_1 = . if (H2NR20_1 == 6 | H2NR20_1 == 7 | H2NR20_1 == 8)
replace H2NR21_1 = . if (H2NR21_1 == 6 | H2NR21_1 == 7 | H2NR21_1 == 8)
replace H2NR22_1 = . if (H2NR22_1 == 6 | H2NR22_1 == 7 | H2NR22_1 == 8)
replace H2NR23_1 = . if (H2NR23_1 == 6 | H2NR23_1 == 7 | H2NR23_1 == 8)
replace H2NR24_1 = . if (H2NR24_1 == 6 | H2NR24_1 == 7 | H2NR24_1 == 8)
replace H2NR25_1 = . if (H2NR25_1 == 6 | H2NR25_1 == 7 | H2NR25_1 == 8)
replace H2NR26A1 = . if (H2NR26A1 >= 6 & H2NR26A1 <= 9)
replace H2NR26B1 = . if (H2NR26B1 >= 6 & H2NR26B1 <= 9)
replace H2NR26C1 = . if (H2NR26C1 >= 6 & H2NR26C1 <= 9)
replace H2NR26D1 = . if (H2NR26D1 >= 6 & H2NR26D1 <= 9)
replace H2NR26E1 = . if (H2NR26E1 >= 6 & H2NR26E1 <= 9)
replace H2NR26F1 = . if (H2NR26F1 >= 6 & H2NR26F1 <= 9)
replace H2NR27A1 = . if (H2NR27A1 >= 6 & H2NR27A1 <= 9)
replace H2NR27B1 = . if (H2NR27B1 >= 6 & H2NR27B1 <= 9)
replace H2NR27C1 = . if (H2NR27C1 >= 6 & H2NR27C1 <= 9)
replace H2NR27D1 = . if (H2NR27D1 >= 6 & H2NR27D1 <= 9)
replace H2NR27E1 = . if (H2NR27E1 >= 6 & H2NR27E1 <= 9)
replace H2NR28A1 = . if (H2NR28A1 >= 6 & H2NR28A1 <= 9)
replace H2NR28B1 = . if (H2NR28B1 >= 6 & H2NR28B1 <= 9)
replace H2NR28C1 = . if (H2NR28C1 >= 6 & H2NR28C1 <= 9)
replace H2NR28D1 = . if (H2NR28D1 >= 6 & H2NR28D1 <= 9)
replace H2NR28E1 = . if (H2NR28E1 >= 6 & H2NR28E1 <= 9)
replace H2NR28F1 = . if (H2NR28F1 >= 6 & H2NR28F1 <= 9)
replace H2NR28G1 = . if (H2NR28G1 >= 6 & H2NR28G1 <= 9)
replace H2NR29A1 = . if (H2NR29A1 >= 6 & H2NR29A1 <= 9)
replace H2NR29B1 = . if (H2NR29B1 >= 6 & H2NR29B1 <= 9)
replace H2NR29C1 = . if (H2NR29C1 >= 6 & H2NR29C1 <= 9)
replace H2NR29D1 = . if (H2NR29D1 >= 6 & H2NR29D1 <= 9)
replace H2NR29E1 = . if (H2NR29E1 >= 6 & H2NR29E1 <= 9)
replace H2NR29F1 = . if (H2NR29F1 >= 6 & H2NR29F1 <= 9)
replace H2NR29G1 = . if (H2NR29G1 >= 6 & H2NR29G1 <= 9)
replace H2NR29H1 = . if (H2NR29H1 >= 6 & H2NR29H1 <= 9)
replace H2NR30_1 = . if (H2NR30_1 == 6 | H2NR30_1 == 7 | H2NR30_1 == 8)
replace H2NR31_1 = . if (H2NR31_1 == 6 | H2NR31_1 == 7 | H2NR31_1 == 8)
replace H2NR32M1 = . if (H2NR32M1 == 96 | H2NR32M1 == 97 | H2NR32M1 == 98)
replace H2NR32Y1 = . if (H2NR32Y1 == 996 | H2NR32Y1 == 997 | H2NR32Y1 == 998)
replace H2NR33_1 = . if (H2NR33_1 == 6 | H2NR33_1 == 7 | H2NR33_1 == 8)
replace H2NR34M1 = . if (H2NR34M1 == 96 | H2NR34M1 == 97 | H2NR34M1 == 98)
replace H2NR34Y1 = . if (H2NR34Y1 == 996 | H2NR34Y1 == 997 | H2NR34Y1 == 998)
replace H2NR35_1 = . if (H2NR35_1 == 6 | H2NR35_1 == 7 | H2NR35_1 == 8)
replace H2NR36M1 = . if (H2NR36M1 == 96 | H2NR36M1 == 97 | H2NR36M1 == 98)
replace H2NR36Y1 = . if (H2NR36Y1 == 996 | H2NR36Y1 == 997 | H2NR36Y1 == 998)
replace H2NR37_1 = . if (H2NR37_1 == 6 | H2NR37_1 == 7 | H2NR37_1 == 8)
replace H2NR38M1 = . if (H2NR38M1 == 96 | H2NR38M1 == 97 | H2NR38M1 == 98)
replace H2NR38Y1 = . if (H2NR38Y1 == 996 | H2NR38Y1 == 997 | H2NR38Y1 == 998)
replace H2NR39_1 = . if (H2NR39_1 == 6 | H2NR39_1 == 7 | H2NR39_1 == 8)
replace H2NR40M1 = . if (H2NR40M1 == 96 | H2NR40M1 == 97 | H2NR40M1 == 98)
replace H2NR40Y1 = . if (H2NR40Y1 == 996 | H2NR40Y1 == 997 | H2NR40Y1 == 998)
replace H2NR41_1 = . if (H2NR41_1 == 6 | H2NR41_1 == 7 | H2NR41_1 == 8)
replace H2NR42M1 = . if (H2NR42M1 == 96 | H2NR42M1 == 97 | H2NR42M1 == 98)
replace H2NR42Y1 = . if (H2NR42Y1 == 996 | H2NR42Y1 == 997 | H2NR42Y1 == 998)
replace H2NR43M1 = . if (H2NR43M1 == 96 | H2NR43M1 == 97 | H2NR43M1 == 98)
replace H2NR43Y1 = . if (H2NR43Y1 == 996 | H2NR43Y1 == 997 | H2NR43Y1 == 998)
replace H2NR44_1 = . if (H2NR44_1 == 6 | H2NR44_1 == 7 | H2NR44_1 == 8)
replace H2NR45_1 = . if (H2NR45_1 == 6 | H2NR45_1 == 7 | H2NR45_1 == 8)
replace H2NR46A1 = . if (H2NR46A1 == 96 | H2NR46A1 == 97 | H2NR46A1 == 98)
replace H2NR46B1 = . if (H2NR46B1 == 96 | H2NR46B1 == 97 | H2NR46B1 == 98)
replace H2NR46C1 = . if (H2NR46C1 == 96 | H2NR46C1 == 97 | H2NR46C1 == 98)
replace H2NR47_1 = . if (H2NR47_1 == 6 | H2NR47_1 == 7 | H2NR47_1 == 8)
replace H2NR48_1 = . if (H2NR48_1 == 6 | H2NR48_1 == 7 | H2NR48_1 == 8)
replace H2NR49_1 = . if (H2NR49_1 == 6 | H2NR49_1 == 7 | H2NR49_1 == 8)
replace H2NR50A1 = . if (H2NR50A1 == 96 | H2NR50A1 == 97 | H2NR50A1 == 98)
replace H2NR50B1 = . if (H2NR50B1 == 96 | H2NR50B1 == 97 | H2NR50B1 == 98)
replace H2NR50C1 = . if (H2NR50C1 == 96 | H2NR50C1 == 97 | H2NR50C1 == 98)
replace H2NR51_1 = . if (H2NR51_1 == 6 | H2NR51_1 == 7 | H2NR51_1 == 8)
replace H2NR52_1 = . if (H2NR52_1 == 6 | H2NR52_1 == 7 | H2NR52_1 == 8)
replace H2NR53_1 = . if (H2NR53_1 == 6 | H2NR53_1 == 7 | H2NR53_1 == 8)
replace H2NR54_1 = . if (H2NR54_1 == 6 | H2NR54_1 == 7 | H2NR54_1 == 8)
replace H2NR55A1 = . if (H2NR55A1 == 96 | H2NR55A1 == 97 | H2NR55A1 == 98)
replace H2NR55B1 = . if (H2NR55B1 == 96 | H2NR55B1 == 97 | H2NR55B1 == 98)
replace H2NR55C1 = . if (H2NR55C1 == 96 | H2NR55C1 == 97 | H2NR55C1 == 98)
replace H2NR56_1 = . if (H2NR56_1 == 6 | H2NR56_1 == 7 | H2NR56_1 == 8)
replace H2NR57_1 = . if (H2NR57_1 == 7)
replace H2NR58_1 = . if (H2NR58_1 == 996 | H2NR58_1 == 997 | H2NR58_1 == 998)
replace H2NR59_1 = . if (H2NR59_1 == 6 | H2NR59_1 == 7 | H2NR59_1 == 8)
replace H2NR60M1 = . if (H2NR60M1 == 96 | H2NR60M1 == 97 | H2NR60M1 == 98)
replace H2NR60Y1 = . if (H2NR60Y1 == 996 | H2NR60Y1 == 997 | H2NR60Y1 == 998)
replace H2NR61_1 = . if (H2NR61_1 == 6 | H2NR61_1 == 7 | H2NR61_1 == 8)
replace H2NR62M1 = . if (H2NR62M1 == 96 | H2NR62M1 == 97 | H2NR62M1 == 98)
replace H2NR62Y1 = . if (H2NR62Y1 == 996 | H2NR62Y1 == 997 | H2NR62Y1 == 998)
replace H2NR63_1 = . if (H2NR63_1 == 97)
replace H2NR64_1 = . if (H2NR64_1 == 7)
replace H2NR65_1 = . if (H2NR65_1 == 6 | H2NR65_1 == 7 | H2NR65_1 == 8)
replace H2NR66M1 = . if (H2NR66M1 == 96 | H2NR66M1 == 97 | H2NR66M1 == 98)
replace H2NR66Y1 = . if (H2NR66Y1 == 996 | H2NR66Y1 == 997 | H2NR66Y1 == 998)
replace H2NR67_1 = . if (H2NR67_1 == 6 | H2NR67_1 == 7 | H2NR67_1 == 8)
replace H2NR68M1 = . if (H2NR68M1 == 96 | H2NR68M1 == 97 | H2NR68M1 == 98)
replace H2NR68Y1 = . if (H2NR68Y1 == 996 | H2NR68Y1 == 997 | H2NR68Y1 == 998)
replace H2NR69_1 = . if (H2NR69_1 == 997)
replace H2NR70_1 = . if (H2NR70_1 == 7)
replace H2NR71_1 = . if (H2NR71_1 == 6 | H2NR71_1 == 7 | H2NR71_1 == 8)
replace H2NR72M1 = . if (H2NR72M1 == 96 | H2NR72M1 == 97 | H2NR72M1 == 98)
replace H2NR72Y1 = . if (H2NR72Y1 == 996 | H2NR72Y1 == 997 | H2NR72Y1 == 998)
replace H2NR73_1 = . if (H2NR73_1 == 6 | H2NR73_1 == 7 | H2NR73_1 == 8)
replace H2NR74M1 = . if (H2NR74M1 == 96 | H2NR74M1 == 97 | H2NR74M1 == 98)
replace H2NR74Y1 = . if (H2NR74Y1 == 996 | H2NR74Y1 == 997 | H2NR74Y1 == 998)
replace H2NR75_1 = . if (H2NR75_1 == 97)
replace H2NR76_1 = . if (H2NR76_1 == 7)
replace H2NR77_1 = . if (H2NR77_1 == 6 | H2NR77_1 == 7 | H2NR77_1 == 8)
replace H2NR78_1 = . if (H2NR78_1 == 97)
replace H2NR16_2 = . if (H2NR16_2 == 6 | H2NR16_2 == 7 | H2NR16_2 == 8)
replace H2NR17_2 = . if (H2NR17_2 == 6 | H2NR17_2 == 7 | H2NR17_2 == 8)
replace H2NR18_2 = . if (H2NR18_2 == 6 | H2NR18_2 == 7 | H2NR18_2 == 8)
replace H2RX1M_2 = . if (H2RX1M_2 == 96 | H2RX1M_2 == 97 | H2RX1M_2 == 98)
replace H2RX1Y_2 = . if (H2RX1Y_2 == 996 | H2RX1Y_2 == 997 | H2RX1Y_2 == 998)
replace H2RX2_2 = . if (H2RX2_2 == 96 | H2RX2_2 == 97 | H2RX2_2 == 98)
replace H2RX3_2 = . if (H2RX3_2 == 96 | H2RX3_2 == 97 | H2RX3_2 == 98)
replace H2RX4_2 = . if (H2RX4_2 == 96 | H2RX4_2 == 97 | H2RX4_2 == 98)
replace H2RX5_2 = . if (H2RX5_2 == 6 | H2RX5_2 == 7 | H2RX5_2 == 8)
replace H2RX6_2 = . if (H2RX6_2 == 6 | H2RX6_2 == 7 | H2RX6_2 == 8)
replace H2RX7A_2 = . if (H2RX7A_2 >= 6 & H2RX7A_2 <= 9)
replace H2RX7B_2 = . if (H2RX7B_2 >= 6 & H2RX7B_2 <= 9)
replace H2RX7C_2 = . if (H2RX7C_2 >= 6 & H2RX7C_2 <= 9)
replace H2RX7D_2 = . if (H2RX7D_2 >= 6 & H2RX7D_2 <= 9)
replace H2RX7E_2 = . if (H2RX7E_2 >= 6 & H2RX7E_2 <= 9)
replace H2RX7F_2 = . if (H2RX7F_2 >= 6 & H2RX7F_2 <= 9)
replace H2RX7G_2 = . if (H2RX7G_2 >= 6 & H2RX7G_2 <= 9)
replace H2RX7H_2 = . if (H2RX7H_2 >= 6 & H2RX7H_2 <= 9)
replace H2RX8_2 = . if (H2RX8_2 == 96 | H2RX8_2 == 97 | H2RX8_2 == 98)
replace H2RX9_2 = . if (H2RX9_2 == 6 | H2RX9_2 == 7 | H2RX9_2 == 8)
replace H2RX10M2 = . if (H2RX10M2 == 96 | H2RX10M2 == 97 | H2RX10M2 == 98)
replace H2RX10Y2 = . if (H2RX10Y2 == 996 | H2RX10Y2 == 997 | H2RX10Y2 == 998)
replace H2RX11_2 = . if (H2RX11_2 == 6 | H2RX11_2 == 7 | H2RX11_2 == 8)
replace H2RX12M2 = . if (H2RX12M2 == 96 | H2RX12M2 == 97 | H2RX12M2 == 98)
replace H2RX12Y2 = . if (H2RX12Y2 == 996 | H2RX12Y2 == 997 | H2RX12Y2 == 998)
replace H2RX13_2 = . if (H2RX13_2 == 6 | H2RX13_2 == 7 | H2RX13_2 == 8)
replace H2RX14M2 = . if (H2RX14M2 == 96 | H2RX14M2 == 97 | H2RX14M2 == 98)
replace H2RX14Y2 = . if (H2RX14Y2 == 996 | H2RX14Y2 == 997 | H2RX14Y2 == 998)
replace H2RX15_2 = . if (H2RX15_2 == 6 | H2RX15_2 == 7 | H2RX15_2 == 8)
replace H2RX16M2 = . if (H2RX16M2 == 96 | H2RX16M2 == 97 | H2RX16M2 == 98)
replace H2RX16Y2 = . if (H2RX16Y2 == 996 | H2RX16Y2 == 997 | H2RX16Y2 == 998)
replace H2RX17_2 = . if (H2RX17_2 == 6 | H2RX17_2 == 7 | H2RX17_2 == 8)
replace H2RX18M2 = . if (H2RX18M2 == 96 | H2RX18M2 == 97 | H2RX18M2 == 98)
replace H2RX18Y2 = . if (H2RX18Y2 == 996 | H2RX18Y2 == 997 | H2RX18Y2 == 998)
replace H2RX19_2 = . if (H2RX19_2 == 6 | H2RX19_2 == 7 | H2RX19_2 == 8)
replace H2RX20M2 = . if (H2RX20M2 == 96 | H2RX20M2 == 97 | H2RX20M2 == 98)
replace H2RX20Y2 = . if (H2RX20Y2 == 996 | H2RX20Y2 == 997 | H2RX20Y2 == 998)
replace H2RX21_2 = . if (H2RX21_2 == 6 | H2RX21_2 == 7 | H2RX21_2 == 8)
replace H2RX22_2 = . if (H2RX22_2 == 6 | H2RX22_2 == 7 | H2RX22_2 == 8)
replace H2RX23_2 = . if (H2RX23_2 == 6 | H2RX23_2 == 7 | H2RX23_2 == 8)
replace H2RX24_2 = . if (H2RX24_2 == 6 | H2RX24_2 == 7 | H2RX24_2 == 8)
replace H2RX25_2 = . if (H2RX25_2 == 6 | H2RX25_2 == 7 | H2RX25_2 == 8)
replace H2RX26_2 = . if (H2RX26_2 == 96 | H2RX26_2 == 97 | H2RX26_2 == 98)
replace H2RX27_2 = . if (H2RX27_2 == 96 | H2RX27_2 == 97)
replace H2RX28_2 = . if (H2RX28_2 == 6 | H2RX28_2 == 7 | H2RX28_2 == 8)
replace H2RX29A2 = . if (H2RX29A2 >= 6 & H2RX29A2 <= 9)
replace H2RX29B2 = . if (H2RX29B2 >= 6 & H2RX29B2 <= 9)
replace H2RX29C2 = . if (H2RX29C2 >= 6 & H2RX29C2 <= 9)
replace H2RX29D2 = . if (H2RX29D2 >= 6 & H2RX29D2 <= 9)
replace H2RX29E2 = . if (H2RX29E2 >= 6 & H2RX29E2 <= 9)
replace H2RX29F2 = . if (H2RX29F2 >= 6 & H2RX29F2 <= 9)
replace H2RX30A2 = . if (H2RX30A2 >= 6 & H2RX30A2 <= 9)
replace H2RX30B2 = . if (H2RX30B2 >= 6 & H2RX30B2 <= 9)
replace H2RX30C2 = . if (H2RX30C2 >= 6 & H2RX30C2 <= 9)
replace H2RX30D2 = . if (H2RX30D2 >= 6 & H2RX30D2 <= 9)
replace H2RX30E2 = . if (H2RX30E2 >= 6 & H2RX30E2 <= 9)
replace H2RX31A2 = . if (H2RX31A2 >= 6 & H2RX31A2 <= 9)
replace H2RX31B2 = . if (H2RX31B2 >= 6 & H2RX31B2 <= 9)
replace H2RX31C2 = . if (H2RX31C2 >= 6 & H2RX31C2 <= 9)
replace H2RX31D2 = . if (H2RX31D2 >= 6 & H2RX31D2 <= 9)
replace H2RX31E2 = . if (H2RX31E2 >= 6 & H2RX31E2 <= 9)
replace H2RX31F2 = . if (H2RX31F2 >= 6 & H2RX31F2 <= 9)
replace H2RX31G2 = . if (H2RX31G2 >= 6 & H2RX31G2 <= 9)
replace H2RX32_2 = . if (H2RX32_2 == 6 | H2RX32_2 == 7 | H2RX32_2 == 8)
replace H2RX33A2 = . if (H2RX33A2 == 6 | H2RX33A2 == 7 | H2RX33A2 == 8)
replace H2RX33B2 = . if (H2RX33B2 == 6 | H2RX33B2 == 7 | H2RX33B2 == 8)
replace H2RX33C2 = . if (H2RX33C2 == 6 | H2RX33C2 == 7 | H2RX33C2 == 8)
replace H2RX33D2 = . if (H2RX33D2 == 6 | H2RX33D2 == 7 | H2RX33D2 == 8)
replace H2RX33E2 = . if (H2RX33E2 == 6 | H2RX33E2 == 7 | H2RX33E2 == 8)
replace H2RX33F2 = . if (H2RX33F2 == 6 | H2RX33F2 == 7 | H2RX33F2 == 8)
replace H2RX33G2 = . if (H2RX33G2 == 6 | H2RX33G2 == 7 | H2RX33G2 == 8)
replace H2RX33H2 = . if (H2RX33H2 == 6 | H2RX33H2 == 7 | H2RX33H2 == 8)
replace H2RX33I2 = . if (H2RX33I2 == 6 | H2RX33I2 == 7 | H2RX33I2 == 8)
replace H2RX33J2 = . if (H2RX33J2 == 6 | H2RX33J2 == 7 | H2RX33J2 == 8)
replace H2RX33K2 = . if (H2RX33K2 == 6 | H2RX33K2 == 7 | H2RX33K2 == 8)
replace H2RX33L2 = . if (H2RX33L2 == 6 | H2RX33L2 == 7 | H2RX33L2 == 8)
replace H2RX33M2 = . if (H2RX33M2 == 6 | H2RX33M2 == 7 | H2RX33M2 == 8)
replace H2RX33N2 = . if (H2RX33N2 == 6 | H2RX33N2 == 7 | H2RX33N2 == 8)
replace H2RX33O2 = . if (H2RX33O2 == 6 | H2RX33O2 == 7 | H2RX33O2 == 8)
replace H2RX34A2 = . if (H2RX34A2 == 97)
replace H2RX34B2 = . if (H2RX34B2 == 97)
replace H2RX34C2 = . if (H2RX34C2 == 97)
replace H2RX34D2 = . if (H2RX34D2 == 97)
replace H2RX34E2 = . if (H2RX34E2 == 97)
replace H2RX34F2 = . if (H2RX34F2 == 97)
replace H2RX34G2 = . if (H2RX34G2 == 97)
replace H2RX34H2 = . if (H2RX34H2 == 97)
replace H2RX34I2 = . if (H2RX34I2 == 97)
replace H2RX34J2 = . if (H2RX34J2 == 97)
replace H2RX34K2 = . if (H2RX34K2 == 97)
replace H2RX34L2 = . if (H2RX34L2 == 97)
replace H2RX34M2 = . if (H2RX34M2 == 97)
replace H2RX34N2 = . if (H2RX34N2 == 97)
replace H2RX34O2 = . if (H2RX34O2 == 97)
replace H2RX35_2 = . if (H2RX35_2 == 6 | H2RX35_2 == 7 | H2RX35_2 == 8)
replace H2RX36_2 = . if (H2RX36_2 == 6 | H2RX36_2 == 7 | H2RX36_2 == 8)
replace H2RX37M2 = . if (H2RX37M2 == 96 | H2RX37M2 == 97 | H2RX37M2 == 98)
replace H2RX37Y2 = . if (H2RX37Y2 == 996 | H2RX37Y2 == 997 | H2RX37Y2 == 998)
replace H2RX38M2 = . if (H2RX38M2 == 96 | H2RX38M2 == 97 | H2RX38M2 == 98)
replace H2RX38Y2 = . if (H2RX38Y2 == 996 | H2RX38Y2 == 997 | H2RX38Y2 == 998)
replace H2RX39_2 = . if (H2RX39_2 == 6 | H2RX39_2 == 7 | H2RX39_2 == 8)
replace H2RX40_2 = . if (H2RX40_2 == 6 | H2RX40_2 == 7 | H2RX40_2 == 8)
replace H2RX41A2 = . if (H2RX41A2 == 97 | H2RX41A2 == 98)
replace H2RX41B2 = . if (H2RX41B2 == 97 | H2RX41B2 == 98)
replace H2RX41C2 = . if (H2RX41C2 == 97 | H2RX41C2 == 98)
replace H2RX42_2 = . if (H2RX42_2 == 6 | H2RX42_2 == 7 | H2RX42_2 == 8)
replace H2RX43_2 = . if (H2RX43_2 == 6 | H2RX43_2 == 7 | H2RX43_2 == 8)
replace H2RX44_2 = . if (H2RX44_2 == 6 | H2RX44_2 == 7 | H2RX44_2 == 8)
replace H2RX45A2 = . if (H2RX45A2 == 96 | H2RX45A2 == 97 | H2RX45A2 == 98)
replace H2RX45B2 = . if (H2RX45B2 == 96 | H2RX45B2 == 97 | H2RX45B2 == 98)
replace H2RX45C2 = . if (H2RX45C2 == 96 | H2RX45C2 == 97 | H2RX45C2 == 98)
replace H2RX46_2 = . if (H2RX46_2 == 6 | H2RX46_2 == 7 | H2RX46_2 == 8)
replace H2RX47_2 = . if (H2RX47_2 == 7)
replace H2RX48_2 = . if (H2RX48_2 == 6 | H2RX48_2 == 7 | H2RX48_2 == 8)
replace H2RX49_2 = . if (H2RX49_2 == 6 | H2RX49_2 == 7 | H2RX49_2 == 8)
replace H2RX50A2 = . if (H2RX50A2 == 97 | H2RX50A2 == 98)
replace H2RX50B2 = . if (H2RX50B2 == 97 | H2RX50B2 == 98)
replace H2RX50C2 = . if (H2RX50C2 == 97 | H2RX50C2 == 98)
replace H2RX51_2 = . if (H2RX51_2 == 6 | H2RX51_2 == 7 | H2RX51_2 == 8)
replace H2RX52_2 = . if (H2RX52_2 == 7)
replace H2RX53_2 = . if (H2RX53_2 == 996 | H2RX53_2 == 997 | H2RX53_2 == 998)
replace H2RX54_2 = . if (H2RX54_2 == 6 | H2RX54_2 == 7 | H2RX54_2 == 8)
replace H2RX55M2 = . if (H2RX55M2 == 96 | H2RX55M2 == 97 | H2RX55M2 == 98)
replace H2RX55Y2 = . if (H2RX55Y2 == 996 | H2RX55Y2 == 997 | H2RX55Y2 == 998)
replace H2RX56_2 = . if (H2RX56_2 == 7)
replace H2RX57M2 = . if (H2RX57M2 == 96 | H2RX57M2 == 97 | H2RX57M2 == 98)
replace H2RX57Y2 = . if (H2RX57Y2 == 996 | H2RX57Y2 == 997 | H2RX57Y2 == 998)
replace H2RX58_2 = . if (H2RX58_2 == 997)
replace H2RX59_2 = . if (H2RX59_2 == 7)
replace H2RX60_2 = . if (H2RX60_2 == 6 | H2RX60_2 == 7 | H2RX60_2 == 8)
replace H2RX61M2 = . if (H2RX61M2 == 96 | H2RX61M2 == 97 | H2RX61M2 == 98)
replace H2RX61Y2 = . if (H2RX61Y2 == 996 | H2RX61Y2 == 997 | H2RX61Y2 == 998)
replace H2RX62_2 = . if (H2RX62_2 == 6 | H2RX62_2 == 7 | H2RX62_2 == 8)
replace H2RX63M2 = . if (H2RX63M2 == 96 | H2RX63M2 == 97 | H2RX63M2 == 98)
replace H2RX63Y2 = . if (H2RX63Y2 == 996 | H2RX63Y2 == 997 | H2RX63Y2 == 998)
replace H2RX64_2 = . if (H2RX64_2 == 997)
replace H2RX65_2 = . if (H2RX65_2 == 7)
replace H2RX66_2 = . if (H2RX66_2 == 6 | H2RX66_2 == 7 | H2RX66_2 == 8)
replace H2RX67M2 = . if (H2RX67M2 == 96 | H2RX67M2 == 97 | H2RX67M2 == 98)
replace H2RX67Y2 = . if (H2RX67Y2 == 996 | H2RX67Y2 == 997 | H2RX67Y2 == 998)
replace H2RX68_2 = . if (H2RX68_2 == 6 | H2RX68_2 == 7 | H2RX68_2 == 8)
replace H2RX69M2 = . if (H2RX69M2 == 96 | H2RX69M2 == 97 | H2RX69M2 == 98)
replace H2RX69Y2 = . if (H2RX69Y2 == 996 | H2RX69Y2 == 997 | H2RX69Y2 == 998)
replace H2RX70_2 = . if (H2RX70_2 == 997)
replace H2RX71_2 = . if (H2RX71_2 == 7)
replace H2NR19_2 = . if (H2NR19_2 == 96 | H2NR19_2 == 97 | H2NR19_2 == 98)
replace H2NR20_2 = . if (H2NR20_2 == 6 | H2NR20_2 == 7 | H2NR20_2 == 8)
replace H2NR21_2 = . if (H2NR21_2 == 6 | H2NR21_2 == 7 | H2NR21_2 == 8)
replace H2NR22_2 = . if (H2NR22_2 == 6 | H2NR22_2 == 7 | H2NR22_2 == 8)
replace H2NR23_2 = . if (H2NR23_2 == 6 | H2NR23_2 == 7 | H2NR23_2 == 8)
replace H2NR24_2 = . if (H2NR24_2 == 6 | H2NR24_2 == 7 | H2NR24_2 == 8)
replace H2NR25_2 = . if (H2NR25_2 == 6 | H2NR25_2 == 7 | H2NR25_2 == 8)
replace H2NR26A2 = . if (H2NR26A2 >= 6 & H2NR26A2 <= 9)
replace H2NR26B2 = . if (H2NR26B2 >= 6 & H2NR26B2 <= 9)
replace H2NR26C2 = . if (H2NR26C2 >= 6 & H2NR26C2 <= 9)
replace H2NR26D2 = . if (H2NR26D2 >= 6 & H2NR26D2 <= 9)
replace H2NR26E2 = . if (H2NR26E2 >= 6 & H2NR26E2 <= 9)
replace H2NR26F2 = . if (H2NR26F2 >= 6 & H2NR26F2 <= 9)
replace H2NR27A2 = . if (H2NR27A2 >= 6 & H2NR27A2 <= 9)
replace H2NR27B2 = . if (H2NR27B2 >= 6 & H2NR27B2 <= 9)
replace H2NR27C2 = . if (H2NR27C2 >= 6 & H2NR27C2 <= 9)
replace H2NR27D2 = . if (H2NR27D2 >= 6 & H2NR27D2 <= 9)
replace H2NR27E2 = . if (H2NR27E2 >= 6 & H2NR27E2 <= 9)
replace H2NR28A2 = . if (H2NR28A2 >= 6 & H2NR28A2 <= 9)
replace H2NR28B2 = . if (H2NR28B2 >= 6 & H2NR28B2 <= 9)
replace H2NR28C2 = . if (H2NR28C2 >= 6 & H2NR28C2 <= 9)
replace H2NR28D2 = . if (H2NR28D2 >= 6 & H2NR28D2 <= 9)
replace H2NR28E2 = . if (H2NR28E2 >= 6 & H2NR28E2 <= 9)
replace H2NR28F2 = . if (H2NR28F2 >= 6 & H2NR28F2 <= 9)
replace H2NR28G2 = . if (H2NR28G2 >= 6 & H2NR28G2 <= 9)
replace H2NR29A2 = . if (H2NR29A2 >= 6 & H2NR29A2 <= 9)
replace H2NR29B2 = . if (H2NR29B2 >= 6 & H2NR29B2 <= 9)
replace H2NR29C2 = . if (H2NR29C2 >= 6 & H2NR29C2 <= 9)
replace H2NR29D2 = . if (H2NR29D2 >= 6 & H2NR29D2 <= 9)
replace H2NR29E2 = . if (H2NR29E2 >= 6 & H2NR29E2 <= 9)
replace H2NR29F2 = . if (H2NR29F2 >= 6 & H2NR29F2 <= 9)
replace H2NR29G2 = . if (H2NR29G2 >= 6 & H2NR29G2 <= 9)
replace H2NR29H2 = . if (H2NR29H2 >= 6 & H2NR29H2 <= 9)
replace H2NR30_2 = . if (H2NR30_2 == 6 | H2NR30_2 == 7 | H2NR30_2 == 8)
replace H2NR31_2 = . if (H2NR31_2 == 6 | H2NR31_2 == 7 | H2NR31_2 == 8)
replace H2NR32M2 = . if (H2NR32M2 == 96 | H2NR32M2 == 97 | H2NR32M2 == 98)
replace H2NR32Y2 = . if (H2NR32Y2 == 996 | H2NR32Y2 == 997 | H2NR32Y2 == 998)
replace H2NR33_2 = . if (H2NR33_2 == 6 | H2NR33_2 == 7 | H2NR33_2 == 8)
replace H2NR34M2 = . if (H2NR34M2 == 96 | H2NR34M2 == 97 | H2NR34M2 == 98)
replace H2NR34Y2 = . if (H2NR34Y2 == 996 | H2NR34Y2 == 997 | H2NR34Y2 == 998)
replace H2NR35_2 = . if (H2NR35_2 == 6 | H2NR35_2 == 7 | H2NR35_2 == 8)
replace H2NR36M2 = . if (H2NR36M2 == 96 | H2NR36M2 == 97 | H2NR36M2 == 98)
replace H2NR36Y2 = . if (H2NR36Y2 == 996 | H2NR36Y2 == 997 | H2NR36Y2 == 998)
replace H2NR37_2 = . if (H2NR37_2 == 6 | H2NR37_2 == 7 | H2NR37_2 == 8)
replace H2NR38M2 = . if (H2NR38M2 == 96 | H2NR38M2 == 97 | H2NR38M2 == 98)
replace H2NR38Y2 = . if (H2NR38Y2 == 996 | H2NR38Y2 == 997 | H2NR38Y2 == 998)
replace H2NR39_2 = . if (H2NR39_2 == 6 | H2NR39_2 == 7 | H2NR39_2 == 8)
replace H2NR40M2 = . if (H2NR40M2 == 96 | H2NR40M2 == 97 | H2NR40M2 == 98)
replace H2NR40Y2 = . if (H2NR40Y2 == 996 | H2NR40Y2 == 997 | H2NR40Y2 == 998)
replace H2NR41_2 = . if (H2NR41_2 == 6 | H2NR41_2 == 7 | H2NR41_2 == 8)
replace H2NR42M2 = . if (H2NR42M2 == 96 | H2NR42M2 == 97 | H2NR42M2 == 98)
replace H2NR42Y2 = . if (H2NR42Y2 == 996 | H2NR42Y2 == 997 | H2NR42Y2 == 998)
replace H2NR43M2 = . if (H2NR43M2 == 96 | H2NR43M2 == 97 | H2NR43M2 == 98)
replace H2NR43Y2 = . if (H2NR43Y2 == 996 | H2NR43Y2 == 997 | H2NR43Y2 == 998)
replace H2NR44_2 = . if (H2NR44_2 == 7 | H2NR44_2 == 8)
replace H2NR45_2 = . if (H2NR45_2 == 6 | H2NR45_2 == 7 | H2NR45_2 == 8)
replace H2NR46A2 = . if (H2NR46A2 == 97 | H2NR46A2 == 98)
replace H2NR46B2 = . if (H2NR46B2 == 97 | H2NR46B2 == 98)
replace H2NR46C2 = . if (H2NR46C2 == 97 | H2NR46C2 == 98)
replace H2NR47_2 = . if (H2NR47_2 == 6 | H2NR47_2 == 7 | H2NR47_2 == 8)
replace H2NR48_2 = . if (H2NR48_2 == 6 | H2NR48_2 == 7 | H2NR48_2 == 8)
replace H2NR49_2 = . if (H2NR49_2 == 6 | H2NR49_2 == 7 | H2NR49_2 == 8)
replace H2NR50A2 = . if (H2NR50A2 == 97 | H2NR50A2 == 98)
replace H2NR50B2 = . if (H2NR50B2 == 97 | H2NR50B2 == 98)
replace H2NR50C2 = . if (H2NR50C2 == 97 | H2NR50C2 == 98)
replace H2NR51_2 = . if (H2NR51_2 == 6 | H2NR51_2 == 7 | H2NR51_2 == 8)
replace H2NR52_2 = . if (H2NR52_2 == 7)
replace H2NR53_2 = . if (H2NR53_2 == 6 | H2NR53_2 == 7 | H2NR53_2 == 8)
replace H2NR54_2 = . if (H2NR54_2 == 6 | H2NR54_2 == 7 | H2NR54_2 == 8)
replace H2NR55A2 = . if (H2NR55A2 == 97 | H2NR55A2 == 98)
replace H2NR55B2 = . if (H2NR55B2 == 97 | H2NR55B2 == 98)
replace H2NR55C2 = . if (H2NR55C2 == 97 | H2NR55C2 == 98)
replace H2NR56_2 = . if (H2NR56_2 == 6 | H2NR56_2 == 7 | H2NR56_2 == 8)
replace H2NR57_2 = . if (H2NR57_2 == 7)
replace H2NR58_2 = . if (H2NR58_2 == 996 | H2NR58_2 == 997)
replace H2NR59_2 = . if (H2NR59_2 == 6 | H2NR59_2 == 7 | H2NR59_2 == 8)
replace H2NR60M2 = . if (H2NR60M2 == 96 | H2NR60M2 == 97 | H2NR60M2 == 98)
replace H2NR60Y2 = . if (H2NR60Y2 == 996 | H2NR60Y2 == 997 | H2NR60Y2 == 998)
replace H2NR61_2 = . if (H2NR61_2 == 6 | H2NR61_2 == 7 | H2NR61_2 == 8)
replace H2NR62M2 = . if (H2NR62M2 == 96 | H2NR62M2 == 97 | H2NR62M2 == 98)
replace H2NR62Y2 = . if (H2NR62Y2 == 996 | H2NR62Y2 == 997 | H2NR62Y2 == 998)
replace H2NR63_2 = . if (H2NR63_2 == 97)
replace H2NR64_2 = . if (H2NR64_2 == 7)
replace H2NR65_2 = . if (H2NR65_2 == 6 | H2NR65_2 == 7 | H2NR65_2 == 8)
replace H2NR66M2 = . if (H2NR66M2 == 96 | H2NR66M2 == 97 | H2NR66M2 == 98)
replace H2NR66Y2 = . if (H2NR66Y2 == 996 | H2NR66Y2 == 997 | H2NR66Y2 == 998)
replace H2NR67_2 = . if (H2NR67_2 == 6 | H2NR67_2 == 7 | H2NR67_2 == 8)
replace H2NR68M2 = . if (H2NR68M2 == 96 | H2NR68M2 == 97 | H2NR68M2 == 98)
replace H2NR68Y2 = . if (H2NR68Y2 == 996 | H2NR68Y2 == 997 | H2NR68Y2 == 998)
replace H2NR69_2 = . if (H2NR69_2 == 997)
replace H2NR70_2 = . if (H2NR70_2 == 7)
replace H2NR71_2 = . if (H2NR71_2 == 6 | H2NR71_2 == 7 | H2NR71_2 == 8)
replace H2NR72M2 = . if (H2NR72M2 == 96 | H2NR72M2 == 97 | H2NR72M2 == 98)
replace H2NR72Y2 = . if (H2NR72Y2 == 996 | H2NR72Y2 == 997 | H2NR72Y2 == 998)
replace H2NR73_2 = . if (H2NR73_2 == 6 | H2NR73_2 == 7 | H2NR73_2 == 8)
replace H2NR74M2 = . if (H2NR74M2 == 96 | H2NR74M2 == 97 | H2NR74M2 == 98)
replace H2NR74Y2 = . if (H2NR74Y2 == 996 | H2NR74Y2 == 997 | H2NR74Y2 == 998)
replace H2NR75_2 = . if (H2NR75_2 == 97)
replace H2NR76_2 = . if (H2NR76_2 == 7)
replace H2NR77_2 = . if (H2NR77_2 == 6 | H2NR77_2 == 7 | H2NR77_2 == 8)
replace H2NR78_2 = . if (H2NR78_2 == 97)
replace H2NR16_3 = . if (H2NR16_3 == 6 | H2NR16_3 == 7 | H2NR16_3 == 8)
replace H2NR17_3 = . if (H2NR17_3 == 6 | H2NR17_3 == 7 | H2NR17_3 == 8)
replace H2NR18_3 = . if (H2NR18_3 == 6 | H2NR18_3 == 7 | H2NR18_3 == 8)
replace H2RX1M_3 = . if (H2RX1M_3 == 97 | H2RX1M_3 == 98)
replace H2RX1Y_3 = . if (H2RX1Y_3 == 996 | H2RX1Y_3 == 997 | H2RX1Y_3 == 998)
replace H2RX2_3 = . if (H2RX2_3 == 97)
replace H2RX3_3 = . if (H2RX3_3 == 97)
replace H2RX4_3 = . if (H2RX4_3 == 97)
replace H2RX5_3 = . if (H2RX5_3 == 6 | H2RX5_3 == 7 | H2RX5_3 == 8)
replace H2RX6_3 = . if (H2RX6_3 == 6 | H2RX6_3 == 7 | H2RX6_3 == 8)
replace H2RX7A_3 = . if (H2RX7A_3 == 6 | H2RX7A_3 == 7 | H2RX7A_3 == 8)
replace H2RX7B_3 = . if (H2RX7B_3 == 6 | H2RX7B_3 == 7 | H2RX7B_3 == 8)
replace H2RX7C_3 = . if (H2RX7C_3 == 6 | H2RX7C_3 == 7 | H2RX7C_3 == 8)
replace H2RX7D_3 = . if (H2RX7D_3 == 6 | H2RX7D_3 == 7 | H2RX7D_3 == 8)
replace H2RX7E_3 = . if (H2RX7E_3 == 6 | H2RX7E_3 == 7 | H2RX7E_3 == 8)
replace H2RX7F_3 = . if (H2RX7F_3 == 6 | H2RX7F_3 == 7 | H2RX7F_3 == 8)
replace H2RX7G_3 = . if (H2RX7G_3 == 6 | H2RX7G_3 == 7 | H2RX7G_3 == 8)
replace H2RX7H_3 = . if (H2RX7H_3 == 6 | H2RX7H_3 == 7 | H2RX7H_3 == 8)
replace H2RX8_3 = . if (H2RX8_3 == 97)
replace H2RX9_3 = . if (H2RX9_3 == 6 | H2RX9_3 == 7 | H2RX9_3 == 8)
replace H2RX10M3 = . if (H2RX10M3 == 97 | H2RX10M3 == 98)
replace H2RX10Y3 = . if (H2RX10Y3 == 996 | H2RX10Y3 == 997 | H2RX10Y3 == 998)
replace H2RX11_3 = . if (H2RX11_3 == 6 | H2RX11_3 == 7 | H2RX11_3 == 8)
replace H2RX12M3 = . if (H2RX12M3 == 97 | H2RX12M3 == 98)
replace H2RX12Y3 = . if (H2RX12Y3 == 996 | H2RX12Y3 == 997 | H2RX12Y3 == 998)
replace H2RX13_3 = . if (H2RX13_3 == 6 | H2RX13_3 == 7 | H2RX13_3 == 8)
replace H2RX14M3 = . if (H2RX14M3 == 97 | H2RX14M3 == 98)
replace H2RX14Y3 = . if (H2RX14Y3 == 996 | H2RX14Y3 == 997 | H2RX14Y3 == 998)
replace H2RX15_3 = . if (H2RX15_3 == 6 | H2RX15_3 == 7 | H2RX15_3 == 8)
replace H2RX16M3 = . if (H2RX16M3 == 97 | H2RX16M3 == 98)
replace H2RX16Y3 = . if (H2RX16Y3 == 996 | H2RX16Y3 == 997 | H2RX16Y3 == 998)
replace H2RX17_3 = . if (H2RX17_3 == 6 | H2RX17_3 == 7 | H2RX17_3 == 8)
replace H2RX18M3 = . if (H2RX18M3 == 97 | H2RX18M3 == 98)
replace H2RX18Y3 = . if (H2RX18Y3 == 996 | H2RX18Y3 == 997 | H2RX18Y3 == 998)
replace H2RX19_3 = . if (H2RX19_3 == 6 | H2RX19_3 == 7 | H2RX19_3 == 8)
replace H2RX20M3 = . if (H2RX20M3 == 97 | H2RX20M3 == 98)
replace H2RX20Y3 = . if (H2RX20Y3 == 996 | H2RX20Y3 == 997 | H2RX20Y3 == 998)
replace H2RX21_3 = . if (H2RX21_3 == 6 | H2RX21_3 == 7 | H2RX21_3 == 8)
replace H2RX22_3 = . if (H2RX22_3 == 6 | H2RX22_3 == 7 | H2RX22_3 == 8)
replace H2RX23_3 = . if (H2RX23_3 == 6 | H2RX23_3 == 7 | H2RX23_3 == 8)
replace H2RX24_3 = . if (H2RX24_3 == 6 | H2RX24_3 == 7 | H2RX24_3 == 8)
replace H2RX25_3 = . if (H2RX25_3 == 6 | H2RX25_3 == 7 | H2RX25_3 == 8)
replace H2RX26_3 = . if (H2RX26_3 == 96 | H2RX26_3 == 97 | H2RX26_3 == 98)
replace H2RX27_3 = . if (H2RX27_3 == 97)
replace H2RX28_3 = . if (H2RX28_3 == 6 | H2RX28_3 == 7 | H2RX28_3 == 8)
replace H2RX29A3 = . if (H2RX29A3 == 6 | H2RX29A3 == 7 | H2RX29A3 == 8)
replace H2RX29B3 = . if (H2RX29B3 == 6 | H2RX29B3 == 7 | H2RX29B3 == 8)
replace H2RX29C3 = . if (H2RX29C3 == 6 | H2RX29C3 == 7 | H2RX29C3 == 8)
replace H2RX29D3 = . if (H2RX29D3 == 6 | H2RX29D3 == 7 | H2RX29D3 == 8)
replace H2RX29E3 = . if (H2RX29E3 == 6 | H2RX29E3 == 7 | H2RX29E3 == 8)
replace H2RX29F3 = . if (H2RX29F3 == 6 | H2RX29F3 == 7 | H2RX29F3 == 8)
replace H2RX30A3 = . if (H2RX30A3 == 6 | H2RX30A3 == 7 | H2RX30A3 == 8)
replace H2RX30B3 = . if (H2RX30B3 == 6 | H2RX30B3 == 7 | H2RX30B3 == 8)
replace H2RX30C3 = . if (H2RX30C3 == 6 | H2RX30C3 == 7 | H2RX30C3 == 8)
replace H2RX30D3 = . if (H2RX30D3 == 6 | H2RX30D3 == 7 | H2RX30D3 == 8)
replace H2RX30E3 = . if (H2RX30E3 == 6 | H2RX30E3 == 7 | H2RX30E3 == 8)
replace H2RX31A3 = . if (H2RX31A3 == 6 | H2RX31A3 == 7 | H2RX31A3 == 8)
replace H2RX31B3 = . if (H2RX31B3 == 6 | H2RX31B3 == 7 | H2RX31B3 == 8)
replace H2RX31C3 = . if (H2RX31C3 == 6 | H2RX31C3 == 7 | H2RX31C3 == 8)
replace H2RX31D3 = . if (H2RX31D3 == 6 | H2RX31D3 == 7 | H2RX31D3 == 8)
replace H2RX31E3 = . if (H2RX31E3 == 6 | H2RX31E3 == 7 | H2RX31E3 == 8)
replace H2RX31F3 = . if (H2RX31F3 == 6 | H2RX31F3 == 7 | H2RX31F3 == 8)
replace H2RX31G3 = . if (H2RX31G3 == 6 | H2RX31G3 == 7 | H2RX31G3 == 8)
replace H2RX32_3 = . if (H2RX32_3 == 6 | H2RX32_3 == 7 | H2RX32_3 == 8)
replace H2RX33A3 = . if (H2RX33A3 == 6 | H2RX33A3 == 7 | H2RX33A3 == 8)
replace H2RX33B3 = . if (H2RX33B3 == 6 | H2RX33B3 == 7 | H2RX33B3 == 8)
replace H2RX33C3 = . if (H2RX33C3 == 6 | H2RX33C3 == 7 | H2RX33C3 == 8)
replace H2RX33D3 = . if (H2RX33D3 == 6 | H2RX33D3 == 7 | H2RX33D3 == 8)
replace H2RX33E3 = . if (H2RX33E3 == 6 | H2RX33E3 == 7 | H2RX33E3 == 8)
replace H2RX33F3 = . if (H2RX33F3 == 6 | H2RX33F3 == 7 | H2RX33F3 == 8)
replace H2RX33G3 = . if (H2RX33G3 == 6 | H2RX33G3 == 7 | H2RX33G3 == 8)
replace H2RX33H3 = . if (H2RX33H3 == 6 | H2RX33H3 == 7 | H2RX33H3 == 8)
replace H2RX33I3 = . if (H2RX33I3 == 6 | H2RX33I3 == 7 | H2RX33I3 == 8)
replace H2RX33J3 = . if (H2RX33J3 == 6 | H2RX33J3 == 7 | H2RX33J3 == 8)
replace H2RX33K3 = . if (H2RX33K3 == 6 | H2RX33K3 == 7 | H2RX33K3 == 8)
replace H2RX33L3 = . if (H2RX33L3 == 6 | H2RX33L3 == 7 | H2RX33L3 == 8)
replace H2RX33M3 = . if (H2RX33M3 == 6 | H2RX33M3 == 7 | H2RX33M3 == 8)
replace H2RX33N3 = . if (H2RX33N3 == 6 | H2RX33N3 == 7 | H2RX33N3 == 8)
replace H2RX33O3 = . if (H2RX33O3 == 6 | H2RX33O3 == 7 | H2RX33O3 == 8)
replace H2RX34A3 = . if (H2RX34A3 == 97)
replace H2RX34B3 = . if (H2RX34B3 == 97)
replace H2RX34C3 = . if (H2RX34C3 == 97)
replace H2RX34D3 = . if (H2RX34D3 == 97)
replace H2RX34E3 = . if (H2RX34E3 == 97)
replace H2RX34F3 = . if (H2RX34F3 == 97)
replace H2RX34G3 = . if (H2RX34G3 == 97)
replace H2RX34H3 = . if (H2RX34H3 == 97)
replace H2RX34I3 = . if (H2RX34I3 == 97)
replace H2RX34J3 = . if (H2RX34J3 == 97)
replace H2RX34K3 = . if (H2RX34K3 == 97)
replace H2RX34L3 = . if (H2RX34L3 == 97)
replace H2RX34M3 = . if (H2RX34M3 == 97)
replace H2RX34N3 = . if (H2RX34N3 == 97)
replace H2RX34O3 = . if (H2RX34O3 == 97)
replace H2RX35_3 = . if (H2RX35_3 == 6 | H2RX35_3 == 7 | H2RX35_3 == 8)
replace H2RX36_3 = . if (H2RX36_3 == 6 | H2RX36_3 == 7 | H2RX36_3 == 8)
replace H2RX37M3 = . if (H2RX37M3 == 97 | H2RX37M3 == 98)
replace H2RX37Y3 = . if (H2RX37Y3 == 996 | H2RX37Y3 == 997 | H2RX37Y3 == 998)
replace H2RX38M3 = . if (H2RX38M3 == 97 | H2RX38M3 == 98)
replace H2RX38Y3 = . if (H2RX38Y3 == 996 | H2RX38Y3 == 997 | H2RX38Y3 == 998)
replace H2RX39_3 = . if (H2RX39_3 == 7)
replace H2RX40_3 = . if (H2RX40_3 == 6 | H2RX40_3 == 7 | H2RX40_3 == 8)
replace H2RX41A3 = . if (H2RX41A3 == 97 | H2RX41A3 == 98)
replace H2RX41B3 = . if (H2RX41B3 == 97 | H2RX41B3 == 98)
replace H2RX41C3 = . if (H2RX41C3 == 97 | H2RX41C3 == 98)
replace H2RX42_3 = . if (H2RX42_3 == 6 | H2RX42_3 == 7 | H2RX42_3 == 8)
replace H2RX43_3 = . if (H2RX43_3 == 6 | H2RX43_3 == 7 | H2RX43_3 == 8)
replace H2RX44_3 = . if (H2RX44_3 == 6 | H2RX44_3 == 7 | H2RX44_3 == 8)
replace H2RX45A3 = . if (H2RX45A3 == 97 | H2RX45A3 == 98)
replace H2RX45B3 = . if (H2RX45B3 == 97 | H2RX45B3 == 98)
replace H2RX45C3 = . if (H2RX45C3 == 97 | H2RX45C3 == 98)
replace H2RX46_3 = . if (H2RX46_3 == 6 | H2RX46_3 == 7 | H2RX46_3 == 8)
replace H2RX47_3 = . if (H2RX47_3 == 7)
replace H2RX48_3 = . if (H2RX48_3 == 6 | H2RX48_3 == 7 | H2RX48_3 == 8)
replace H2RX49_3 = . if (H2RX49_3 == 6 | H2RX49_3 == 7 | H2RX49_3 == 8)
replace H2RX50A3 = . if (H2RX50A3 == 97 | H2RX50A3 == 98)
replace H2RX50B3 = . if (H2RX50B3 == 97 | H2RX50B3 == 98)
replace H2RX50C3 = . if (H2RX50C3 == 97 | H2RX50C3 == 98)
replace H2RX51_3 = . if (H2RX51_3 == 6 | H2RX51_3 == 7 | H2RX51_3 == 8)
replace H2RX52_3 = . if (H2RX52_3 == 7)
replace H2RX53_3 = . if (H2RX53_3 == 997 | H2RX53_3 == 998)
replace H2RX54_3 = . if (H2RX54_3 == 6 | H2RX54_3 == 7 | H2RX54_3 == 8)
replace H2RX55M3 = . if (H2RX55M3 == 97 | H2RX55M3 == 98)
replace H2RX55Y3 = . if (H2RX55Y3 == 996 | H2RX55Y3 == 997 | H2RX55Y3 == 998)
replace H2RX56_3 = . if (H2RX56_3 == 6 | H2RX56_3 == 7 | H2RX56_3 == 8)
replace H2RX57M3 = . if (H2RX57M3 == 97 | H2RX57M3 == 98)
replace H2RX57Y3 = . if (H2RX57Y3 == 996 | H2RX57Y3 == 997 | H2RX57Y3 == 998)
replace H2RX58_3 = . if (H2RX58_3 == 997)
replace H2RX59_3 = . if (H2RX59_3 == 7)
replace H2RX60_3 = . if (H2RX60_3 == 6 | H2RX60_3 == 7 | H2RX60_3 == 8)
replace H2RX61M3 = . if (H2RX61M3 == 97 | H2RX61M3 == 98)
replace H2RX61Y3 = . if (H2RX61Y3 == 996 | H2RX61Y3 == 997 | H2RX61Y3 == 998)
replace H2RX62_3 = . if (H2RX62_3 == 6 | H2RX62_3 == 7 | H2RX62_3 == 8)
replace H2RX63M3 = . if (H2RX63M3 == 97 | H2RX63M3 == 98)
replace H2RX63Y3 = . if (H2RX63Y3 == 996 | H2RX63Y3 == 997 | H2RX63Y3 == 998)
replace H2RX64_3 = . if (H2RX64_3 == 997)
replace H2RX65_3 = . if (H2RX65_3 == 7)
replace H2RX66_3 = . if (H2RX66_3 == 6 | H2RX66_3 == 7 | H2RX66_3 == 8)
replace H2RX67M3 = . if (H2RX67M3 == 97 | H2RX67M3 == 98)
replace H2RX67Y3 = . if (H2RX67Y3 == 996 | H2RX67Y3 == 997 | H2RX67Y3 == 998)
replace H2RX68_3 = . if (H2RX68_3 == 6 | H2RX68_3 == 7 | H2RX68_3 == 8)
replace H2RX69M3 = . if (H2RX69M3 == 97 | H2RX69M3 == 98)
replace H2RX69Y3 = . if (H2RX69Y3 == 996 | H2RX69Y3 == 997 | H2RX69Y3 == 998)
replace H2RX70_3 = . if (H2RX70_3 == 997)
replace H2RX71_3 = . if (H2RX71_3 == 7)
replace H2NR19_3 = . if (H2NR19_3 == 96 | H2NR19_3 == 97 | H2NR19_3 == 98)
replace H2NR20_3 = . if (H2NR20_3 == 6 | H2NR20_3 == 7 | H2NR20_3 == 8)
replace H2NR21_3 = . if (H2NR21_3 == 6 | H2NR21_3 == 7 | H2NR21_3 == 8)
replace H2NR22_3 = . if (H2NR22_3 == 6 | H2NR22_3 == 7 | H2NR22_3 == 8)
replace H2NR23_3 = . if (H2NR23_3 == 6 | H2NR23_3 == 7 | H2NR23_3 == 8)
replace H2NR24_3 = . if (H2NR24_3 == 6 | H2NR24_3 == 7 | H2NR24_3 == 8)
replace H2NR25_3 = . if (H2NR25_3 == 6 | H2NR25_3 == 7 | H2NR25_3 == 8)
replace H2NR26A3 = . if (H2NR26A3 == 6 | H2NR26A3 == 7 | H2NR26A3 == 8)
replace H2NR26B3 = . if (H2NR26B3 == 6 | H2NR26B3 == 7 | H2NR26B3 == 8)
replace H2NR26C3 = . if (H2NR26C3 == 6 | H2NR26C3 == 7 | H2NR26C3 == 8)
replace H2NR26D3 = . if (H2NR26D3 == 6 | H2NR26D3 == 7 | H2NR26D3 == 8)
replace H2NR26E3 = . if (H2NR26E3 == 6 | H2NR26E3 == 7 | H2NR26E3 == 8)
replace H2NR26F3 = . if (H2NR26F3 == 6 | H2NR26F3 == 7 | H2NR26F3 == 8)
replace H2NR27A3 = . if (H2NR27A3 == 6 | H2NR27A3 == 7 | H2NR27A3 == 8)
replace H2NR27B3 = . if (H2NR27B3 == 6 | H2NR27B3 == 7 | H2NR27B3 == 8)
replace H2NR27C3 = . if (H2NR27C3 == 6 | H2NR27C3 == 7 | H2NR27C3 == 8)
replace H2NR27D3 = . if (H2NR27D3 == 6 | H2NR27D3 == 7 | H2NR27D3 == 8)
replace H2NR27E3 = . if (H2NR27E3 == 6 | H2NR27E3 == 7 | H2NR27E3 == 8)
replace H2NR28A3 = . if (H2NR28A3 == 6 | H2NR28A3 == 7 | H2NR28A3 == 8)
replace H2NR28B3 = . if (H2NR28B3 == 6 | H2NR28B3 == 7 | H2NR28B3 == 8)
replace H2NR28C3 = . if (H2NR28C3 == 6 | H2NR28C3 == 7 | H2NR28C3 == 8)
replace H2NR28D3 = . if (H2NR28D3 == 6 | H2NR28D3 == 7 | H2NR28D3 == 8)
replace H2NR28E3 = . if (H2NR28E3 == 6 | H2NR28E3 == 7 | H2NR28E3 == 8)
replace H2NR28F3 = . if (H2NR28F3 == 6 | H2NR28F3 == 7 | H2NR28F3 == 8)
replace H2NR28G3 = . if (H2NR28G3 == 6 | H2NR28G3 == 7 | H2NR28G3 == 8)
replace H2NR29A3 = . if (H2NR29A3 == 6 | H2NR29A3 == 7 | H2NR29A3 == 8)
replace H2NR29B3 = . if (H2NR29B3 == 6 | H2NR29B3 == 7 | H2NR29B3 == 8)
replace H2NR29C3 = . if (H2NR29C3 == 6 | H2NR29C3 == 7 | H2NR29C3 == 8)
replace H2NR29D3 = . if (H2NR29D3 == 6 | H2NR29D3 == 7 | H2NR29D3 == 8)
replace H2NR29E3 = . if (H2NR29E3 == 6 | H2NR29E3 == 7 | H2NR29E3 == 8)
replace H2NR29F3 = . if (H2NR29F3 == 6 | H2NR29F3 == 7 | H2NR29F3 == 8)
replace H2NR29G3 = . if (H2NR29G3 == 6 | H2NR29G3 == 7 | H2NR29G3 == 8)
replace H2NR29H3 = . if (H2NR29H3 == 6 | H2NR29H3 == 7 | H2NR29H3 == 8)
replace H2NR30_3 = . if (H2NR30_3 == 6 | H2NR30_3 == 7 | H2NR30_3 == 8)
replace H2NR31_3 = . if (H2NR31_3 == 6 | H2NR31_3 == 7 | H2NR31_3 == 8)
replace H2NR32M3 = . if (H2NR32M3 == 97 | H2NR32M3 == 98)
replace H2NR32Y3 = . if (H2NR32Y3 == 996 | H2NR32Y3 == 997 | H2NR32Y3 == 998)
replace H2NR33_3 = . if (H2NR33_3 == 6 | H2NR33_3 == 7 | H2NR33_3 == 8)
replace H2NR34M3 = . if (H2NR34M3 == 97 | H2NR34M3 == 98)
replace H2NR34Y3 = . if (H2NR34Y3 == 996 | H2NR34Y3 == 997 | H2NR34Y3 == 998)
replace H2NR35_3 = . if (H2NR35_3 == 6 | H2NR35_3 == 7 | H2NR35_3 == 8)
replace H2NR36M3 = . if (H2NR36M3 == 97 | H2NR36M3 == 98)
replace H2NR36Y3 = . if (H2NR36Y3 == 996 | H2NR36Y3 == 997 | H2NR36Y3 == 998)
replace H2NR37_3 = . if (H2NR37_3 == 6 | H2NR37_3 == 7 | H2NR37_3 == 8)
replace H2NR38M3 = . if (H2NR38M3 == 97 | H2NR38M3 == 98)
replace H2NR38Y3 = . if (H2NR38Y3 == 996 | H2NR38Y3 == 997 | H2NR38Y3 == 998)
replace H2NR39_3 = . if (H2NR39_3 == 6 | H2NR39_3 == 7 | H2NR39_3 == 8)
replace H2NR40M3 = . if (H2NR40M3 == 97 | H2NR40M3 == 98)
replace H2NR40Y3 = . if (H2NR40Y3 == 996 | H2NR40Y3 == 997 | H2NR40Y3 == 998)
replace H2NR41_3 = . if (H2NR41_3 == 6 | H2NR41_3 == 7 | H2NR41_3 == 8)
replace H2NR42M3 = . if (H2NR42M3 == 96 | H2NR42M3 == 97 | H2NR42M3 == 98)
replace H2NR42Y3 = . if (H2NR42Y3 == 996 | H2NR42Y3 == 997 | H2NR42Y3 == 998)
replace H2NR43M3 = . if (H2NR43M3 == 96 | H2NR43M3 == 97 | H2NR43M3 == 98)
replace H2NR43Y3 = . if (H2NR43Y3 == 996 | H2NR43Y3 == 997 | H2NR43Y3 == 998)
replace H2NR44_3 = . if (H2NR44_3 == 7)
replace H2NR45_3 = . if (H2NR45_3 == 6 | H2NR45_3 == 7 | H2NR45_3 == 8)
replace H2NR46A3 = . if (H2NR46A3 == 97 | H2NR46A3 == 98)
replace H2NR46B3 = . if (H2NR46B3 == 97 | H2NR46B3 == 98)
replace H2NR46C3 = . if (H2NR46C3 == 97 | H2NR46C3 == 98)
replace H2NR47_3 = . if (H2NR47_3 == 6 | H2NR47_3 == 7 | H2NR47_3 == 8)
replace H2NR48_3 = . if (H2NR48_3 == 6 | H2NR48_3 == 7 | H2NR48_3 == 8)
replace H2NR49_3 = . if (H2NR49_3 == 6 | H2NR49_3 == 7 | H2NR49_3 == 8)
replace H2NR50A3 = . if (H2NR50A3 == 97 | H2NR50A3 == 98)
replace H2NR50B3 = . if (H2NR50B3 == 97 | H2NR50B3 == 98)
replace H2NR50C3 = . if (H2NR50C3 == 97 | H2NR50C3 == 98)
replace H2NR51_3 = . if (H2NR51_3 == 6 | H2NR51_3 == 7 | H2NR51_3 == 8)
replace H2NR52_3 = . if (H2NR52_3 == 7)
replace H2NR53_3 = . if (H2NR53_3 == 6 | H2NR53_3 == 7 | H2NR53_3 == 8)
replace H2NR54_3 = . if (H2NR54_3 == 6 | H2NR54_3 == 7 | H2NR54_3 == 8)
replace H2NR55A3 = . if (H2NR55A3 == 97 | H2NR55A3 == 98)
replace H2NR55B3 = . if (H2NR55B3 == 97 | H2NR55B3 == 98)
replace H2NR55C3 = . if (H2NR55C3 == 97 | H2NR55C3 == 98)
replace H2NR56_3 = . if (H2NR56_3 == 6 | H2NR56_3 == 7 | H2NR56_3 == 8)
replace H2NR57_3 = . if (H2NR57_3 == 7)
replace H2NR58_3 = . if (H2NR58_3 == 996 | H2NR58_3 == 997 | H2NR58_3 == 998)
replace H2NR59_3 = . if (H2NR59_3 == 6 | H2NR59_3 == 7 | H2NR59_3 == 8)
replace H2NR60M3 = . if (H2NR60M3 == 97 | H2NR60M3 == 98)
replace H2NR60Y3 = . if (H2NR60Y3 == 996 | H2NR60Y3 == 997 | H2NR60Y3 == 998)
replace H2NR61_3 = . if (H2NR61_3 == 6 | H2NR61_3 == 7 | H2NR61_3 == 8)
replace H2NR62M3 = . if (H2NR62M3 == 97 | H2NR62M3 == 98)
replace H2NR62Y3 = . if (H2NR62Y3 == 996 | H2NR62Y3 == 997 | H2NR62Y3 == 998)
replace H2NR63_3 = . if (H2NR63_3 == 97)
replace H2NR64_3 = . if (H2NR64_3 == 7)
replace H2NR65_3 = . if (H2NR65_3 == 6 | H2NR65_3 == 7 | H2NR65_3 == 8)
replace H2NR66M3 = . if (H2NR66M3 == 97 | H2NR66M3 == 98)
replace H2NR66Y3 = . if (H2NR66Y3 == 996 | H2NR66Y3 == 997 | H2NR66Y3 == 998)
replace H2NR67_3 = . if (H2NR67_3 == 6 | H2NR67_3 == 7 | H2NR67_3 == 8)
replace H2NR68M3 = . if (H2NR68M3 == 97 | H2NR68M3 == 98)
replace H2NR68Y3 = . if (H2NR68Y3 == 996 | H2NR68Y3 == 997 | H2NR68Y3 == 998)
replace H2NR69_3 = . if (H2NR69_3 == 997)
replace H2NR70_3 = . if (H2NR70_3 == 7)
replace H2NR71_3 = . if (H2NR71_3 == 6 | H2NR71_3 == 7 | H2NR71_3 == 8)
replace H2NR72M3 = . if (H2NR72M3 == 97 | H2NR72M3 == 98)
replace H2NR72Y3 = . if (H2NR72Y3 == 996 | H2NR72Y3 == 997 | H2NR72Y3 == 998)
replace H2NR73_3 = . if (H2NR73_3 == 6 | H2NR73_3 == 7 | H2NR73_3 == 8)
replace H2NR74M3 = . if (H2NR74M3 == 97 | H2NR74M3 == 98)
replace H2NR74Y3 = . if (H2NR74Y3 == 996 | H2NR74Y3 == 997 | H2NR74Y3 == 998)
replace H2NR75_3 = . if (H2NR75_3 == 97)
replace H2NR76_3 = . if (H2NR76_3 == 7)
replace H2NR77_3 = . if (H2NR77_3 == 6 | H2NR77_3 == 7 | H2NR77_3 == 8)
replace H2NR78_3 = . if (H2NR78_3 == 97)
replace H2NR79 = . if (H2NR79 == 6 | H2NR79 == 7 | H2NR79 == 8)
replace H2NR80 = . if (H2NR80 == 96 | H2NR80 == 97 | H2NR80 == 98)
replace H2NR81 = . if (H2NR81 == 96 | H2NR81 == 97 | H2NR81 == 98)
replace H2NR82 = . if (H2NR82 == 6 | H2NR82 == 7 | H2NR82 == 8)
replace H2NR83 = . if (H2NR83 == 6 | H2NR83 == 7 | H2NR83 == 8)
replace H2NR84 = . if (H2NR84 == 6 | H2NR84 == 7 | H2NR84 == 8)
replace H2NR85 = . if (H2NR85 == 97)
replace H2NR86 = . if (H2NR86 == 97)
replace H2NR87 = . if (H2NR87 == 6 | H2NR87 == 7 | H2NR87 == 8)
replace H2NR88 = . if (H2NR88 == 7)
replace H2BC1 = . if (H2BC1 >= 6 & H2BC1 <= 9)
replace H2BC2 = . if (H2BC2 >= 6 & H2BC2 <= 9)
replace H2BC3 = . if (H2BC3 >= 6 & H2BC3 <= 9)
replace H2BC4 = . if (H2BC4 >= 6 & H2BC4 <= 9)
replace H2BC5 = . if (H2BC5 >= 6 & H2BC5 <= 9)
replace H2BC6 = . if (H2BC6 >= 6 & H2BC6 <= 9)
replace H2BC7 = . if (H2BC7 >= 6 & H2BC7 <= 9)
replace H2BC8 = . if (H2BC8 >= 6 & H2BC8 <= 9)
replace H2TO1 = . if (H2TO1 >= 6 & H2TO1 <= 9)
replace H2TO3 = . if (H2TO3 == 6 | H2TO3 == 7 | H2TO3 == 8)
replace H2TO4M = . if (H2TO4M >= 96 & H2TO4M <= 99)
replace H2TO4Y = . if (H2TO4Y == 996 | H2TO4Y == 997 | H2TO4Y == 998)
replace H2TO5 = . if (H2TO5 == 96 | H2TO5 == 97 | H2TO5 == 98)
replace H2TO6M = . if (H2TO6M >= 96 & H2TO6M <= 99)
replace H2TO6Y = . if (H2TO6Y == 996 | H2TO6Y == 997 | H2TO6Y == 998)
replace H2TO7 = . if (H2TO7 == 96 | H2TO7 == 97 | H2TO7 == 98)
replace H2TO8 = . if (H2TO8 == 96 | H2TO8 == 97 | H2TO8 == 98)
replace H2TO9 = . if (H2TO9 == 6 | H2TO9 == 7 | H2TO9 == 8)
replace H2TO10 = . if (H2TO10 >= 6 & H2TO10 <= 9)
replace H2TO11 = . if (H2TO11 == 6 | H2TO11 == 7 | H2TO11 == 8)
replace H2TO12 = . if (H2TO12 >= 96 & H2TO12 <= 99)
replace H2TO14 = . if (H2TO14 == 96 | H2TO14 == 97 | H2TO14 == 98)
replace H2TO15 = . if (H2TO15 == 6 | H2TO15 == 7 | H2TO15 == 8)
replace H2TO16 = . if (H2TO16 == 6 | H2TO16 == 7 | H2TO16 == 8)
replace H2TO18M = . if (H2TO18M >= 96 & H2TO18M <= 99)
replace H2TO18Y = . if (H2TO18Y == 996 | H2TO18Y == 997 | H2TO18Y == 998)
replace H2TO19 = . if (H2TO19 == 96 | H2TO19 == 97 | H2TO19 == 98)
replace H2TO20 = . if (H2TO20 == 96 | H2TO20 == 97 | H2TO20 == 98)
replace H2TO21 = . if (H2TO21 == 96 | H2TO21 == 97 | H2TO21 == 98)
replace H2TO22 = . if (H2TO22 == 96 | H2TO22 == 97 | H2TO22 == 98)
replace H2TO23 = . if (H2TO23 == 96 | H2TO23 == 97 | H2TO23 == 98)
replace H2TO24 = . if (H2TO24 == 96 | H2TO24 == 97 | H2TO24 == 98)
replace H2TO25 = . if (H2TO25 == 6 | H2TO25 == 7 | H2TO25 == 8)
replace H2TO26 = . if (H2TO26 == 6 | H2TO26 == 7 | H2TO26 == 8)
replace H2TO27 = . if (H2TO27 == 6 | H2TO27 == 7 | H2TO27 == 8)
replace H2TO28 = . if (H2TO28 == 6 | H2TO28 == 7 | H2TO28 == 8)
replace H2TO29 = . if (H2TO29 == 6 | H2TO29 == 7 | H2TO29 == 8)
replace H2TO30 = . if (H2TO30 == 6 | H2TO30 == 7 | H2TO30 == 8)
replace H2TO31 = . if (H2TO31 == 6 | H2TO31 == 7 | H2TO31 == 8)
replace H2TO32 = . if (H2TO32 == 6 | H2TO32 == 7 | H2TO32 == 8)
replace H2TO33 = . if (H2TO33 == 6 | H2TO33 == 7 | H2TO33 == 8)
replace H2TO34 = . if (H2TO34 == 6 | H2TO34 == 7 | H2TO34 == 8)
replace H2TO35 = . if (H2TO35 == 6 | H2TO35 == 7 | H2TO35 == 8)
replace H2TO36 = . if (H2TO36 == 6 | H2TO36 == 7 | H2TO36 == 8)
replace H2TO37 = . if (H2TO37 == 6 | H2TO37 == 7 | H2TO37 == 8)
replace H2TO38 = . if (H2TO38 == 6 | H2TO38 == 7 | H2TO38 == 8)
replace H2TO39 = . if (H2TO39 == 6 | H2TO39 == 7 | H2TO39 == 8)
replace H2TO40 = . if (H2TO40 == 6 | H2TO40 == 7 | H2TO40 == 8)
replace H2TO41 = . if (H2TO41 >= 6 & H2TO41 <= 9)
replace H2TO42 = . if (H2TO42 == 6 | H2TO42 == 7 | H2TO42 == 8)
replace H2TO44 = . if (H2TO44 == 6 | H2TO44 == 7 | H2TO44 == 8)
replace H2TO45 = . if (H2TO45 == 9996 | H2TO45 == 9997 | H2TO45 == 9998)
replace H2TO46 = . if (H2TO46 == 996 | H2TO46 == 997 | H2TO46 == 998)
replace H2TO47 = . if (H2TO47 == 96 | H2TO47 == 97 | H2TO47 == 98)
replace H2TO48 = . if (H2TO48 >= 6 & H2TO48 <= 9)
replace H2TO49 = . if (H2TO49 == 97)
replace H2TO50 = . if (H2TO50 >= 6 & H2TO50 <= 9)
replace H2TO51 = . if (H2TO51 == 996 | H2TO51 == 997 | H2TO51 == 998)
replace H2TO52 = . if (H2TO52 == 996 | H2TO52 == 997 | H2TO52 == 998)
replace H2TO54 = . if (H2TO54 >= 6 & H2TO54 <= 9)
replace H2TO55 = . if (H2TO55 == 996 | H2TO55 == 997 | H2TO55 == 998)
replace H2TO56 = . if (H2TO56 == 996 | H2TO56 == 997 | H2TO56 == 998)
replace H2TO58 = . if (H2TO58 >= 6 & H2TO58 <= 9)
replace H2TO59 = . if (H2TO59 == 9996 | H2TO59 == 9997 | H2TO59 == 9998)
replace H2TO60 = . if (H2TO60 == 9996 | H2TO60 == 9997 | H2TO60 == 9998)
replace H2TO61 = . if (H2TO61 >= 6 & H2TO61 <= 9)
replace H2TO62 = . if (H2TO62 == 7)
replace H2TO63 = . if (H2TO63 == 97)
replace H2TO64 = . if (H2TO64 == 7)
replace H2TO65 = . if (H2TO65 >= 6 & H2TO65 <= 9)
replace H2TO66 = . if (H2TO66 >= 6 & H2TO66 <= 9)
replace H2TO67 = . if (H2TO67 >= 6 & H2TO67 <= 9)
replace H2TO68 = . if (H2TO68 >= 6 & H2TO68 <= 9)
replace H2DS1 = . if (H2DS1 == 6 | H2DS1 == 8 | H2DS1 == 9)
replace H2DS2 = . if (H2DS2 == 6 | H2DS2 == 8 | H2DS2 == 9)
replace H2DS3 = . if (H2DS3 == 6 | H2DS3 == 8 | H2DS3 == 9)
replace H2DS4 = . if (H2DS4 == 6 | H2DS4 == 8 | H2DS4 == 9)
replace H2DS5 = . if (H2DS5 == 6 | H2DS5 == 8 | H2DS5 == 9)
replace H2DS6 = . if (H2DS6 == 6 | H2DS6 == 8 | H2DS6 == 9)
replace H2DS7 = . if (H2DS7 == 6 | H2DS7 == 8 | H2DS7 == 9)
replace H2DS8 = . if (H2DS8 == 6 | H2DS8 == 8 | H2DS8 == 9)
replace H2DS9 = . if (H2DS9 == 6 | H2DS9 == 8 | H2DS9 == 9)
replace H2DS10 = . if (H2DS10 == 6 | H2DS10 == 8 | H2DS10 == 9)
replace H2DS11 = . if (H2DS11 == 6 | H2DS11 == 8 | H2DS11 == 9)
replace H2DS12 = . if (H2DS12 == 6 | H2DS12 == 8 | H2DS12 == 9)
replace H2DS13 = . if (H2DS13 == 6 | H2DS13 == 8 | H2DS13 == 9)
replace H2DS14 = . if (H2DS14 >= 6 & H2DS14 <= 9)
replace H2FV1 = . if (H2FV1 == 6 | H2FV1 == 8 | H2FV1 == 9)
replace H2FV2 = . if (H2FV2 == 6 | H2FV2 == 8 | H2FV2 == 9)
replace H2FV3 = . if (H2FV3 == 6 | H2FV3 == 8 | H2FV3 == 9)
replace H2FV4 = . if (H2FV4 == 6 | H2FV4 == 8 | H2FV4 == 9)
replace H2FV5 = . if (H2FV5 == 6 | H2FV5 == 8 | H2FV5 == 9)
replace H2FV6 = . if (H2FV6 == 6 | H2FV6 == 8 | H2FV6 == 9)
replace H2FV7 = . if (H2FV7 == 6 | H2FV7 == 8 | H2FV7 == 9)
replace H2FV8 = . if (H2FV8 >= 6 & H2FV8 <= 9)
replace H2FV9 = . if (H2FV9 >= 6 & H2FV9 <= 9)
replace H2FV10 = . if (H2FV10 >= 6 & H2FV10 <= 9)
replace H2FV11 = . if (H2FV11 >= 6 & H2FV11 <= 9)
replace H2FV12 = . if (H2FV12 == 6 | H2FV12 == 7 | H2FV12 == 8)
replace H2FV13 = . if (H2FV13 == 6 | H2FV13 == 7 | H2FV13 == 8)
replace H2FV14 = . if (H2FV14 >= 6 & H2FV14 <= 9)
replace H2FV15A = . if (H2FV15A == 6 | H2FV15A == 7 | H2FV15A == 8)
replace H2FV15B = . if (H2FV15B == 6 | H2FV15B == 7 | H2FV15B == 8)
replace H2FV15C = . if (H2FV15C == 6 | H2FV15C == 7 | H2FV15C == 8)
replace H2FV15D = . if (H2FV15D == 6 | H2FV15D == 7 | H2FV15D == 8)
replace H2FV16 = . if (H2FV16 >= 6 & H2FV16 <= 9)
replace H2FV17 = . if (H2FV17 >= 6 & H2FV17 <= 9)
replace H2FV18 = . if (H2FV18 >= 96 & H2FV18 <= 99)
replace H2FV19 = . if (H2FV19 >= 6 & H2FV19 <= 9)
replace H2FV20 = . if (H2FV20 >= 996 & H2FV20 <= 999)
replace H2FV21M = . if (H2FV21M >= 96 & H2FV21M <= 99)
replace H2FV21Y = . if (H2FV21Y == 996 | H2FV21Y == 997 | H2FV21Y == 998)
replace H2FV22 = . if (H2FV22 >= 6 & H2FV22 <= 9)
replace H2JO1 = . if (H2JO1 == 6 | H2JO1 == 7 | H2JO1 == 8)
replace H2JO2 = . if (H2JO2 == 6 | H2JO2 == 7 | H2JO2 == 8)
replace H2JO3 = . if (H2JO3 == 6 | H2JO3 == 7 | H2JO3 == 8)
replace H2JO4 = . if (H2JO4 == 6 | H2JO4 == 7 | H2JO4 == 8)
replace H2JO5 = . if (H2JO5 == 6 | H2JO5 == 7 | H2JO5 == 8)
replace H2JO6A = . if (H2JO6A == 6 | H2JO6A == 7 | H2JO6A == 8)
replace H2JO6B = . if (H2JO6B == 6 | H2JO6B == 7 | H2JO6B == 8)
replace H2JO6C = . if (H2JO6C == 6 | H2JO6C == 7 | H2JO6C == 8)
replace H2JO6D = . if (H2JO6D == 6 | H2JO6D == 7 | H2JO6D == 8)
replace H2JO6E = . if (H2JO6E == 6 | H2JO6E == 7 | H2JO6E == 8)
replace H2JO7 = . if (H2JO7 == 6 | H2JO7 == 7 | H2JO7 == 8)
replace H2JO8A = . if (H2JO8A == 6 | H2JO8A == 7 | H2JO8A == 8)
replace H2JO8B = . if (H2JO8B == 6 | H2JO8B == 7 | H2JO8B == 8)
replace H2JO8C = . if (H2JO8C == 6 | H2JO8C == 7 | H2JO8C == 8)
replace H2JO8D = . if (H2JO8D == 6 | H2JO8D == 7 | H2JO8D == 8)
replace H2JO8E = . if (H2JO8E == 6 | H2JO8E == 7 | H2JO8E == 8)
replace H2JO9 = . if (H2JO9 == 6 | H2JO9 == 7 | H2JO9 == 8)
replace H2JO10A = . if (H2JO10A == 6 | H2JO10A == 7 | H2JO10A == 8)
replace H2JO10B = . if (H2JO10B == 6 | H2JO10B == 7 | H2JO10B == 8)
replace H2JO10C = . if (H2JO10C == 6 | H2JO10C == 7 | H2JO10C == 8)
replace H2JO10D = . if (H2JO10D == 6 | H2JO10D == 7 | H2JO10D == 8)
replace H2JO10E = . if (H2JO10E == 6 | H2JO10E == 7 | H2JO10E == 8)
replace H2JO11 = . if (H2JO11 == 6 | H2JO11 == 7 | H2JO11 == 8)
replace H2JO12 = . if (H2JO12 == 6 | H2JO12 == 7 | H2JO12 == 8)
replace H2JO13 = . if (H2JO13 == 6 | H2JO13 == 7 | H2JO13 == 8)
replace H2JO14A = . if (H2JO14A == 6 | H2JO14A == 7 | H2JO14A == 8)
replace H2JO14B = . if (H2JO14B == 6 | H2JO14B == 7 | H2JO14B == 8)
replace H2JO14C = . if (H2JO14C == 6 | H2JO14C == 7 | H2JO14C == 8)
replace H2JO14D = . if (H2JO14D == 6 | H2JO14D == 7 | H2JO14D == 8)
replace H2JO14E = . if (H2JO14E == 6 | H2JO14E == 7 | H2JO14E == 8)
replace H2JO16 = . if (H2JO16 == 6 | H2JO16 == 7 | H2JO16 == 8)
replace H2MP1 = . if (H2MP1 >= 6 & H2MP1 <= 9)
replace H2MP2 = . if (H2MP2 >= 6 & H2MP2 <= 9)
replace H2MP3 = . if (H2MP3 >= 6 & H2MP3 <= 9)
replace H2MP4 = . if (H2MP4 >= 6 & H2MP4 <= 9)
replace H2FP1 = . if (H2FP1 >= 6 & H2FP1 <= 9)
replace H2FP2 = . if (H2FP2 >= 6 & H2FP2 <= 9)
replace H2FP3 = . if (H2FP3 >= 6 & H2FP3 <= 9)
replace H2FP4 = . if (H2FP4 == 96 | H2FP4 == 97 | H2FP4 == 98)
replace H2FP5M = . if (H2FP5M >= 96 & H2FP5M <= 99)
replace H2FP5D = . if (H2FP5D >= 96 & H2FP5D <= 99)
replace H2FP6 = . if (H2FP6 == 6 | H2FP6 == 7 | H2FP6 == 8)
replace H2FP7 = . if (H2FP7 >= 96 & H2FP7 <= 99)
replace H2FP8 = . if (H2FP8 == 6 | H2FP8 == 7 | H2FP8 == 8)
replace H2FP9 = . if (H2FP9 >= 6 & H2FP9 <= 9)
replace H2FP10 = . if (H2FP10 == 6 | H2FP10 == 7 | H2FP10 == 8)
replace H2FP11 = . if (H2FP11 == 96 | H2FP11 == 97 | H2FP11 == 98)
replace H2FP12M1 = . if (H2FP12M1 == 96 | H2FP12M1 == 97 | H2FP12M1 == 98)
replace H2FP12Y1 = . if (H2FP12Y1 == 996 | H2FP12Y1 == 997 | H2FP12Y1 == 998)
replace H2FP14_1 = . if (H2FP14_1 == 7)
replace H2FP12M2 = . if (H2FP12M2 == 96 | H2FP12M2 == 97 | H2FP12M2 == 98)
replace H2FP12Y2 = . if (H2FP12Y2 == 996 | H2FP12Y2 == 997 | H2FP12Y2 == 998)
replace H2FP14_2 = . if (H2FP14_2 == 7)
replace H2FP12M3 = . if (H2FP12M3 == 96 | H2FP12M3 == 97 | H2FP12M3 == 98)
replace H2FP12Y3 = . if (H2FP12Y3 == 996 | H2FP12Y3 == 997 | H2FP12Y3 == 998)
replace H2FP14_3 = . if (H2FP14_3 == 7)
replace H2FP16_1 = . if (H2FP16_1 == 6 | H2FP16_1 == 7 | H2FP16_1 == 8)
replace H2FP17A1 = . if (H2FP17A1 == 97 | H2FP17A1 == 98)
replace H2FP17B1 = . if (H2FP17B1 == 97 | H2FP17B1 == 98)
replace H2FP17C1 = . if (H2FP17C1 == 97 | H2FP17C1 == 98)
replace H2FP18_1 = . if (H2FP18_1 == 6 | H2FP18_1 == 7 | H2FP18_1 == 8)
replace H2FP19_1 = . if (H2FP19_1 == 6 | H2FP19_1 == 7 | H2FP19_1 == 8)
replace H2FP20_1 = . if (H2FP20_1 == 6 | H2FP20_1 == 7 | H2FP20_1 == 8)
replace H2FP21_1 = . if (H2FP21_1 == 6 | H2FP21_1 == 7 | H2FP21_1 == 8)
replace H2FP22_1 = . if (H2FP22_1 == 6 | H2FP22_1 == 7 | H2FP22_1 == 8)
replace H2FP23_1 = . if (H2FP23_1 == 6 | H2FP23_1 == 7 | H2FP23_1 == 8)
replace H2FP24M1 = . if (H2FP24M1 >= 96 & H2FP24M1 <= 99)
replace H2FP24Y1 = . if (H2FP24Y1 == 996 | H2FP24Y1 == 997 | H2FP24Y1 == 998)
replace H2FP25_1 = . if (H2FP25_1 == 6 | H2FP25_1 == 7 | H2FP25_1 == 8)
replace H2FP26_1 = . if (H2FP26_1 == 6 | H2FP26_1 == 7 | H2FP26_1 == 8)
replace H2FP27A1 = . if (H2FP27A1 == 6 | H2FP27A1 == 7 | H2FP27A1 == 8)
replace H2FP28A1 = . if (H2FP28A1 == 6 | H2FP28A1 == 7 | H2FP28A1 == 8)
replace H2F29MA1 = . if (H2F29MA1 == 96 | H2F29MA1 == 97)
replace H2F29YA1 = . if (H2F29YA1 == 996 | H2F29YA1 == 997)
replace H2FP30A1 = . if (H2FP30A1 == 6 | H2FP30A1 == 7 | H2FP30A1 == 8)
replace H2FP31A1 = . if (H2FP31A1 == 6 | H2FP31A1 == 7 | H2FP31A1 == 8)
replace H2FP32A1 = . if (H2FP32A1 == 6 | H2FP32A1 == 7 | H2FP32A1 == 8)
replace H2FP33A1 = . if (H2FP33A1 == 6 | H2FP33A1 == 7 | H2FP33A1 == 8)
replace H2FP34A1 = . if (H2FP34A1 == 6 | H2FP34A1 == 7 | H2FP34A1 == 8)
replace H2FP35A1 = . if (H2FP35A1 == 6 | H2FP35A1 == 7 | H2FP35A1 == 8)
replace H2FP36A1 = . if (H2FP36A1 == 6 | H2FP36A1 == 7 | H2FP36A1 == 8)
replace H2FP37A1 = . if (H2FP37A1 == 6 | H2FP37A1 == 7 | H2FP37A1 == 8)
replace H2FP38A1 = . if (H2FP38A1 == 997 | H2FP38A1 == 998)
replace H2FP16_2 = . if (H2FP16_2 == 6 | H2FP16_2 == 7 | H2FP16_2 == 8)
replace H2FP17A2 = . if (H2FP17A2 == 97 | H2FP17A2 == 98)
replace H2FP17B2 = . if (H2FP17B2 == 97 | H2FP17B2 == 98)
replace H2FP17C2 = . if (H2FP17C2 == 97 | H2FP17C2 == 98)
replace H2FP18_2 = . if (H2FP18_2 == 6 | H2FP18_2 == 7 | H2FP18_2 == 8)
replace H2FP19_2 = . if (H2FP19_2 == 6 | H2FP19_2 == 7 | H2FP19_2 == 8)
replace H2FP20_2 = . if (H2FP20_2 == 6 | H2FP20_2 == 7 | H2FP20_2 == 8)
replace H2FP21_2 = . if (H2FP21_2 == 6 | H2FP21_2 == 7 | H2FP21_2 == 8)
replace H2FP22_2 = . if (H2FP22_2 == 6 | H2FP22_2 == 7 | H2FP22_2 == 8)
replace H2FP23_2 = . if (H2FP23_2 == 6 | H2FP23_2 == 7 | H2FP23_2 == 8)
replace H2FP24M2 = . if (H2FP24M2 >= 96 & H2FP24M2 <= 99)
replace H2FP24Y2 = . if (H2FP24Y2 >= 996 & H2FP24Y2 <= 998)
replace H2FP25_2 = . if (H2FP25_2 == 7)
replace H2FP26_2 = . if (H2FP26_2 == 6 | H2FP26_2 == 7 | H2FP26_2 == 8)
replace H2FP27A2 = . if (H2FP27A2 == 6 | H2FP27A2 == 7 | H2FP27A2 == 8)
replace H2FP28A2 = . if (H2FP28A2 == 6 | H2FP28A2 == 7 | H2FP28A2 == 8)
replace H2F29MA2 = . if (H2F29MA2 >= 96 & H2F29MA2 <= 99)
replace H2F29YA2 = . if (H2F29YA2 == 996 | H2F29YA2 == 997 | H2F29YA2 == 998)
replace H2FP30A2 = . if (H2FP30A2 == 6 | H2FP30A2 == 7 | H2FP30A2 == 8)
replace H2FP31A2 = . if (H2FP31A2 == 7)
replace H2FP32A2 = . if (H2FP32A2 == 7)
replace H2FP33A2 = . if (H2FP33A2 == 6 | H2FP33A2 == 7 | H2FP33A2 == 8)
replace H2FP34A2 = . if (H2FP34A2 == 6 | H2FP34A2 == 7 | H2FP34A2 == 8)
replace H2FP35A2 = . if (H2FP35A2 == 6 | H2FP35A2 == 7 | H2FP35A2 == 8)
replace H2FP36A2 = . if (H2FP36A2 == 6 | H2FP36A2 == 7 | H2FP36A2 == 8)
replace H2FP37A2 = . if (H2FP37A2 == 6 | H2FP37A2 == 7 | H2FP37A2 == 8)
replace H2FP38A2 = . if (H2FP38A2 == 997 | H2FP38A2 == 998)
replace H2FP16_3 = . if (H2FP16_3 == 6 | H2FP16_3 == 7 | H2FP16_3 == 8)
replace H2FP17A3 = . if (H2FP17A3 == 97 | H2FP17A3 == 98)
replace H2FP17B3 = . if (H2FP17B3 == 97 | H2FP17B3 == 98)
replace H2FP17C3 = . if (H2FP17C3 == 97 | H2FP17C3 == 98)
replace H2FP18_3 = . if (H2FP18_3 == 6 | H2FP18_3 == 7 | H2FP18_3 == 8)
replace H2FP19_3 = . if (H2FP19_3 == 6 | H2FP19_3 == 7 | H2FP19_3 == 8)
replace H2FP20_3 = . if (H2FP20_3 == 6 | H2FP20_3 == 7 | H2FP20_3 == 8)
replace H2FP21_3 = . if (H2FP21_3 == 6 | H2FP21_3 == 7 | H2FP21_3 == 8)
replace H2FP22_3 = . if (H2FP22_3 == 6 | H2FP22_3 == 7 | H2FP22_3 == 8)
replace H2FP23_3 = . if (H2FP23_3 == 6 | H2FP23_3 == 7 | H2FP23_3 == 8)
replace H2FP24M3 = . if (H2FP24M3 >= 96 & H2FP24M3 <= 99)
replace H2FP24Y3 = . if (H2FP24Y3 == 996 | H2FP24Y3 == 997 | H2FP24Y3 == 998)
replace H2FP25_3 = . if (H2FP25_3 == 6 | H2FP25_3 == 7 | H2FP25_3 == 8)
replace H2FP26_3 = . if (H2FP26_3 == 6 | H2FP26_3 == 7 | H2FP26_3 == 8)
replace H2FP27A3 = . if (H2FP27A3 == 6 | H2FP27A3 == 7 | H2FP27A3 == 8)
replace H2FP28A3 = . if (H2FP28A3 == 6 | H2FP28A3 == 7 | H2FP28A3 == 8)
replace H2F29MA3 = . if (H2F29MA3 >= 96 & H2F29MA3 <= 99)
replace H2F29YA3 = . if (H2F29YA3 == 996 | H2F29YA3 == 997 | H2F29YA3 == 998)
replace H2FP30A3 = . if (H2FP30A3 == 6 | H2FP30A3 == 7 | H2FP30A3 == 8)
replace H2FP31A3 = . if (H2FP31A3 == 7)
replace H2FP32A3 = . if (H2FP32A3 == 7)
replace H2FP33A3 = . if (H2FP33A3 == 7)
replace H2FP34A3 = . if (H2FP34A3 == 7)
replace H2FP35A3 = . if (H2FP35A3 == 7)
replace H2FP36A3 = . if (H2FP36A3 == 7)
replace H2FP37A3 = . if (H2FP37A3 == 7)
replace H2FP38A3 = . if (H2FP38A3 == 997)
replace H2SU1 = . if (H2SU1 == 6 | H2SU1 == 8 | H2SU1 == 9)
replace H2SU2 = . if (H2SU2 == 6 | H2SU2 == 7 | H2SU2 == 8)
replace H2SU3 = . if (H2SU3 == 7)
replace H2SU4 = . if (H2SU4 == 6 | H2SU4 == 8 | H2SU4 == 9)
replace H2SU5 = . if (H2SU5 == 6 | H2SU5 == 7 | H2SU5 == 8)
replace H2SU6 = . if (H2SU6 == 6 | H2SU6 == 8 | H2SU6 == 9)
replace H2SU7 = . if (H2SU7 == 7 | H2SU7 == 8)
replace H2SU8 = . if (H2SU8 == 6 | H2SU8 == 8 | H2SU8 == 9)
replace H2SU9 = . if (H2SU9 == 6 | H2SU9 == 7 | H2SU9 == 8)
replace H2PA1 = . if (H2PA1 >= 6 & H2PA1 <= 9)
replace H2PA2 = . if (H2PA2 >= 6 & H2PA2 <= 9)
replace H2PA3 = . if (H2PA3 >= 6 & H2PA3 <= 9)
replace H2PA4 = . if (H2PA4 >= 6 & H2PA4 <= 9)
replace H2PA5 = . if (H2PA5 >= 6 & H2PA5 <= 9)
replace H2PA6 = . if (H2PA6 >= 6 & H2PA6 <= 9)
replace H2PA7 = . if (H2PA7 >= 6 & H2PA7 <= 9)
replace H2PR1 = . if (H2PR1 == 96 | H2PR1 == 98)
replace H2PR2 = . if (H2PR2 == 96 | H2PR2 == 98)
replace H2PR3 = . if (H2PR3 == 96 | H2PR3 == 98)
replace H2PR4 = . if (H2PR4 == 96 | H2PR4 == 98)
replace H2PR5 = . if (H2PR5 == 96 | H2PR5 == 98)
replace H2PR6 = . if (H2PR6 == 96 | H2PR6 == 98)
replace H2PR7 = . if (H2PR7 == 96 | H2PR7 == 98)
replace H2PR8 = . if (H2PR8 == 96 | H2PR8 == 98)
replace H2NB1 = . if (H2NB1 == 6 | H2NB1 == 8 | H2NB1 == 9)
replace H2NB2 = . if (H2NB2 == 6 | H2NB2 == 8 | H2NB2 == 9)
replace H2NB3 = . if (H2NB3 == 6 | H2NB3 == 8 | H2NB3 == 9)
replace H2NB4 = . if (H2NB4 == 6 | H2NB4 == 8 | H2NB4 == 9)
replace H2NB5 = . if (H2NB5 == 6 | H2NB5 == 8)
replace H2NB6 = . if (H2NB6 == 6 | H2NB6 == 8)
replace H2NB7 = . if (H2NB7 == 6 | H2NB7 == 8)
replace H2NB8 = . if (H2NB8 == 6 | H2NB8 == 8)
replace H2NB9 = . if (H2NB9 == 96 | H2NB9 == 97 | H2NB9 == 98)
replace H2NB10 = . if (H2NB10 == 96 | H2NB10 == 97 | H2NB10 == 98)
replace H2RE1 = . if (H2RE1 == 96 | H2RE1 == 98 | H2RE1 == 99)
replace H2RE2 = . if (H2RE2 == 6 | H2RE2 == 7 | H2RE2 == 8)
replace H2RE3 = . if (H2RE3 == 6 | H2RE3 == 7 | H2RE3 == 8)
replace H2RE4 = . if (H2RE4 == 6 | H2RE4 == 7 | H2RE4 == 8)
replace H2RE5 = . if (H2RE5 >= 6 & H2RE5 <= 9)
replace H2RE6 = . if (H2RE6 == 6 | H2RE6 == 7 | H2RE6 == 8)
replace H2RE7 = . if (H2RE7 == 6 | H2RE7 == 7 | H2RE7 == 8)
replace H2EE1 = . if (H2EE1 == 96 | H2EE1 == 97 | H2EE1 == 98)
replace H2EE2 = . if (H2EE2 == 96 | H2EE2 == 97 | H2EE2 == 98)
replace H2EE3 = . if (H2EE3 == 6 | H2EE3 == 7 | H2EE3 == 8)
replace H2EE4 = . if (H2EE4 >= 996 & H2EE4 <= 999)
replace H2EE5 = . if (H2EE5 >= 996 & H2EE5 <= 999)
replace H2EE6 = . if (H2EE6 >= 996 & H2EE6 <= 999)
replace H2EE7 = . if (H2EE7 >= 996 & H2EE7 <= 999)
replace H2EE8 = . if (H2EE8 >= 96 & H2EE8 <= 99)
replace H2EE9 = . if (H2EE9 == 6 | H2EE9 == 7 | H2EE9 == 8)
replace H2EE10 = . if (H2EE10 == 6 | H2EE10 == 7 | H2EE10 == 8)
replace H2EE11 = . if (H2EE11 == 6 | H2EE11 == 7 | H2EE11 == 8)
replace H2EE12 = . if (H2EE12 == 6 | H2EE12 == 7 | H2EE12 == 8)
replace H2EE13 = . if (H2EE13 == 6 | H2EE13 == 7 | H2EE13 == 8)
replace H2EE14 = . if (H2EE14 == 6 | H2EE14 == 7 | H2EE14 == 8)
replace H2EE15 = . if (H2EE15 == 6 | H2EE15 == 7 | H2EE15 == 8)
replace H2EE16 = . if (H2EE16 == 6 | H2EE16 == 7 | H2EE16 == 8)
replace H2EE17 = . if (H2EE17 == 6 | H2EE17 == 7 | H2EE17 == 8)
replace H2SIBA = . if (H2SIBA == 6 | H2SIBA == 7 | H2SIBA == 8)
replace H2TWINA = . if (H2TWINA >= 6 & H2TWINA <= 9)
replace H2WS1A = . if (H2WS1A >= 6 & H2WS1A <= 9)
replace H2WS2A = . if (H2WS2A >= 6 & H2WS2A <= 9)
replace H2WS3A = . if (H2WS3A >= 6 & H2WS3A <= 9)
replace H2WS4A = . if (H2WS4A >= 6 & H2WS4A <= 9)
replace H2WS5A = . if (H2WS5A >= 6 & H2WS5A <= 98)
replace H2WS6A = . if (H2WS6A >= 6 & H2WS6A <= 9)
replace H2WS7A = . if (H2WS7A == 6 | H2WS7A == 7)
replace H2WS8A = . if (H2WS8A == 7 | H2WS8A == 8)
replace H2WS9A = . if (H2WS9A == 7 | H2WS9A == 8)
replace H2WS10A = . if (H2WS10A == 7)
replace H2WS11A = . if (H2WS11A == 7)
replace H2WS12A = . if (H2WS12A >= 6 & H2WS12A <= 9)
replace H2SIBB = . if (H2SIBB == 6 | H2SIBB == 7 | H2SIBB == 8)
replace H2TWINB = . if (H2TWINB == 6 | H2TWINB == 7 | H2TWINB == 8)
replace H2WS1B = . if (H2WS1B >= 6 & H2WS1B <= 9)
replace H2WS2B = . if (H2WS2B >= 6 & H2WS2B <= 9)
replace H2WS3B = . if (H2WS3B >= 6 & H2WS3B <= 9)
replace H2WS4B = . if (H2WS4B >= 6 & H2WS4B <= 9)
replace H2WS5B = . if (H2WS5B >= 6 & H2WS5B <= 98)
replace H2WS6B = . if (H2WS6B >= 6 & H2WS6B <= 9)
replace H2WS7B = . if (H2WS7B == 6 | H2WS7B == 7)
replace H2WS8B = . if (H2WS8B == 7 | H2WS8B == 8)
replace H2WS9B = . if (H2WS9B == 7 | H2WS9B == 8)
replace H2WS10B = . if (H2WS10B == 7)
replace H2WS11B = . if (H2WS11B == 7)
replace H2WS12B = . if (H2WS12B >= 6 & H2WS12B <= 9)
replace H2SIBC = . if (H2SIBC == 7)
replace H2TWINC = . if (H2TWINC == 7)
replace H2WS1C = . if (H2WS1C >= 6 & H2WS1C <= 9)
replace H2WS2C = . if (H2WS2C >= 6 & H2WS2C <= 9)
replace H2WS3C = . if (H2WS3C >= 6 & H2WS3C <= 9)
replace H2WS4C = . if (H2WS4C >= 6 & H2WS4C <= 9)
replace H2WS5C = . if (H2WS5C >= 6 & H2WS5C <= 98)
replace H2WS6C = . if (H2WS6C >= 6 & H2WS6C <= 9)
replace H2WS7C = . if (H2WS7C == 6 | H2WS7C == 7 | H2WS7C == 8)
replace H2WS8C = . if (H2WS8C == 6 | H2WS8C == 7 | H2WS8C == 8)
replace H2WS9C = . if (H2WS9C == 6 | H2WS9C == 7 | H2WS9C == 8)
replace H2WS10C = . if (H2WS10C == 6 | H2WS10C == 7 | H2WS10C == 8)
replace H2WS11C = . if (H2WS11C == 6 | H2WS11C == 7 | H2WS11C == 8)
replace H2WS12C = . if (H2WS12C >= 6 & H2WS12C <= 9)
replace H2SIBD = . if (H2SIBD == 6 | H2SIBD == 7 | H2SIBD == 8)
replace H2TWIND = . if (H2TWIND == 6 | H2TWIND == 7)
replace H2WS1D = . if (H2WS1D >= 6 & H2WS1D <= 9)
replace H2WS2D = . if (H2WS2D >= 6 & H2WS2D <= 9)
replace H2WS3D = . if (H2WS3D >= 6 & H2WS3D <= 9)
replace H2WS4D = . if (H2WS4D >= 6 & H2WS4D <= 9)
replace H2WS5D = . if (H2WS5D >= 6 & H2WS5D <= 98)
replace H2WS6D = . if (H2WS6D >= 6 & H2WS6D <= 9)
replace H2WS7D = . if (H2WS7D == 6 | H2WS7D == 7 | H2WS7D == 8)
replace H2WS8D = . if (H2WS8D == 6 | H2WS8D == 7 | H2WS8D == 8)
replace H2WS9D = . if (H2WS9D == 6 | H2WS9D == 7 | H2WS9D == 8)
replace H2WS10D = . if (H2WS10D == 6 | H2WS10D == 7 | H2WS10D == 8)
replace H2WS11D = . if (H2WS11D == 6 | H2WS11D == 7 | H2WS11D == 8)
replace H2WS12D = . if (H2WS12D >= 6 & H2WS12D <= 9)
replace H2SIBE = . if (H2SIBE == 6 | H2SIBE == 7 | H2SIBE == 8)
replace H2TWINE = . if (H2TWINE == 6 | H2TWINE == 7)
replace H2WS1E = . if (H2WS1E >= 6 & H2WS1E <= 9)
replace H2WS2E = . if (H2WS2E >= 6 & H2WS2E <= 9)
replace H2WS3E = . if (H2WS3E >= 6 & H2WS3E <= 9)
replace H2WS4E = . if (H2WS4E >= 6 & H2WS4E <= 9)
replace H2WS5E = . if (H2WS5E >= 6 & H2WS5E <= 98)
replace H2WS6E = . if (H2WS6E >= 6 & H2WS6E <= 9)
replace H2WS7E = . if (H2WS7E == 6 | H2WS7E == 7 | H2WS7E == 8)
replace H2WS8E = . if (H2WS8E == 6 | H2WS8E == 7 | H2WS8E == 8)
replace H2WS9E = . if (H2WS9E == 6 | H2WS9E == 7 | H2WS9E == 8)
replace H2WS10E = . if (H2WS10E == 6 | H2WS10E == 7 | H2WS10E == 8)
replace H2WS11E = . if (H2WS11E == 6 | H2WS11E == 7 | H2WS11E == 8)
replace H2WS12E = . if (H2WS12E >= 6 & H2WS12E <= 9)
replace H2SIBF = . if (H2SIBF == 7)
replace H2TWINF = . if (H2TWINF == 6 | H2TWINF == 7)
replace H2WS1F = . if (H2WS1F >= 6 & H2WS1F <= 9)
replace H2WS2F = . if (H2WS2F >= 6 & H2WS2F <= 9)
replace H2WS3F = . if (H2WS3F >= 6 & H2WS3F <= 9)
replace H2WS4F = . if (H2WS4F >= 6 & H2WS4F <= 9)
replace H2WS5F = . if (H2WS5F >= 6 & H2WS5F <= 98)
replace H2WS6F = . if (H2WS6F >= 6 & H2WS6F <= 9)
replace H2WS7F = . if (H2WS7F == 6 | H2WS7F == 7 | H2WS7F == 8)
replace H2WS8F = . if (H2WS8F == 6 | H2WS8F == 7 | H2WS8F == 8)
replace H2WS9F = . if (H2WS9F == 6 | H2WS9F == 7 | H2WS9F == 8)
replace H2WS10F = . if (H2WS10F == 6 | H2WS10F == 7 | H2WS10F == 8)
replace H2WS11F = . if (H2WS11F == 6 | H2WS11F == 7 | H2WS11F == 8)
replace H2WS12F = . if (H2WS12F >= 6 & H2WS12F <= 9)
replace H2SIBG = . if (H2SIBG == 6 | H2SIBG == 7)
replace H2TWING = . if (H2TWING == 7)
replace H2WS1G = . if (H2WS1G >= 6 & H2WS1G <= 9)
replace H2WS2G = . if (H2WS2G >= 6 & H2WS2G <= 9)
replace H2WS3G = . if (H2WS3G >= 6 & H2WS3G <= 9)
replace H2WS4G = . if (H2WS4G >= 6 & H2WS4G <= 9)
replace H2WS5G = . if (H2WS5G >= 6 & H2WS5G <= 98)
replace H2WS6G = . if (H2WS6G >= 6 & H2WS6G <= 9)
replace H2WS7G = . if (H2WS7G == 6 | H2WS7G == 7 | H2WS7G == 8)
replace H2WS8G = . if (H2WS8G == 6 | H2WS8G == 7 | H2WS8G == 8)
replace H2WS9G = . if (H2WS9G == 6 | H2WS9G == 7 | H2WS9G == 8)
replace H2WS10G = . if (H2WS10G == 6 | H2WS10G == 7 | H2WS10G == 8)
replace H2WS11G = . if (H2WS11G == 6 | H2WS11G == 7 | H2WS11G == 8)
replace H2WS12G = . if (H2WS12G >= 6 & H2WS12G <= 9)
replace H2WS16HF = . if (H2WS16HF == 96 | H2WS16HF == 97 | H2WS16HF == 98)
replace H2WS16HI = . if (H2WS16HI == 96 | H2WS16HI == 98)
replace H2WS16W = . if (H2WS16W == 996 | H2WS16W == 998)
replace H2WS17 = . if (H2WS17 == 6 | H2WS17 == 7 | H2WS17 == 8)
replace H2IR1 = . if (H2IR1 == 6 | H2IR1 == 7 | H2IR1 == 8)
replace H2IR2 = . if (H2IR2 == 6 | H2IR2 == 7 | H2IR2 == 8)
replace H2IR3 = . if (H2IR3 == 6 | H2IR3 == 7 | H2IR3 == 8)
replace H2IR4 = . if (H2IR4 == 6 | H2IR4 == 7 | H2IR4 == 8)
replace H2IR5 = . if (H2IR5 == 6 | H2IR5 == 7 | H2IR5 == 8)
replace H2IR6 = . if (H2IR6 == 6 | H2IR6 == 7 | H2IR6 == 8)
replace H2IR7A = . if (H2IR7A == 6 | H2IR7A == 7 | H2IR7A == 8)
replace H2IR7B = . if (H2IR7B == 6 | H2IR7B == 7 | H2IR7B == 8)
replace H2IR7C = . if (H2IR7C == 6 | H2IR7C == 7 | H2IR7C == 8)
replace H2IR7D = . if (H2IR7D == 6 | H2IR7D == 7 | H2IR7D == 8)
replace H2IR7E = . if (H2IR7E == 6 | H2IR7E == 7 | H2IR7E == 8)
replace H2IR7F = . if (H2IR7F == 6 | H2IR7F == 7 | H2IR7F == 8)
replace H2IR7G = . if (H2IR7G == 6 | H2IR7G == 7 | H2IR7G == 8)
replace H2IR7H = . if (H2IR7H == 6 | H2IR7H == 7 | H2IR7H == 8)
replace H2IR7I = . if (H2IR7I == 6 | H2IR7I == 7 | H2IR7I == 8)
replace H2IR7J = . if (H2IR7J == 6 | H2IR7J == 7 | H2IR7J == 8)
replace H2IR7K = . if (H2IR7K == 6 | H2IR7K == 7 | H2IR7K == 8)
replace H2IR7L = . if (H2IR7L == 6 | H2IR7L == 7 | H2IR7L == 8)
replace H2IR7M = . if (H2IR7M == 6 | H2IR7M == 7 | H2IR7M == 8)
replace H2IR7N = . if (H2IR7N == 6 | H2IR7N == 7 | H2IR7N == 8)
replace H2IR7O = . if (H2IR7O == 6 | H2IR7O == 7 | H2IR7O == 8)
replace H2IR7P = . if (H2IR7P == 6 | H2IR7P == 7 | H2IR7P == 8)
replace H2IR7Q = . if (H2IR7Q == 6 | H2IR7Q == 7 | H2IR7Q == 8)
replace H2IR7R = . if (H2IR7R == 6 | H2IR7R == 7 | H2IR7R == 8)
replace H2IR7S = . if (H2IR7S == 6 | H2IR7S == 7 | H2IR7S == 8)
replace H2IR7T = . if (H2IR7T == 6 | H2IR7T == 7 | H2IR7T == 8)
replace H2IR7U = . if (H2IR7U == 6 | H2IR7U == 7 | H2IR7U == 8)
replace H2IR7V = . if (H2IR7V == 6 | H2IR7V == 7 | H2IR7V == 8)
replace H2IR7W = . if (H2IR7W == 6 | H2IR7W == 7 | H2IR7W == 8)
replace H2IR7X = . if (H2IR7X == 6 | H2IR7X == 7 | H2IR7X == 8)
replace H2IR7Y = . if (H2IR7Y == 6 | H2IR7Y == 7 | H2IR7Y == 8)
replace H2IR7Z = . if (H2IR7Z == 6 | H2IR7Z == 7 | H2IR7Z == 8)
replace H2IR7AA = . if (H2IR7AA == 6 | H2IR7AA == 7 | H2IR7AA == 8)
replace H2IR7BB = . if (H2IR7BB == 6 | H2IR7BB == 7 | H2IR7BB == 8)
replace H2IR7CC = . if (H2IR7CC == 6 | H2IR7CC == 7 | H2IR7CC == 8)
replace H2IR7DD = . if (H2IR7DD == 6 | H2IR7DD == 7 | H2IR7DD == 8)
replace H2IR8A = . if (H2IR8A == 97)
replace H2IR8B = . if (H2IR8B == 97)
replace H2IR8C = . if (H2IR8C == 97)
replace H2IR8D = . if (H2IR8D == 97)
replace H2IR9 = . if (H2IR9 == 6 | H2IR9 == 8)
replace H2IR10 = . if (H2IR10 == 98)
replace H2IR11 = . if (H2IR11 == 6 | H2IR11 == 8 | H2IR11 == 9)
replace H2IR12 = . if (H2IR12 == 96 | H2IR12 == 98 | H2IR12 == 99)
replace H2IR13 = . if (H2IR13 == 97 | H2IR13 == 98 | H2IR13 == 99)
replace H2IR14 = . if (H2IR14 == 6 | H2IR14 == 7 | H2IR14 == 8)
replace H2IR15 = . if (H2IR15 == 6 | H2IR15 == 8 | H2IR15 == 9)
replace H2IR16 = . if (H2IR16 == 96 | H2IR16 == 98)
replace H2IR17A = . if (H2IR17A == 6 | H2IR17A == 7 | H2IR17A == 8)
replace H2IR17B = . if (H2IR17B == 6 | H2IR17B == 7 | H2IR17B == 8)
replace H2IR17C = . if (H2IR17C == 6 | H2IR17C == 7 | H2IR17C == 8)
replace H2IR17D = . if (H2IR17D == 6 | H2IR17D == 7 | H2IR17D == 8)
replace H2IR17E = . if (H2IR17E == 6 | H2IR17E == 7 | H2IR17E == 8)
replace H2IR17F = . if (H2IR17F == 6 | H2IR17F == 7 | H2IR17F == 8)
replace H2IR17G = . if (H2IR17G == 6 | H2IR17G == 7 | H2IR17G == 8)
replace H2IR17H = . if (H2IR17H == 6 | H2IR17H == 7 | H2IR17H == 8)
replace H2IR17I = . if (H2IR17I == 6 | H2IR17I == 7 | H2IR17I == 8)
replace H2IR17J = . if (H2IR17J == 6 | H2IR17J == 7 | H2IR17J == 8)
replace H2IR18 = . if (H2IR18 == 6 | H2IR18 == 7 | H2IR18 == 8)
replace H2IR19 = . if (H2IR19 == 6 | H2IR19 == 7 | H2IR19 == 8)
replace H2IR20 = . if (H2IR20 == 6 | H2IR20 == 7 | H2IR20 == 8)
replace H2IR21 = . if (H2IR21 == 6 | H2IR21 == 8 | H2IR21 == 9)
replace H2IR22A = . if (H2IR22A == 6 | H2IR22A == 7 | H2IR22A == 8)
replace H2IR22B = . if (H2IR22B == 6 | H2IR22B == 7 | H2IR22B == 8)
replace H2IR22C = . if (H2IR22C == 6 | H2IR22C == 7 | H2IR22C == 8)
replace H2IR22D = . if (H2IR22D == 6 | H2IR22D == 7 | H2IR22D == 8)
replace H2IR22E = . if (H2IR22E == 6 | H2IR22E == 7 | H2IR22E == 8)
replace H2IR22F = . if (H2IR22F == 6 | H2IR22F == 7 | H2IR22F == 8)
replace H2IR22G = . if (H2IR22G == 6 | H2IR22G == 7 | H2IR22G == 8)
replace H2IR22H = . if (H2IR22H == 6 | H2IR22H == 7 | H2IR22H == 8)
replace H2IR22I = . if (H2IR22I == 6 | H2IR22I == 7 | H2IR22I == 8)
replace H2IR22J = . if (H2IR22J == 6 | H2IR22J == 7 | H2IR22J == 8)
replace H2IR22K = . if (H2IR22K == 6 | H2IR22K == 7 | H2IR22K == 8)
replace H2IR22L = . if (H2IR22L == 6 | H2IR22L == 7 | H2IR22L == 8)
replace H2IR22M = . if (H2IR22M == 6 | H2IR22M == 7 | H2IR22M == 8)
replace H2IR22N = . if (H2IR22N == 6 | H2IR22N == 7 | H2IR22N == 8)
replace H2IR22O = . if (H2IR22O == 6 | H2IR22O == 7 | H2IR22O == 8)
replace H2IR22P = . if (H2IR22P == 6 | H2IR22P == 7 | H2IR22P == 8)
replace H2IR22Q = . if (H2IR22Q == 6 | H2IR22Q == 7 | H2IR22Q == 8)
replace H2IR22R = . if (H2IR22R == 6 | H2IR22R == 7 | H2IR22R == 8)
replace H2IR22S = . if (H2IR22S == 6 | H2IR22S == 7 | H2IR22S == 8)
replace H2IR22T = . if (H2IR22T == 6 | H2IR22T == 7 | H2IR22T == 8)
replace H2IR22U = . if (H2IR22U == 6 | H2IR22U == 7 | H2IR22U == 8)
replace H2IR22V = . if (H2IR22V == 6 | H2IR22V == 7 | H2IR22V == 8)
replace H2IR22W = . if (H2IR22W == 6 | H2IR22W == 7 | H2IR22W == 8)
replace H2IR22X = . if (H2IR22X == 6 | H2IR22X == 7 | H2IR22X == 8)
replace H2IR22Y = . if (H2IR22Y == 6 | H2IR22Y == 7 | H2IR22Y == 8)
replace H2IR22Z = . if (H2IR22Z == 6 | H2IR22Z == 7 | H2IR22Z == 8)
replace H2IR22AA = . if (H2IR22AA == 6 | H2IR22AA == 7 | H2IR22AA == 8)
replace H2IR22BB = . if (H2IR22BB == 6 | H2IR22BB == 7 | H2IR22BB == 8)
replace H2IR22CC = . if (H2IR22CC == 6 | H2IR22CC == 7 | H2IR22CC == 8)
replace H2IR22DD = . if (H2IR22DD == 6 | H2IR22DD == 7 | H2IR22DD == 8)
replace H2IR22EE = . if (H2IR22EE == 6 | H2IR22EE == 7 | H2IR22EE == 8)
replace H2IR22FF = . if (H2IR22FF == 6 | H2IR22FF == 7 | H2IR22FF == 8)
replace H2IR22GG = . if (H2IR22GG == 6 | H2IR22GG == 7 | H2IR22GG == 8)
replace H2IR22HH = . if (H2IR22HH == 6 | H2IR22HH == 7 | H2IR22HH == 8)
replace H2IR22II = . if (H2IR22II == 6 | H2IR22II == 7 | H2IR22II == 8)
replace H2IR22JJ = . if (H2IR22JJ == 6 | H2IR22JJ == 7 | H2IR22JJ == 8)
replace H2IR22KK = . if (H2IR22KK == 6 | H2IR22KK == 7 | H2IR22KK == 8)
replace H2IR22LL = . if (H2IR22LL == 6 | H2IR22LL == 7 | H2IR22LL == 8)
replace H2IR23 = . if (H2IR23 == 6 | H2IR23 == 8 | H2IR23 == 9)
replace H2IR24 = . if (H2IR24 == 6 | H2IR24 == 8 | H2IR24 == 9)
replace H2IR25 = . if (H2IR25 == 6 | H2IR25 == 8)
replace H2IR26 = . if (H2IR26 == 6 | H2IR26 == 8)
replace H2IR27 = . if (H2IR27 == 6 | H2IR27 == 8)
replace H2IR31 = . if (H2IR31 == 6 | H2IR31 == 8)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

