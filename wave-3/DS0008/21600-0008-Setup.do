/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0008: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |                              USE SAMPLE)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0008-statasetup.do)
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

format IMONTH3 %2.0f
format IDAY3 %2.0f
format IYEAR3 %4.0f
format BIO_SEX3 %1.0f
format VERSION3 %2.0f
format FRIEND %1.0f
format SIBLING %1.0f
format PARTNER %1.0f
format BINGE %1.0f
format PRMOM %2.0f
format PRPOP %2.0f
format PRYEAR %4.0f
format CALCAGE3 %2.0f
format PRETEST3 %1.0f
format PRISON3 %1.0f
format H3OD1M %2.0f
format H3OD1Y %4.0f
format H3OD2 %1.0f
format H3OD3A %1.0f
format H3OD3B %1.0f
format H3OD3C %1.0f
format H3OD3D %1.0f
format H3OD3E %1.0f
format H3OD3F %1.0f
format H3OD4A %1.0f
format H3OD4B %1.0f
format H3OD4C %1.0f
format H3OD4D %1.0f
format H3OD5A %1.0f
format H3OD5B %1.0f
format H3OD5C %1.0f
format H3OD5D %1.0f
format H3OD5E %1.0f
format H3OD5F %1.0f
format H3OD5G %1.0f
format H3OD6 %1.0f
format H3OD7A %3.0f
format H3OD7B %3.0f
format H3OD7C %3.0f
format H3OD7D %3.0f
format H3OD8 %3.0f
format H3OD9 %1.0f
format H3OD10 %1.0f
format H3OD11 %1.0f
format H3OD12 %1.0f
format H3OD13 %1.0f
format H3OD14 %3.0f
format H3OD15 %1.0f
format H3OD16 %1.0f
format H3OD17 %1.0f
format H3OD18M %2.0f
format H3OD18Y %4.0f
format H3OD19 %1.0f
format H3OD20 %1.0f
format H3OD21A %1.0f
format H3OD21B %1.0f
format H3OD21C %1.0f
format H3OD21D %1.0f
format H3OD21E %1.0f
format H3OD22 %1.0f
format H3OD23 %1.0f
format H3OD24 %1.0f
format H3OD25 %1.0f
format H3OD26 %2.0f
format H3OD27 %2.0f
format H3OD28 %2.0f
format H3OD29 %1.0f
format H3OD30 %1.0f
format H3OD31 %1.0f
format H3OD32 %2.0f
format H3OD33 %1.0f
format H3OD34A %2.0f
format H3OD34B %2.0f
format H3OD35 %1.0f
format H3OD36M %2.0f
format H3OD36Y %4.0f
format H3OD37M %2.0f
format H3OD37Y %4.0f
format H3OD38 %1.0f
format H3HR1 %1.0f
format H3HR2 %2.0f
format H3HR3 %1.0f
format H3HR4 %2.0f
format H3HR5 %1.0f
format H3HR6 %2.0f
format H3HR7A %1.0f
format H3HR8A %3.0f
format H3HR9A %3.0f
format H3HR10A %2.0f
format H3HR11A %2.0f
format H3HR7B %1.0f
format H3HR8B %3.0f
format H3HR9B %3.0f
format H3HR10B %2.0f
format H3HR11B %2.0f
format H3HR7C %1.0f
format H3HR8C %3.0f
format H3HR9C %3.0f
format H3HR10C %2.0f
format H3HR11C %2.0f
format H3HR7D %1.0f
format H3HR8D %3.0f
format H3HR9D %3.0f
format H3HR10D %2.0f
format H3HR11D %2.0f
format H3HR7E %1.0f
format H3HR8E %3.0f
format H3HR9E %3.0f
format H3HR10E %2.0f
format H3HR11E %2.0f
format H3HR7F %1.0f
format H3HR8F %3.0f
format H3HR9F %3.0f
format H3HR10F %2.0f
format H3HR11F %2.0f
format H3HR7G %1.0f
format H3HR8G %3.0f
format H3HR9G %3.0f
format H3HR10G %2.0f
format H3HR11G %2.0f
format H3HR7H %1.0f
format H3HR8H %3.0f
format H3HR9H %3.0f
format H3HR10H %2.0f
format H3HR11H %2.0f
format H3HR7I %1.0f
format H3HR8I %3.0f
format H3HR9I %3.0f
format H3HR10I %2.0f
format H3HR11I %2.0f
format H3HR7J %1.0f
format H3HR8J %3.0f
format H3HR9J %3.0f
format H3HR10J %2.0f
format H3HR11J %2.0f
format H3HR7K %1.0f
format H3HR8K %3.0f
format H3HR9K %3.0f
format H3HR10K %2.0f
format H3HR11K %2.0f
format H3HR7L %1.0f
format H3HR8L %3.0f
format H3HR9L %3.0f
format H3HR10L %2.0f
format H3HR11L %2.0f
format H3HR7M %1.0f
format H3HR8M %3.0f
format H3HR9M %3.0f
format H3HR10M %2.0f
format H3HR11M %2.0f
format H3HR7N %1.0f
format H3HR8N %3.0f
format H3HR9N %3.0f
format H3HR10N %2.0f
format H3HR11N %2.0f
format H3HR7O %1.0f
format H3HR8O %3.0f
format H3HR9O %3.0f
format H3HR10O %2.0f
format H3HR11O %2.0f
format H3HR7P %1.0f
format H3HR8P %3.0f
format H3HR9P %3.0f
format H3HR10P %2.0f
format H3HR11P %2.0f
format H3HR7Q %1.0f
format H3HR8Q %3.0f
format H3HR9Q %3.0f
format H3HR10Q %2.0f
format H3HR11Q %2.0f
format H3HR7R %1.0f
format H3HR8R %3.0f
format H3HR9R %3.0f
format H3HR10R %2.0f
format H3HR11R %2.0f
format H3HR7S %1.0f
format H3HR8S %3.0f
format H3HR9S %3.0f
format H3HR10S %2.0f
format H3HR11S %2.0f
format H3HR12 %1.0f
format H3HR13 %2.0f
format H3HR14 %1.0f
format H3HR15 %2.0f
format H3HR16 %1.0f
format H3HR17M %2.0f
format H3HR17Y %4.0f
format H3HR18 %2.0f
format H3HR19 %1.0f
format H3HR20 %2.0f
format H3HR21M %2.0f
format H3HR21Y %4.0f
format H3HR22MA %2.0f
format H3HR22YA %4.0f
format H3HR22MB %2.0f
format H3HR22YB %4.0f
format H3HR22MC %2.0f
format H3HR22YC %4.0f
format H3HR22MD %2.0f
format H3HR22YD %4.0f
format H3HR22ME %2.0f
format H3HR22YE %4.0f
format H3HR22MF %2.0f
format H3HR22YF %4.0f
format H3HR22MG %2.0f
format H3HR22YG %4.0f
format H3HR23 %1.0f
format H3HR24 %1.0f
format H3HR25 %1.0f
format H3HR26 %1.0f
format H3HR27 %2.0f
format H3HR28 %1.0f
format H3HR29 %1.0f
format H3HR30 %1.0f
format H3WP1 %1.0f
format H3WP2 %1.0f
format H3WP3M %2.0f
format H3WP3Y %4.0f
format H3WP4 %1.0f
format H3WP5 %1.0f
format H3WP6M %2.0f
format H3WP6Y %4.0f
format H3WP7 %1.0f
format H3WP8 %1.0f
format H3WP9 %2.0f
format H3WP10M %2.0f
format H3WP10Y %4.0f
format H3WP11 %1.0f
format H3WP12 %1.0f
format H3WP13 %2.0f
format H3WP14M %2.0f
format H3WP14Y %4.0f
format H3WP15 %1.0f
format H3WP16 %1.0f
format H3WP17 %1.0f
format H3WP18 %2.0f
format H3WP19 %2.0f
format H3WP20 %2.0f
format H3WP21 %1.0f
format H3WP22 %1.0f
format H3WP23 %2.0f
format H3WP24 %2.0f
format H3WP25 %2.0f
format H3WP26 %1.0f
format H3WP27 %1.0f
format H3WP28 %2.0f
format H3WP29 %1.0f
format H3WP30 %2.0f
format H3WP31 %2.0f
format H3WP32 %2.0f
format H3WP33 %1.0f
format H3WP34 %1.0f
format H3WP35 %2.0f
format H3WP36 %1.0f
format H3WP37 %2.0f
format H3WP38 %2.0f
format H3WP39 %2.0f
format H3WP40 %1.0f
format H3WP41 %1.0f
format H3WP42 %1.0f
format H3WP43 %1.0f
format H3WP44 %2.0f
format H3WP45 %2.0f
format H3WP46 %2.0f
format H3WP47 %1.0f
format H3WP48 %1.0f
format H3WP49 %1.0f
format H3WP50 %1.0f
format H3WP51 %2.0f
format H3WP52 %2.0f
format H3WP53 %2.0f
format H3WP54 %1.0f
format H3WP55 %1.0f
format H3WP56 %1.0f
format H3WP57 %1.0f
format H3WP58 %1.0f
format H3WP59 %1.0f
format H3WP60 %1.0f
format H3WP61 %1.0f
format H3WP62 %2.0f
format H3WP63 %2.0f
format H3WP64 %2.0f
format H3WP65 %1.0f
format H3WP66 %1.0f
format H3WP67 %1.0f
format H3WP68 %1.0f
format H3WP69 %1.0f
format H3WP70 %2.0f
format H3WP71 %2.0f
format H3WP72 %2.0f
format H3WP73 %1.0f
format H3RA1 %1.0f
format H3RA2 %1.0f
format H3RA3 %1.0f
format H3RA4 %1.0f
format H3RA5 %1.0f
format H3RA6 %1.0f
format H3RA7 %1.0f
format H3RA8 %1.0f
format H3RA9 %1.0f
format H3RA10 %1.0f
format H3RA11 %1.0f
format H3RA12 %1.0f
format H3RA13 %1.0f
format H3RA14 %1.0f
format H3RA15 %1.0f
format H3RA16 %1.0f
format H3RA17 %1.0f
format H3RA18 %1.0f
format H3WS1A %1.0f
format H3WS2MA %2.0f
format H3WS2YA %4.0f
format H3WS3A %2.0f
format H3WS4A %1.0f
format H3WS5A %1.0f
format H3WS6A %1.0f
format H3WS7A %1.0f
format H3WS8A %2.0f
format H3WS9A %1.0f
format H3WS10A %1.0f
format H3WS11A %1.0f
format H3WS12A %1.0f
format H3WS1B %1.0f
format H3WS2MB %2.0f
format H3WS2YB %4.0f
format H3WS3B %2.0f
format H3WS4B %1.0f
format H3WS5B %1.0f
format H3WS6B %1.0f
format H3WS7B %1.0f
format H3WS8B %2.0f
format H3WS9B %1.0f
format H3WS10B %1.0f
format H3WS11B %1.0f
format H3WS12B %1.0f
format H3WS1C %1.0f
format H3WS2MC %2.0f
format H3WS2YC %4.0f
format H3WS3C %2.0f
format H3WS4C %1.0f
format H3WS5C %1.0f
format H3WS6C %1.0f
format H3WS7C %1.0f
format H3WS8C %2.0f
format H3WS9C %1.0f
format H3WS10C %1.0f
format H3WS11C %1.0f
format H3WS12C %1.0f
format H3WS1D %1.0f
format H3WS2MD %2.0f
format H3WS2YD %4.0f
format H3WS3D %2.0f
format H3WS4D %1.0f
format H3WS5D %1.0f
format H3WS6D %1.0f
format H3WS7D %1.0f
format H3WS8D %2.0f
format H3WS9D %1.0f
format H3WS10D %1.0f
format H3WS11D %1.0f
format H3WS12D %1.0f
format H3FS1_A %1.0f
format H3FS2_A %2.0f
format H3FS3_A %2.0f
format H3FS4_A %2.0f
format H3FS5_A %2.0f
format H3FS6_A %1.0f
format H3FS7M_A %2.0f
format H3FS7Y_A %4.0f
format H3FS8M_A %2.0f
format H3FS8Y_A %4.0f
format H3FS9_A %2.0f
format H3FS10_A %2.0f
format H3FS1_B %1.0f
format H3FS2_B %2.0f
format H3FS3_B %2.0f
format H3FS4_B %2.0f
format H3FS5_B %2.0f
format H3FS6_B %1.0f
format H3FS7M_B %2.0f
format H3FS7Y_B %4.0f
format H3FS8M_B %2.0f
format H3FS8Y_B %4.0f
format H3FS9_B %2.0f
format H3FS10_B %2.0f
format H3FS1_C %1.0f
format H3FS2_C %2.0f
format H3FS3_C %2.0f
format H3FS4_C %2.0f
format H3FS5_C %2.0f
format H3FS6_C %1.0f
format H3FS7M_C %2.0f
format H3FS7Y_C %4.0f
format H3FS8M_C %2.0f
format H3FS8Y_C %4.0f
format H3FS9_C %2.0f
format H3FS10_C %2.0f
format H3FS1_D %1.0f
format H3FS2_D %2.0f
format H3FS3_D %2.0f
format H3FS4_D %2.0f
format H3FS5_D %2.0f
format H3FS6_D %1.0f
format H3FS7M_D %2.0f
format H3FS7Y_D %4.0f
format H3FS8M_D %2.0f
format H3FS8Y_D %4.0f
format H3FS9_D %2.0f
format H3FS10_D %2.0f
format H3FS1_E %1.0f
format H3FS2_E %2.0f
format H3FS3_E %2.0f
format H3FS4_E %2.0f
format H3FS5_E %2.0f
format H3FS6_E %1.0f
format H3FS7M_E %2.0f
format H3FS7Y_E %4.0f
format H3FS8M_E %2.0f
format H3FS8Y_E %4.0f
format H3FS9_E %2.0f
format H3FS10_E %2.0f
format H3FS1_F %1.0f
format H3FS2_F %2.0f
format H3FS3_F %2.0f
format H3FS4_F %2.0f
format H3FS5_F %2.0f
format H3FS6_F %1.0f
format H3FS7M_F %2.0f
format H3FS7Y_F %4.0f
format H3FS8M_F %2.0f
format H3FS8Y_F %4.0f
format H3FS9_F %2.0f
format H3FS10_F %2.0f
format H3FS1_G %1.0f
format H3FS2_G %2.0f
format H3FS3_G %2.0f
format H3FS4_G %2.0f
format H3FS5_G %2.0f
format H3FS6_G %1.0f
format H3FS7M_G %2.0f
format H3FS7Y_G %4.0f
format H3FS8M_G %2.0f
format H3FS8Y_G %4.0f
format H3FS9_G %2.0f
format H3FS10_G %2.0f
format H3FS1_H %1.0f
format H3FS2_H %2.0f
format H3FS3_H %2.0f
format H3FS4_H %2.0f
format H3FS5_H %2.0f
format H3FS6_H %1.0f
format H3FS7M_H %2.0f
format H3FS7Y_H %4.0f
format H3FS8M_H %2.0f
format H3FS8Y_H %4.0f
format H3FS9_H %2.0f
format H3FS10_H %2.0f
format H3FS1_I %1.0f
format H3FS2_I %2.0f
format H3FS3_I %2.0f
format H3FS4_I %2.0f
format H3FS5_I %2.0f
format H3FS6_I %1.0f
format H3FS7M_I %2.0f
format H3FS7Y_I %4.0f
format H3FS8M_I %2.0f
format H3FS8Y_I %4.0f
format H3FS9_I %2.0f
format H3FS10_I %2.0f
format H3FS1_J %1.0f
format H3FS2_J %2.0f
format H3FS3_J %2.0f
format H3FS4_J %2.0f
format H3FS5_J %2.0f
format H3FS6_J %1.0f
format H3FS7M_J %2.0f
format H3FS7Y_J %4.0f
format H3FS8M_J %2.0f
format H3FS8Y_J %4.0f
format H3FS9_J %2.0f
format H3FS10_J %2.0f
format H3FS11 %2.0f
format H3FS12 %1.0f
format H3ED1 %2.0f
format H3ED2 %1.0f
format H3ED3 %1.0f
format H3ED4 %1.0f
format H3ED5 %1.0f
format H3ED6 %1.0f
format H3ED7 %1.0f
format H3ED8 %1.0f
format H3ED9 %1.0f
format H3ED10 %1.0f
format H3ED11 %1.0f
format H3ED12M %2.0f
format H3ED12Y %4.0f
format H3ED13M %2.0f
format H3ED13Y %4.0f
format H3ED14M %2.0f
format H3ED14Y %4.0f
format H3ED15M %2.0f
format H3ED15Y %4.0f
format H3ED18M %2.0f
format H3ED18Y %4.0f
format H3ED21M %2.0f
format H3ED21Y %4.0f
format H3ED23 %1.0f
format H3ED24M %2.0f
format H3ED24Y %4.0f
format H3ED25 %1.0f
format H3ED26 %1.0f
format H3ED27 %2.0f
format H3ED28 %1.0f
format H3ED31 %1.0f
format H3ED32 %2.0f
format H3ED33 %1.0f
format H3ED34 %1.0f
format H3ED35 %1.0f
format H3ED36 %1.0f
format H3ED37 %1.0f
format H3ED38 %1.0f
format H3ED39 %1.0f
format H3ED40 %1.0f
format H3ED41 %1.0f
format H3ED42 %1.0f
format H3ED43 %1.0f
format H3ED44 %2.0f
format H3ED45_A %2.0f
format H3ED46_A %2.0f
format H3ED47_A %1.0f
format H3ED48_A %1.0f
format H3ED49MA %2.0f
format H3ED49YA %4.0f
format H3ED45_B %2.0f
format H3ED46_B %2.0f
format H3ED47_B %1.0f
format H3ED48_B %1.0f
format H3ED49MB %2.0f
format H3ED49YB %4.0f
format H3ED45_C %2.0f
format H3ED46_C %2.0f
format H3ED47_C %1.0f
format H3ED48_C %1.0f
format H3ED49MC %2.0f
format H3ED49YC %4.0f
format H3ED45_D %2.0f
format H3ED46_D %2.0f
format H3ED47_D %1.0f
format H3ED48_D %1.0f
format H3ED49MD %2.0f
format H3ED49YD %4.0f
format H3ED45_E %2.0f
format H3ED46_E %2.0f
format H3ED47_E %1.0f
format H3ED48_E %1.0f
format H3ED49ME %2.0f
format H3ED49YE %4.0f
format H3ED45_F %2.0f
format H3ED46_F %2.0f
format H3ED47_F %1.0f
format H3ED48_F %1.0f
format H3ED49MF %2.0f
format H3ED49YF %4.0f
format H3ED45_G %2.0f
format H3ED46_G %2.0f
format H3ED47_G %1.0f
format H3ED48_G %1.0f
format H3ED49MG %2.0f
format H3ED49YG %4.0f
format H3ED45_H %2.0f
format H3ED46_H %2.0f
format H3ED47_H %1.0f
format H3ED48_H %1.0f
format H3ED49MH %2.0f
format H3ED49YH %4.0f
format H3ED45_I %2.0f
format H3ED46_I %2.0f
format H3ED47_I %1.0f
format H3ED48_I %1.0f
format H3ED49MI %2.0f
format H3ED49YI %4.0f
format H3ED45_J %2.0f
format H3ED46_J %2.0f
format H3ED47_J %1.0f
format H3ED48_J %1.0f
format H3ED49MJ %2.0f
format H3ED49YJ %4.0f
format H3ED45_K %2.0f
format H3ED46_K %2.0f
format H3ED47_K %1.0f
format H3ED48_K %1.0f
format H3ED49MK %2.0f
format H3ED49YK %4.0f
format H3ED45_L %2.0f
format H3ED46_L %2.0f
format H3ED47_L %1.0f
format H3ED48_L %1.0f
format H3ED49ML %2.0f
format H3ED49YL %4.0f
format H3ED45_M %2.0f
format H3ED46_M %2.0f
format H3ED47_M %1.0f
format H3ED48_M %1.0f
format H3ED49MM %2.0f
format H3ED49YM %4.0f
format H3ED45_N %2.0f
format H3ED46_N %2.0f
format H3ED47_N %1.0f
format H3ED48_N %1.0f
format H3ED49MN %2.0f
format H3ED49YN %4.0f
format H3ED45_O %2.0f
format H3ED46_O %2.0f
format H3ED47_O %1.0f
format H3ED48_O %1.0f
format H3ED49MO %2.0f
format H3ED49YO %4.0f
format H3LM1 %1.0f
format H3LM2 %1.0f
format H3LM3 %1.0f
format H3LM4M %2.0f
format H3LM4Y %4.0f
format H3LM5 %1.0f
format H3LM6M %2.0f
format H3LM6Y %4.0f
format H3LM7 %1.0f
format H3LM8 %1.0f
format H3LM9 %2.0f
format H3LM12 %1.0f
format H3LM13M %2.0f
format H3LM13Y %4.0f
format H3LM14 %2.0f
format H3LM15M %2.0f
format H3LM15Y %4.0f
format H3LM16 %2.0f
format H3LM17 %2.0f
format H3LM18 %6.2f
format H3LM19 %6.2f
format H3LM20 %8.2f
format H3LM21 %8.2f
format H3LM22 %7.1f
format H3LM23 %8.2f
format H3LM24 %6.0f
format H3LM27 %2.0f
format H3LM28 %2.0f
format H3LM29 %2.0f
format H3LM30 %6.2f
format H3LM31 %6.2f
format H3LM32 %8.2f
format H3LM33 %8.2f
format H3LM34 %5.0f
format H3LM35 %8.2f
format H3LM36 %5.0f
format H3LM37 %1.0f
format H3LM38 %1.0f
format H3LM39 %1.0f
format H3LM40M %2.0f
format H3LM40Y %4.0f
format H3LM41 %2.0f
format H3LM42 %3.0f
format H3LM43 %1.0f
format H3LM44A %1.0f
format H3LM44B %1.0f
format H3LM44C %1.0f
format H3LM44D %1.0f
format H3LM44E %1.0f
format H3LM45 %2.0f
format H3LM46M %2.0f
format H3LM46Y %4.0f
format H3LM47 %2.0f
format H3LM48M %2.0f
format H3LM48Y %4.0f
format H3LM49 %2.0f
format H3LM50M %2.0f
format H3LM50Y %4.0f
format H3LM51 %2.0f
format H3LM52M %2.0f
format H3LM52Y %4.0f
format H3LM53 %3.0f
format H3LM54M %2.0f
format H3LM54Y %4.0f
format H3LM55 %1.0f
format H3LM56 %1.0f
format H3LM57 %1.0f
format H3LM58 %1.0f
format H3LM59 %1.0f
format H3LM60 %1.0f
format H3LM61 %1.0f
format H3LM62 %1.0f
format H3LM63 %1.0f
format H3LM64 %1.0f
format H3LM65 %1.0f
format H3LM66 %1.0f
format H3LM67 %1.0f
format H3LM68 %1.0f
format H3LM69 %1.0f
format H3LM70 %1.0f
format H3LM71 %1.0f
format H3LM72 %1.0f
format H3LM73 %1.0f
format H3LM74 %1.0f
format H3LM75 %1.0f
format H3LM76 %1.0f
format H3LM77 %1.0f
format H3LM78 %1.0f
format H3LM79 %1.0f
format H3LM80 %1.0f
format H3LM81 %1.0f
format H3LM82 %1.0f
format H3GH1 %1.0f
format H3GH2 %2.0f
format H3GH3 %1.0f
format H3GH4A %1.0f
format H3GH4B %1.0f
format H3GH4C %1.0f
format H3GH4D %1.0f
format H3GH4E %1.0f
format H3GH4F %1.0f
format H3GH4G %1.0f
format H3GH4H %1.0f
format H3GH4I %1.0f
format H3GH5 %2.0f
format H3GH6 %1.0f
format H3GH7 %1.0f
format H3GH8 %1.0f
format H3GH9A %1.0f
format H3GH9B %1.0f
format H3GH9C %1.0f
format H3GH9D %1.0f
format H3GH9E %1.0f
format H3GH10 %1.0f
format H3GH11H %2.0f
format H3GH11M %2.0f
format H3GH11T %1.0f
format H3GH12H %2.0f
format H3GH12M %2.0f
format H3GH12T %1.0f
format H3GH13H %2.0f
format H3GH13M %2.0f
format H3GH13T %1.0f
format H3GH14H %2.0f
format H3GH14M %2.0f
format H3GH14T %1.0f
format H3GH15 %1.0f
format H3GH16 %1.0f
format H3GH17 %1.0f
format H3GH18 %2.0f
format H3GH19 %2.0f
format H3GH20 %1.0f
format H3HS1 %2.0f
format H3HS2 %1.0f
format H3HS3 %1.0f
format H3HS4A %1.0f
format H3HS4B %1.0f
format H3HS4C %1.0f
format H3HS4D %1.0f
format H3HS4E %1.0f
format H3HS4F %1.0f
format H3HS5 %2.0f
format H3HS6 %1.0f
format H3HS7A %1.0f
format H3HS7B %1.0f
format H3HS7C %1.0f
format H3HS7D %1.0f
format H3HS7E %1.0f
format H3HS7F %1.0f
format H3HS7G %1.0f
format H3HS7H %1.0f
format H3HS7I %1.0f
format H3HS8A %1.0f
format H3HS8B %1.0f
format H3HS8C %1.0f
format H3HS8D %1.0f
format H3HS8E %1.0f
format H3HS8F %1.0f
format H3HS8G %1.0f
format H3HS8H %1.0f
format H3HS8I %1.0f
format H3HS8J %1.0f
format H3HS8K %1.0f
format H3HS8L %1.0f
format H3HS8M %1.0f
format H3HS8N %1.0f
format H3HS8O %1.0f
format H3HS9 %1.0f
format H3HS10 %2.0f
format H3HS11 %2.0f
format H3HS12 %2.0f
format H3HS13 %2.0f
format H3HS14 %2.0f
format H3HS15 %2.0f
format H3HS16 %2.0f
format H3HS17 %1.0f
format H3HS18 %1.0f
format H3HS19 %1.0f
format H3HS20 %2.0f
format H3HS21 %1.0f
format H3HS22 %1.0f
format H3HS23 %1.0f
format H3ID1 %1.0f
format H3ID2 %1.0f
format H3ID3 %1.0f
format H3ID4 %1.0f
format H3ID5 %1.0f
format H3ID6 %1.0f
format H3ID7 %1.0f
format H3ID8 %1.0f
format H3ID9 %1.0f
format H3ID10 %1.0f
format H3ID11 %1.0f
format H3ID12 %1.0f
format H3ID13 %1.0f
format H3ID14 %1.0f
format H3ID15 %1.0f
format H3ID16 %1.0f
format H3ID17 %2.0f
format H3ID18 %1.0f
format H3ID19 %1.0f
format H3ID20 %4.0f
format H3ID21 %1.0f
format H3ID22 %1.0f
format H3ID23 %1.0f
format H3ID24 %1.0f
format H3ID25 %1.0f
format H3ID26A %1.0f
format H3ID26B %1.0f
format H3ID26C %1.0f
format H3ID26D %1.0f
format H3ID26E %1.0f
format H3ID26F %1.0f
format H3ID26G %1.0f
format H3ID26H %1.0f
format H3ID26I %1.0f
format H3ID26J %1.0f
format H3ID26K %1.0f
format H3ID26L %1.0f
format H3ID26M %1.0f
format H3ID26N %1.0f
format H3ID26O %1.0f
format H3ID26P %1.0f
format H3ID26Q %1.0f
format H3ID26R %1.0f
format H3ID27 %3.0f
format H3ID28 %2.0f
format H3ID29 %3.0f
format H3ID30 %2.0f
format H3ID31 %2.0f
format H3ID32 %3.0f
format H3ID33 %1.0f
format H3ID34A %1.0f
format H3ID34B %1.0f
format H3ID34C %1.0f
format H3ID34D %1.0f
format H3ID34E %1.0f
format H3ID34F %1.0f
format H3ID34G %1.0f
format H3ID34H %1.0f
format H3ID34I %1.0f
format H3ID34J %1.0f
format H3ID34K %1.0f
format H3ID34L %1.0f
format H3ID34M %1.0f
format H3ID34N %1.0f
format H3ID34O %1.0f
format H3ID35 %1.0f
format H3ID36 %1.0f
format H3ID37 %1.0f
format H3ID38 %2.0f
format H3ID39 %2.0f
format H3ID40 %1.0f
format H3SP1 %1.0f
format H3SP2 %1.0f
format H3SP3 %2.0f
format H3SP4 %2.0f
format H3SP5 %1.0f
format H3SP6 %1.0f
format H3SP7 %1.0f
format H3SP8 %1.0f
format H3SP9 %1.0f
format H3SP10 %1.0f
format H3SP11 %1.0f
format H3SP12 %1.0f
format H3SP13 %1.0f
format H3SP14 %2.0f
format H3SP15 %2.0f
format H3SP16 %2.0f
format H3SP17 %2.0f
format H3SP18 %2.0f
format H3SP19 %2.0f
format H3SP20 %2.0f
format H3SP21 %2.0f
format H3SP22 %2.0f
format H3SP23 %2.0f
format H3SP24 %2.0f
format H3SP25 %2.0f
format H3SP26 %2.0f
format H3SP27 %2.0f
format H3MN1 %1.0f
format H3MN2 %2.0f
format H3MN3 %1.0f
format H3MN4 %1.0f
format H3MN5 %2.0f
format H3MN6 %2.0f
format H3MN7 %1.0f
format H3MN8 %2.0f
format H3MN9 %2.0f
format H3MN10 %2.0f
format H3MN11 %1.0f
format H3MN12M %2.0f
format H3MN12Y %4.0f
format H3MN14 %2.0f
format H3MN15 %1.0f
format H3MN16 %1.0f
format H3MN17 %2.0f
format H3MN18 %1.0f
format H3MN19 %1.0f
format H3MN20M %2.0f
format H3MN20Y %4.0f
format H3MN21 %2.0f
format H3MR1 %1.0f
format H3MR_M_A %1.0f
format H3MR2M_A %2.0f
format H3MR2Y_A %4.0f
format H3MR3_A %1.0f
format H3MR4_A %1.0f
format H3MR5M_A %2.0f
format H3MR5Y_A %4.0f
format H3MR6_A %1.0f
format H3MR7M_A %2.0f
format H3MR7Y_A %4.0f
format H3MR_M_B %1.0f
format H3MR2M_B %2.0f
format H3MR2Y_B %4.0f
format H3MR3_B %1.0f
format H3MR4_B %1.0f
format H3MR5M_B %2.0f
format H3MR5Y_B %4.0f
format H3MR6_B %1.0f
format H3MR7M_B %2.0f
format H3MR7Y_B %4.0f
format H3MR_M_C %1.0f
format H3MR2M_C %2.0f
format H3MR2Y_C %4.0f
format H3MR3_C %1.0f
format H3MR4_C %1.0f
format H3MR5M_C %2.0f
format H3MR5Y_C %4.0f
format H3MR6_C %1.0f
format H3MR7M_C %2.0f
format H3MR7Y_C %4.0f
format H3MR8 %1.0f
format H3MR9 %2.0f
format H3MR_C_A %2.0f
format H3MR10MA %2.0f
format H3MR10YA %4.0f
format H3MR11_A %1.0f
format H3MR12MA %2.0f
format H3MR12YA %4.0f
format H3MR13_A %1.0f
format H3MR14_A %1.0f
format H3MR15MA %2.0f
format H3MR15YA %4.0f
format H3MR_C_B %2.0f
format H3MR10MB %2.0f
format H3MR10YB %4.0f
format H3MR11_B %1.0f
format H3MR12MB %2.0f
format H3MR12YB %4.0f
format H3MR13_B %1.0f
format H3MR14_B %1.0f
format H3MR15MB %2.0f
format H3MR15YB %4.0f
format H3MR_C_C %2.0f
format H3MR10MC %2.0f
format H3MR10YC %4.0f
format H3MR11_C %1.0f
format H3MR12MC %2.0f
format H3MR12YC %4.0f
format H3MR13_C %1.0f
format H3MR14_C %1.0f
format H3MR15MC %2.0f
format H3MR15YC %4.0f
format H3MR_C_D %2.0f
format H3MR10MD %2.0f
format H3MR10YD %4.0f
format H3MR11_D %1.0f
format H3MR12MD %2.0f
format H3MR12YD %4.0f
format H3MR13_D %1.0f
format H3MR14_D %1.0f
format H3MR15MD %2.0f
format H3MR15YD %4.0f
format H3MR_C_E %2.0f
format H3MR10ME %2.0f
format H3MR10YE %4.0f
format H3MR11_E %1.0f
format H3MR12ME %2.0f
format H3MR12YE %4.0f
format H3MR13_E %1.0f
format H3MR14_E %1.0f
format H3MR15ME %2.0f
format H3MR15YE %4.0f
format H3MR_C_F %2.0f
format H3MR10MF %2.0f
format H3MR10YF %4.0f
format H3MR11_F %1.0f
format H3MR12MF %2.0f
format H3MR12YF %4.0f
format H3MR13_F %1.0f
format H3MR14_F %1.0f
format H3MR15MF %2.0f
format H3MR15YF %4.0f
format H3MR_C_G %2.0f
format H3MR10MG %2.0f
format H3MR10YG %4.0f
format H3MR11_G %1.0f
format H3MR12MG %2.0f
format H3MR12YG %4.0f
format H3MR13_G %1.0f
format H3MR14_G %1.0f
format H3MR15MG %2.0f
format H3MR15YG %4.0f
format H3MR_C_H %2.0f
format H3MR10MH %2.0f
format H3MR10YH %4.0f
format H3MR11_H %1.0f
format H3MR12MH %2.0f
format H3MR12YH %4.0f
format H3MR13_H %1.0f
format H3MR14_H %1.0f
format H3MR15MH %2.0f
format H3MR15YH %4.0f
format H3MR_C_I %2.0f
format H3MR10MI %2.0f
format H3MR10YI %4.0f
format H3MR11_I %1.0f
format H3MR12MI %2.0f
format H3MR12YI %4.0f
format H3MR13_I %1.0f
format H3MR14_I %1.0f
format H3MR15MI %2.0f
format H3MR15YI %4.0f
format H3MR_C_J %2.0f
format H3MR10MJ %2.0f
format H3MR10YJ %4.0f
format H3MR11_J %1.0f
format H3MR12MJ %2.0f
format H3MR12YJ %4.0f
format H3MR13_J %1.0f
format H3MR14_J %1.0f
format H3MR15MJ %2.0f
format H3MR15YJ %4.0f
format H3MR16A %2.0f
format H3MR16B %2.0f
format H3MR16C %2.0f
format H3MR16D %2.0f
format H3MR16E %2.0f
format H3MR17 %2.0f
format H3MR18 %1.0f
format H3MR19 %1.0f
format H3MR20 %1.0f
format H3MR21 %1.0f
format H3MR22 %2.0f
format H3EC1A %1.0f
format H3EC1B %1.0f
format H3EC1C %1.0f
format H3EC1D %1.0f
format H3EC1E %1.0f
format H3EC1F %1.0f
format H3EC1G %1.0f
format H3EC1H %1.0f
format H3EC2 %6.0f
format H3EC3 %2.0f
format H3EC4 %6.0f
format H3EC5 %2.0f
format H3EC6 %6.0f
format H3EC7 %2.0f
format H3EC8 %6.0f
format H3EC9 %2.0f
format H3EC10 %1.0f
format H3EC11 %1.0f
format H3EC12 %1.0f
format H3EC13 %1.0f
format H3EC14 %1.0f
format H3EC15 %1.0f
format H3EC16 %1.0f
format H3EC17 %1.0f
format H3EC18 %1.0f
format H3EC19 %1.0f
format H3EC20 %1.0f
format H3EC21 %1.0f
format H3EC22 %1.0f
format H3EC23 %1.0f
format H3EC24 %1.0f
format H3EC25 %1.0f
format H3EC26 %1.0f
format H3EC27 %1.0f
format H3EC28 %1.0f
format H3EC29A %1.0f
format H3EC29B %1.0f
format H3EC29C %1.0f
format H3EC29D %1.0f
format H3EC29E %1.0f
format H3EC29F %1.0f
format H3EC29G %1.0f
format H3EC29H %1.0f
format H3EC30A %1.0f
format H3EC30B %1.0f
format H3EC30C %1.0f
format H3EC30D %1.0f
format H3EC30E %1.0f
format H3EC30F %1.0f
format H3EC31 %1.0f
format H3EC32A %1.0f
format H3EC32B %1.0f
format H3EC32C %1.0f
format H3EC32D %1.0f
format H3EC33 %1.0f
format H3EC34 %1.0f
format H3EC35 %1.0f
format H3EC36A %1.0f
format H3EC36B %1.0f
format H3EC36C %1.0f
format H3EC36D %1.0f
format H3EC36E %1.0f
format H3EC36F %1.0f
format H3EC36G %1.0f
format H3EC36H %1.0f
format H3EC37A %1.0f
format H3EC37B %1.0f
format H3EC37C %1.0f
format H3EC37D %1.0f
format H3EC37E %1.0f
format H3EC37F %1.0f
format H3EC38 %1.0f
format H3EC39 %1.0f
format H3EC40 %1.0f
format H3EC41 %1.0f
format H3EC42 %1.0f
format H3EC43 %1.0f
format H3EC44 %1.0f
format H3EC45 %1.0f
format H3EC46 %1.0f
format H3EC47 %1.0f
format H3EC48 %1.0f
format H3EC49 %1.0f
format H3EC50 %1.0f
format H3EC51 %1.0f
format H3EC52 %1.0f
format H3EC53 %1.0f
format H3EC54 %1.0f
format H3EC55 %1.0f
format H3EC56 %2.0f
format H3EC57 %2.0f
format H3EC58 %2.0f
format H3EC59 %2.0f
format H3EC60 %2.0f
format H3EC61 %2.0f
format H3EC62 %1.0f
format H3EC63 %2.0f
format H3SE1 %1.0f
format H3SE2 %2.0f
format H3SE3 %2.0f
format H3SE4 %2.0f
format H3SE5 %1.0f
format H3SE6 %3.0f
format H3SE7 %1.0f
format H3SE8 %1.0f
format H3SE9 %1.0f
format H3SE10 %1.0f
format H3SE11 %1.0f
format H3SE12 %1.0f
format H3SE13 %2.0f
format H3SE14 %1.0f
format H3SE15 %1.0f
format H3SE16 %1.0f
format H3SE17 %1.0f
format H3SE18 %1.0f
format H3SE19 %1.0f
format H3SE20 %1.0f
format H3SE21A %1.0f
format H3SE21B %1.0f
format H3SE21C %1.0f
format H3SE21D %1.0f
format H3SE21E %1.0f
format H3SE21F %1.0f
format H3SE21G %1.0f
format H3SE21H %1.0f
format H3SE21I %1.0f
format H3SE21J %1.0f
format H3SE21K %1.0f
format H3SE21L %1.0f
format H3SE21M %1.0f
format H3SE21N %1.0f
format H3SE22A %1.0f
format H3SE22B %1.0f
format H3SE22C %1.0f
format H3SE22D %1.0f
format H3SE22E %1.0f
format H3SE22F %1.0f
format H3SE22G %1.0f
format H3SE22H %1.0f
format H3SE22I %1.0f
format H3SE22J %1.0f
format H3SE23A %1.0f
format H3SE23B %1.0f
format H3SE23C %1.0f
format H3SE23D %1.0f
format H3SE23E %1.0f
format H3SE23F %1.0f
format H3SE24A %1.0f
format H3SE24B %1.0f
format H3SE24C %1.0f
format H3SE24D %1.0f
format H3SE24E %1.0f
format H3SE24F %1.0f
format H3SE25 %1.0f
format H3SE26 %2.0f
format H3SE27A %1.0f
format H3SE27B %1.0f
format H3SE27C %1.0f
format H3SE27D %1.0f
format H3SE27E %1.0f
format H3SE28 %1.0f
format H3SE29A %1.0f
format H3SE29B %1.0f
format H3SE29C %1.0f
format H3SE29D %1.0f
format H3SE29E %1.0f
format H3SE29F %1.0f
format H3SE29G %1.0f
format H3SE30A %1.0f
format H3SE30B %1.0f
format H3SE31 %1.0f
format H3SE32 %2.0f
format H3SE33 %2.0f
format H3SE34 %2.0f
format H3SE35 %2.0f
format H3SE36 %2.0f
format H3SE37 %2.0f
format RRELNO %2.0f
format H3BM1 %2.0f
format H3BM2 %2.0f
format H3BM3 %2.0f
format H3BM4 %2.0f
format H3BM5 %2.0f
format H3BM6 %2.0f
format H3BM7 %2.0f
format H3BM8 %2.0f
format H3BM9 %2.0f
format H3BM10 %2.0f
format H3BM11 %2.0f
format H3BM12 %2.0f
format H3BM13 %2.0f
format H3BM14 %2.0f
format H3BM15 %2.0f
format H3BM16 %2.0f
format H3BM17 %2.0f
format H3BM18 %2.0f
format H3BM19 %2.0f
format H3BM20 %2.0f
format H3BM21 %2.0f
format H3BM22 %2.0f
format H3BM23 %2.0f
format H3BM24 %2.0f
format H3BM25 %2.0f
format H3BM26 %2.0f
format H3BM27 %2.0f
format H3BM28 %2.0f
format H3BM29 %2.0f
format H3BM30 %2.0f
format H3BM31 %2.0f
format H3BM32 %2.0f
format H3BM33 %2.0f
format H3BM34 %2.0f
format H3BM35 %2.0f
format H3BM36 %2.0f
format H3BM37 %2.0f
format H3BM38 %2.0f
format H3PR1 %1.0f
format H3PR2 %1.0f
format H3PR3 %1.0f
format H3PR4 %1.0f
format H3PR5 %1.0f
format H3PR6 %1.0f
format H3PR7 %1.0f
format H3DS1 %1.0f
format H3DS2 %1.0f
format H3DS3 %1.0f
format H3DS4 %1.0f
format H3DS5 %1.0f
format H3DS6 %1.0f
format H3DS7 %1.0f
format H3DS8 %1.0f
format H3DS9 %1.0f
format H3DS10 %1.0f
format H3DS11 %1.0f
format H3DS12 %1.0f
format H3DS13 %1.0f
format H3DS14 %1.0f
format H3DS15 %2.0f
format H3DS16 %2.0f
format H3DS17 %3.0f
format H3DS18A %1.0f
format H3DS18B %1.0f
format H3DS18C %1.0f
format H3DS18D %1.0f
format H3DS18E %1.0f
format H3DS18F %1.0f
format H3DS18G %1.0f
format H3DS18H %1.0f
format H3DS18I %1.0f
format H3CJ1 %1.0f
format H3CJ2 %2.0f
format H3CJ3 %1.0f
format H3CJ4 %2.0f
format H3CJ5 %2.0f
format H3CJ6 %1.0f
format H3CJ7 %1.0f
format H3CJ8 %1.0f
format H3CJ9 %1.0f
format H3CJ10 %1.0f
format H3CJ11 %1.0f
format H3CJ12 %1.0f
format H3CJ13 %1.0f
format H3CJ14 %1.0f
format H3CJ15 %1.0f
format H3CJ16 %1.0f
format H3CJ17 %1.0f
format H3CJ18 %1.0f
format H3CJ19 %1.0f
format H3CJ20 %1.0f
format H3CJ21 %1.0f
format H3CJ22 %1.0f
format H3CJ23 %2.0f
format H3CJ24 %2.0f
format H3CJ25M %2.0f
format H3CJ25Y %4.0f
format H3CJ26 %1.0f
format H3CJ27 %1.0f
format H3CJ28 %1.0f
format H3CJ29 %1.0f
format H3CJ30 %1.0f
format H3CJ31 %1.0f
format H3CJ32 %1.0f
format H3CJ33 %1.0f
format H3CJ34 %1.0f
format H3CJ35 %1.0f
format H3CJ36 %1.0f
format H3CJ37 %1.0f
format H3CJ38 %1.0f
format H3CJ39 %1.0f
format H3CJ40 %1.0f
format H3CJ41 %1.0f
format H3CJ42 %1.0f
format H3CJ43A %2.0f
format H3CJ43B %2.0f
format H3CJ44 %1.0f
format H3CJ45 %1.0f
format H3CJ46 %1.0f
format H3CJ47 %1.0f
format H3CJ48 %1.0f
format H3CJ49 %1.0f
format H3CJ50 %1.0f
format H3CJ51 %1.0f
format H3CJ52 %1.0f
format H3CJ53 %1.0f
format H3CJ54 %1.0f
format H3CJ55 %1.0f
format H3CJ56 %1.0f
format H3CJ57 %1.0f
format H3CJ58 %1.0f
format H3CJ59 %1.0f
format H3CJ60 %1.0f
format H3CJ61 %1.0f
format H3CJ62 %1.0f
format H3CJ63A %2.0f
format H3CJ63B %2.0f
format H3CJ64A %2.0f
format H3CJ64B %2.0f
format H3CJ65 %1.0f
format H3CJ66 %1.0f
format H3CJ67 %1.0f
format H3CJ68 %3.0f
format H3CJ69 %1.0f
format H3CJ70 %1.0f
format H3CJ71 %1.0f
format H3CJ72 %1.0f
format H3CJ73 %1.0f
format H3CJ74 %1.0f
format H3CJ75 %1.0f
format H3CJ76 %1.0f
format H3CJ77 %1.0f
format H3CJ78 %1.0f
format H3CJ79 %1.0f
format H3CJ80 %1.0f
format H3CJ81 %1.0f
format H3CJ82 %1.0f
format H3CJ83 %1.0f
format H3CJ84 %1.0f
format H3CJ85 %1.0f
format H3CJ86 %1.0f
format H3CJ87 %2.0f
format H3CJ88 %2.0f
format H3CJ89M %2.0f
format H3CJ89Y %4.0f
format H3CJ90 %1.0f
format H3CJ91 %1.0f
format H3CJ92 %1.0f
format H3CJ93 %1.0f
format H3CJ94 %1.0f
format H3CJ95 %1.0f
format H3CJ96 %1.0f
format H3CJ97 %1.0f
format H3CJ98 %1.0f
format H3CJ99 %1.0f
format H3CJ100 %1.0f
format H3CJ101 %1.0f
format H3CJ102 %1.0f
format H3CJ103 %1.0f
format H3CJ104 %1.0f
format H3CJ105 %1.0f
format H3CJ106 %1.0f
format H3CJ107 %1.0f
format H3CJ108A %2.0f
format H3CJ108B %3.0f
format H3CJ109A %2.0f
format H3CJ109B %2.0f
format H3CJ110 %1.0f
format H3CJ111 %1.0f
format H3CJ112M %2.0f
format H3CJ112Y %4.0f
format H3CJ113 %1.0f
format H3CJ114 %1.0f
format H3CJ115 %1.0f
format H3CJ116 %1.0f
format H3CJ117 %1.0f
format H3CJ118 %1.0f
format H3CJ119 %1.0f
format H3CJ120 %1.0f
format H3CJ121 %1.0f
format H3CJ122 %1.0f
format H3CJ123 %1.0f
format H3CJ124 %1.0f
format H3CJ125 %1.0f
format H3CJ126 %1.0f
format H3CJ127 %1.0f
format H3CJ128 %1.0f
format H3CJ129 %1.0f
format H3CJ130 %1.0f
format H3CJ131A %2.0f
format H3CJ131B %2.0f
format H3CJ132A %2.0f
format H3CJ132B %2.0f
format H3CJ133 %1.0f
format H3CJ134 %1.0f
format H3CJ135 %1.0f
format H3CJ136 %1.0f
format H3CJ137 %1.0f
format H3CJ138 %1.0f
format H3CJ139 %1.0f
format H3CJ140 %1.0f
format H3CJ141 %1.0f
format H3CJ142 %1.0f
format H3CJ143 %1.0f
format H3CJ144 %1.0f
format H3CJ145 %1.0f
format H3CJ146 %1.0f
format H3CJ147 %1.0f
format H3CJ148 %1.0f
format H3CJ149 %1.0f
format H3CJ150 %1.0f
format H3CJ151 %1.0f
format H3CJ152 %1.0f
format H3CJ153 %1.0f
format H3CJ154 %1.0f
format H3CJ155 %1.0f
format H3CJ156A %2.0f
format H3CJ156B %2.0f
format H3CJ157A %2.0f
format H3CJ157B %2.0f
format H3CJ158 %1.0f
format H3CJ159 %1.0f
format H3CJ160 %1.0f
format H3TO1 %1.0f
format H3TO2 %1.0f
format H3TO3 %2.0f
format H3TO4 %1.0f
format H3TO5 %2.0f
format H3TO6 %1.0f
format H3TO7 %2.0f
format H3TO8 %2.0f
format H3TO9 %2.0f
format H3TO10 %3.0f
format H3TO11 %1.0f
format H3TO12 %1.0f
format H3TO13 %1.0f
format H3TO14 %1.0f
format H3TO15 %1.0f
format H3TO16 %1.0f
format H3TO17 %1.0f
format H3TO18 %1.0f
format H3TO19 %1.0f
format H3TO20 %1.0f
format H3TO21 %1.0f
format H3TO22 %1.0f
format H3TO23 %1.0f
format H3TO24 %1.0f
format H3TO25A %1.0f
format H3TO25B %1.0f
format H3TO25C %1.0f
format H3TO25D %1.0f
format H3TO25E %1.0f
format H3TO25F %1.0f
format H3TO25G %1.0f
format H3TO25H %1.0f
format H3TO25I %1.0f
format H3TO26 %1.0f
format H3TO27 %2.0f
format H3TO28 %2.0f
format H3TO29 %2.0f
format H3TO30 %2.0f
format H3TO31 %2.0f
format H3TO32 %2.0f
format H3TO33 %2.0f
format H3TO34 %2.0f
format H3TO35 %2.0f
format H3TO36 %2.0f
format H3TO37 %1.0f
format H3TO38 %2.0f
format H3TO39 %2.0f
format H3TO40 %2.0f
format H3TO41 %2.0f
format H3TO42 %2.0f
format H3TO43 %2.0f
format H3TO44 %2.0f
format H3TO45 %1.0f
format H3TO46 %1.0f
format H3TO47 %1.0f
format H3TO48A %1.0f
format H3TO48B %1.0f
format H3TO48C %1.0f
format H3TO48D %1.0f
format H3TO48E %1.0f
format H3TO49 %1.0f
format H3TO50 %2.0f
format H3TO51 %2.0f
format H3TO52 %2.0f
format H3TO53 %2.0f
format H3TO54 %2.0f
format H3TO55 %2.0f
format H3TO56 %2.0f
format H3TO57 %2.0f
format H3TO58 %2.0f
format H3TO59 %2.0f
format H3TO60 %2.0f
format H3TO61 %2.0f
format H3TO62 %2.0f
format H3TO63 %2.0f
format H3TO64 %2.0f
format H3TO65 %2.0f
format H3TO66 %2.0f
format H3TO67 %2.0f
format H3TO68 %2.0f
format H3TO69 %2.0f
format H3TO70 %2.0f
format H3TO71 %2.0f
format H3TO72 %2.0f
format H3TO73 %2.0f
format H3TO74 %2.0f
format H3TO75 %2.0f
format H3TO76 %2.0f
format H3TO77 %2.0f
format H3TO78 %2.0f
format H3TO79 %2.0f
format H3TO80 %2.0f
format H3TO81 %2.0f
format H3TO82 %2.0f
format H3TO83 %2.0f
format H3TO84 %2.0f
format H3TO85 %2.0f
format H3TO86 %2.0f
format H3TO87 %2.0f
format H3TO88 %2.0f
format H3TO89 %2.0f
format H3TO90 %2.0f
format H3TO91 %2.0f
format H3TO92 %2.0f
format H3TO93 %2.0f
format H3TO94 %1.0f
format H3TO95 %1.0f
format H3TO96 %1.0f
format H3TO97 %1.0f
format H3TO98 %1.0f
format H3TO99 %1.0f
format H3TO100 %1.0f
format H3TO101 %1.0f
format H3TO102 %1.0f
format H3TO103 %1.0f
format H3TO104 %1.0f
format H3TO105A %1.0f
format H3TO105B %1.0f
format H3TO105C %1.0f
format H3TO105D %1.0f
format H3TO105E %1.0f
format H3TO106 %1.0f
format H3TO107 %1.0f
format H3TO108 %1.0f
format H3TO109 %1.0f
format H3TO110 %4.0f
format H3TO111 %1.0f
format H3TO112 %1.0f
format H3TO113 %3.0f
format H3TO114 %1.0f
format H3TO115 %1.0f
format H3TO116 %3.0f
format H3TO117 %1.0f
format H3TO118 %1.0f
format H3TO119 %3.0f
format H3TO120 %1.0f
format H3TO121 %1.0f
format H3TO122 %3.0f
format H3TO123 %1.0f
format H3TO124 %1.0f
format H3TO125 %1.0f
format H3TO126 %1.0f
format H3TO127 %1.0f
format H3TO128 %1.0f
format H3TO129 %1.0f
format H3TO130 %1.0f
format H3TO131 %1.0f
format H3TO132 %1.0f
format H3TO133 %1.0f
format H3TO134 %1.0f
format H3TO135 %1.0f
format H3TO136 %1.0f
format H3MA1 %2.0f
format H3MA2 %2.0f
format H3MA3 %2.0f
format H3MA4 %2.0f
format H3MA5 %2.0f
format H3MA6 %2.0f
format H3MAC7 %2.0f
format H3MAC8 %2.0f
format H3MAC9 %2.0f
format H3MAC10 %2.0f
format H3CC1 %1.0f
format H3CC2A %1.0f
format H3CC2B %1.0f
format H3CC2C %1.0f
format H3CC3 %1.0f
format H3CC4A %1.0f
format H3CC4B %1.0f
format H3CC4C %1.0f
format H3CC4D %1.0f
format H3CC4E %1.0f
format H3CC4F %1.0f
format H3CC4G %1.0f
format H3CC4H %1.0f
format H3CC4I %1.0f
format H3CC5 %1.0f
format H3CC6 %1.0f
format H3CC7 %1.0f
format H3CC8 %1.0f
format H3CC9A %1.0f
format H3CC9B %1.0f
format H3CC9C %1.0f
format H3CC9D %1.0f
format H3CC9E %1.0f
format H3CC9F %1.0f
format H3CC10 %2.0f
format H3CC11 %2.0f
format H3CC12 %2.0f
format H3CC13 %2.0f
format H3CC14 %1.0f
format H3CC15 %2.0f
format H3RE1 %2.0f
format H3RE2 %2.0f
format H3RE3 %2.0f
format H3RE4 %1.0f
format H3RE5 %1.0f
format H3RE6 %2.0f
format H3RE7 %2.0f
format H3RE8 %2.0f
format H3RE9 %2.0f
format H3RE10 %2.0f
format H3RE11 %1.0f
format H3RE12 %1.0f
format H3RE13 %1.0f
format H3RE14 %1.0f
format H3RE15 %1.0f
format H3RE16 %2.0f
format H3RE17 %2.0f
format H3RE18 %1.0f
format H3RE19 %1.0f
format H3RE20 %2.0f
format H3RE21 %2.0f
format H3RE22 %2.0f
format H3RE23 %1.0f
format H3RE24 %2.0f
format H3RE25 %2.0f
format H3RE26 %2.0f
format H3RE27 %2.0f
format H3RE28 %1.0f
format H3RE29 %1.0f
format H3RE30 %1.0f
format H3RE31 %2.0f
format H3RE32 %2.0f
format H3RE33 %1.0f
format H3RE34 %1.0f
format H3RE35 %2.0f
format H3RE36 %1.0f
format H3RE37 %2.0f
format H3RE38 %2.0f
format H3RE39 %2.0f
format H3RE40 %1.0f
format H3RE41 %1.0f
format H3RE42 %1.0f
format H3GM1 %1.0f
format H3GM2 %1.0f
format H3GM3 %1.0f
format H3GM4 %2.0f
format H3GM5 %1.0f
format H3GM6 %1.0f
format H3GM7 %1.0f
format H3GM8 %1.0f
format H3DA1 %2.0f
format H3DA2 %2.0f
format H3DA3 %2.0f
format H3DA4 %3.0f
format H3DA5 %3.0f
format H3DA6 %2.0f
format H3DA7 %3.0f
format H3DA8 %2.0f
format H3DA9 %2.0f
format H3DA10 %2.0f
format H3DA11 %2.0f
format H3DA12 %2.0f
format H3DA13 %2.0f
format H3DA14 %2.0f
format H3DA15 %2.0f
format H3DA16 %1.0f
format H3DA17 %1.0f
format H3DA18 %2.0f
format H3DA19 %2.0f
format H3DA20 %3.0f
format H3DA21 %3.0f
format H3DA22 %1.0f
format H3DA23 %1.0f
format H3DA24 %2.0f
format H3DA25 %1.0f
format H3DA26 %2.0f
format H3DA27 %2.0f
format H3DA28 %1.0f
format H3DA29A %1.0f
format H3DA29B %1.0f
format H3DA29C %1.0f
format H3DA29D %1.0f
format H3DA29E %1.0f
format H3DA29F %1.0f
format H3DA30 %3.0f
format H3DA31 %3.0f
format H3DA32 %3.0f
format H3DA33 %2.0f
format H3DA34 %2.0f
format H3DA35 %3.0f
format H3DA36 %1.0f
format H3DA37 %3.0f
format H3DA38A %1.0f
format H3DA38B %1.0f
format H3DA38C %1.0f
format H3DA38D %1.0f
format H3DA38E %1.0f
format H3DA38F %1.0f
format H3DA39 %3.0f
format H3DA40 %2.0f
format H3DA41 %2.0f
format H3DA42 %3.0f
format H3DA43F %2.0f
format H3DA43I %2.0f
format H3DA44 %3.0f
format H3DA45 %2.0f
format H3WGT %5.1f
format H3HGT_F %2.0f
format H3HGT_I %2.0f
format H3HGT_PI %5.3f
format CH %1.0f
format GC %1.0f
format TRICH %1.0f
format H3RPART %2.0f
format H3IR1 %1.0f
format H3IR2 %1.0f
format H3IR3 %1.0f
format H3IR4 %1.0f
format H3IR5 %1.0f
format H3IR6 %1.0f
format H3IR7 %1.0f
format H3IR8 %1.0f
format H3IR9 %1.0f
format H3IR10 %1.0f
format H3IR11 %1.0f
format H3IR12 %1.0f
format H3IR13 %1.0f
format H3IR14 %1.0f
format H3IR15 %1.0f
format H3IR16 %1.0f
format H3IR17 %1.0f
format H3IR18 %1.0f
format H3IR19 %1.0f
format H3IR20 %1.0f
format H3IR21 %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave III: In-Home Questionnaire, Public Use Sample"

#delimit ;
label define IMONTH3   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December" ;
label define BIO_SEX3  1 "(1) Male" 2 "(2) Female" ;
label define VERSION3  1 "(1) Version 1" 2 "(2) Version 2" 3 "(3) Version 3"
                       4 "(4) Version 4" 5 "(5) Version 5" 6 "(6) Version 6"
                       7 "(7) Version 7" 8 "(8) Version 8" 9 "(9) Version 9"
                       10 "(10) Version 10" 11 "(11) Version 11"
                       12 "(12) Version 12" 13 "(13) Version 13"
                       14 "(14) Version 14" 15 "(15) Version 15"
                       16 "(16) Version 16" 17 "(17) Version 17" ;
label define FRIEND    0 "(0) Not in Friend Sample" 1 "(1) In Friend Sample" ;
label define SIBLING   0 "(0) Not in Sibling Sample" 1 "(1) 1 sibling"
                       2 "(2) 2 siblings" 3 "(3) 3 siblings" ;
label define PARTNER   0 "(0) Not in Partner Sample"
                       1 "(1) In Partner Sample" ;
label define BINGE     0 "(0) Not in Binge Sample" 1 "(1) In Binge Sample" ;
label define PRMOM     2 "(2) Partner" 4 "(4) Brother" 13 "(13) Grandfather"
                       15 "(15) Uncle" 20 "(20) Wife" 23 "(23) Sister"
                       26 "(26) Brother's female partner" 27 "(27) Mother"
                       30 "(30) Father's female partner"
                       31 "(31) Mother-in-law" 32 "(32) Grandmother"
                       33 "(33) Great-grandmother" 34 "(34) Aunt"
                       37 "(37) Relative who acted as a mother to you"
                       38 "(38) Non-relative who acted as a mother to you"
                       68 "(68) Biological mother" 69 "(69) Adopted mother"
                       70 "(70) Step-mother who adopted you"
                       71 "(71) Step-mother" 72 "(72) Foster mother"
                       99 "(99) No one" ;
label define PRPOP     2 "(2) Partner" 4 "(4) Brother"
                       6 "(6) Sister's husband" 8 "(8) Father"
                       10 "(10) Mother's husband" 12 "(12) Father-in-law"
                       13 "(13) Grandfather" 14 "(14) Great-grandfather"
                       15 "(15) Uncle" 23 "(23) Sister" 32 "(32) Grandmother"
                       34 "(34) Aunt" 35 "(35) Cousin"
                       38 "(38) Non-relative who acted as a mother to you"
                       63 "(63) Biological father" 64 "(64) Adopted father"
                       65 "(65) Step-father who adopted you"
                       66 "(66) Step-father" 67 "(67) Foster father"
                       99 "(99) No one" ;
label define PRETEST3  0 "(0) Not a Pretest Interview"
                       1 "(1) Pretest Interview" ;
label define PRISON3   0 "(0) Not interviewed in prison"
                       1 "(1) Interviewed in prison" ;
label define H3OD1M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December" ;
label define H3OD2     0 "(0) No (skip to Q.4)" 1 "(1) Yes"
                       8 "(8) Don't know" ;
label define H3OD3A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3OD3B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD3C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD3D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD3E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD3F    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD4A    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3OD4B    0 "(0) Not marked" 1 "(1) Marked" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3OD4C    0 "(0) Not marked" 1 "(1) Marked" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3OD4D    0 "(0) Not marked" 1 "(1) Marked" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3OD5A    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3OD5B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD5C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD5D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD5E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD5F    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD5G    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3OD6     1 "(1) White" 2 "(2) Black/African American"
                       3 "(3) American Indian/Native American"
                       4 "(4) Asian/Pacific Islander" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3OD7A    1 "(1) Afghanistan" 2 "(2) Africa" 3 "(3) Albania"
                       5 "(5) America, includes Native American/Eskimo"
                       9 "(9) Armenia" 11 "(11) Australia" 12 "(12) Austria"
                       14 "(14) Bahamas" 16 "(16) Barbados"
                       22 "(22) British Isles" 25 "(25) Cambodia"
                       27 "(27) Canada" 30 "(30) China" 31 "(31) Colombia"
                       33 "(33) Cuba" 35 "(35) Czech Republic"
                       36 "(36) Czechoslovakia" 37 "(37) Denmark"
                       39 "(39) Dominican Republic" 40 "(40) Ecuador"
                       41 "(41) Egypt" 42 "(42) El Salvador"
                       43 "(43) England" 47 "(47) Finland" 48 "(48) France"
                       49 "(49) Germany" 51 "(51) Great Britain"
                       52 "(52) Greece" 54 "(54) Guatemala" 56 "(56) Haiti"
                       57 "(57) Honduras" 58 "(58) Hong Kong"
                       59 "(59) Hungary" 61 "(61) India" 63 "(63) Iran"
                       66 "(66) Israel" 68 "(68) Jamaica" 69 "(69) Japan"
                       74 "(74) Laos" 76 "(76) Lebanon" 79 "(79) Lithuania"
                       81 "(81) Macau" 82 "(82) Malaysia" 84 "(84) Mexico"
                       88 "(88) Netherlands" 91 "(91) Nicaragua"
                       92 "(92) Nigeria" 94 "(94) Norway" 99 "(99) Panama"
                       101 "(101) Peru" 102 "(102) Philippines"
                       103 "(103) Poland" 104 "(104) Portugal"
                       105 "(105) Romania" 106 "(106) Russia"
                       107 "(107) Saudi Arabia" 108 "(108) Scotland"
                       112 "(112) Slovakia" 117 "(117) Spain"
                       124 "(124) Sweden" 125 "(125) Switzerland"
                       126 "(126) Syria" 127 "(127) Taiwan"
                       129 "(129) Thailand" 131 "(131) Trinidad and Tobago"
                       134 "(134) Uganda" 135 "(135) Ukraine"
                       139 "(139) Vietnam" 140 "(140) Wales"
                       143 "(143) Yugoslavia" 200 "(200) American Indian"
                       201 "(201) Other, ethnicity or race listed"
                       202 "(202) Other, continent or geographic area listed"
                       203 "(203) Adopted, respondent doesn't know ancestry"
                       300 "(300) Puerto Rico"
                       402 "(402) Northern Africa excluding Egypt"
                       406 "(406) Eastern and Southern Africa excluding Uganda"
                       408 "(408) Western Africa excluding Nigeria"
                       414 "(414) West Indies excluding Bahamas"
                       419 "(419) Belize and Costa Rica"
                       426 "(426) Argentina/Chile/Uruguay"
                       427 "(427) Brazil/Bolivia/Paraguay"
                       428 "(428) Guyana/Suriname/Venezuela"
                       434 "(434) Indonesia and Singapore"
                       438 "(438) Bangladesh/Nepal/Pakistan/Sri Lanka"
                       442 "(442) Middle East" 444 "(444) Turkey and Cyprus"
                       447 "(447) North and South Korea"
                       452 "(452) Iceland and Atlantic Islands"
                       453 "(453) Italy and Malta"
                       455 "(455) Belgium and Luxembourg"
                       463 "(463) Estonia/Latvia/Bulgaria"
                       468 "(468) Iceland and Northern Ireland"
                       481 "(481) Pacific Islands excluding Western Samoa"
                       994 "(994) Invalid country given/unable to code"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H3OD7B    0 "(0) No other country" 2 "(2) Africa"
                       3 "(3) Albania"
                       5 "(5) America, includes Native American/Eskimo"
                       9 "(9) Armenia" 12 "(12) Austria" 14 "(14) Bahamas"
                       16 "(16) Barbados" 22 "(22) British Isles"
                       25 "(25) Cambodia" 27 "(27) Canada" 30 "(30) China"
                       31 "(31) Colombia" 33 "(33) Cuba"
                       35 "(35) Czech Republic" 36 "(36) Czechoslovakia"
                       37 "(37) Denmark" 39 "(39) Dominican Republic"
                       40 "(40) Ecuador" 41 "(41) Egypt"
                       42 "(42) El Salvador" 43 "(43) England"
                       47 "(47) Finland" 48 "(48) France" 49 "(49) Germany"
                       51 "(51) Great Britain" 52 "(52) Greece"
                       54 "(54) Guatemala" 56 "(56) Haiti" 57 "(57) Honduras"
                       58 "(58) Hong Kong" 59 "(59) Hungary" 61 "(61) India"
                       63 "(63) Iran" 66 "(66) Israel" 68 "(68) Jamaica"
                       69 "(69) Japan" 74 "(74) Laos" 76 "(76) Lebanon"
                       79 "(79) Lithuania" 82 "(82) Malaysia"
                       84 "(84) Mexico" 88 "(88) Netherlands"
                       91 "(91) Nicaragua" 94 "(94) Norway" 99 "(99) Panama"
                       101 "(101) Peru" 102 "(102) Philippines"
                       103 "(103) Poland" 104 "(104) Portugal"
                       105 "(105) Romania" 106 "(106) Russia"
                       107 "(107) Saudi Arabia" 108 "(108) Scotland"
                       112 "(112) Slovakia" 117 "(117) Spain"
                       124 "(124) Sweden" 125 "(125) Switzerland"
                       126 "(126) Syria" 127 "(127) Taiwan"
                       129 "(129) Thailand" 131 "(131) Trinidad and Tobago"
                       135 "(135) Ukraine" 139 "(139) Vietnam"
                       140 "(140) Wales" 141 "(141) Western Samoa"
                       143 "(143) Yugoslavia" 200 "(200) American Indian"
                       201 "(201) Other, ethnicity or race listed"
                       202 "(202) Other, continent or geographic area listed"
                       300 "(300) Puerto Rico"
                       402 "(402) Northern Africa excluding Egypt"
                       406 "(406) Eastern and Southern Africa excluding Uganda"
                       408 "(408) Western Africa excluding Nigeria"
                       414 "(414) West Indies excluding Bahamas"
                       419 "(419) Belize and Costa Rica"
                       426 "(426) Argentina/Chile/Uruguay"
                       427 "(427) Brazil/Bolivia/Paraguay"
                       428 "(428) Guyana/Suriname/Venezuela"
                       434 "(434) Indonesia and Singapore"
                       438 "(438) Bangladesh/Nepal/Pakistan/Sri Lanka"
                       442 "(442) Middle East" 444 "(444) Turkey and Cyprus"
                       447 "(447) North and South Korea"
                       452 "(452) Iceland and Atlantic Islands"
                       453 "(453) Italy and Malta"
                       455 "(455) Belgium and Luxembourg"
                       463 "(463) Estonia/Latvia/Bulgaria"
                       468 "(468) Iceland and Northern Ireland"
                       481 "(481) Pacific Islands excluding Western Samoa"
                       994 "(994) Invalid country given/unable to code"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3OD7C    0 "(0) No other country" 1 "(1) Afghanistan"
                       2 "(2) Africa" 3 "(3) Albania"
                       5 "(5) America, includes Native American/Eskimo"
                       9 "(9) Armenia" 11 "(11) Australia" 12 "(12) Austria"
                       14 "(14) Bahamas" 16 "(16) Barbados"
                       22 "(22) British Isles" 25 "(25) Cambodia"
                       27 "(27) Canada" 30 "(30) China" 31 "(31) Colombia"
                       33 "(33) Cuba" 35 "(35) Czech Republic"
                       36 "(36) Czechoslovakia" 37 "(37) Denmark"
                       39 "(39) Dominican Republic" 40 "(40) Ecuador"
                       41 "(41) Egypt" 42 "(42) El Salvador"
                       43 "(43) England" 47 "(47) Finland" 48 "(48) France"
                       49 "(49) Germany" 51 "(51) Great Britain"
                       52 "(52) Greece" 54 "(54) Guatemala" 56 "(56) Haiti"
                       57 "(57) Honduras" 58 "(58) Hong Kong"
                       59 "(59) Hungary" 61 "(61) India" 63 "(63) Iran"
                       66 "(66) Israel" 68 "(68) Jamaica" 69 "(69) Japan"
                       74 "(74) Laos" 76 "(76) Lebanon" 79 "(79) Lithuania"
                       81 "(81) Macau" 82 "(82) Malaysia" 84 "(84) Mexico"
                       88 "(88) Netherlands" 91 "(91) Nicaragua"
                       92 "(92) Nigeria" 94 "(94) Norway" 99 "(99) Panama"
                       101 "(101) Peru" 102 "(102) Philippines"
                       103 "(103) Poland" 104 "(104) Portugal"
                       105 "(105) Romania" 106 "(106) Russia"
                       107 "(107) Saudi Arabia" 108 "(108) Scotland"
                       112 "(112) Slovakia" 117 "(117) Spain"
                       124 "(124) Sweden" 125 "(125) Switzerland"
                       126 "(126) Syria" 127 "(127) Taiwan"
                       129 "(129) Thailand" 131 "(131) Trinidad and Tobago"
                       134 "(134) Uganda" 135 "(135) Ukraine"
                       139 "(139) Vietnam" 140 "(140) Wales"
                       143 "(143) Yugoslavia" 200 "(200) American Indian"
                       201 "(201) Other, ethnicity or race listed"
                       202 "(202) Other, continent or geographic area listed"
                       203 "(203) Adopted, respondent doesn't know ancestry"
                       300 "(300) Puerto Rico"
                       402 "(402) Northern Africa excluding Egypt"
                       406 "(406) Eastern and Southern Africa excluding Uganda"
                       408 "(408) Western Africa excluding Nigeria"
                       414 "(414) West Indies excluding Bahamas"
                       419 "(419) Belize and Costa Rica"
                       426 "(426) Argentina/Chile/Uruguay"
                       427 "(427) Brazil/Bolivia/Paraguay"
                       428 "(428) Guyana/Suriname/Venezuela"
                       434 "(434) Indonesia and Singapore"
                       438 "(438) Bangladesh/Nepal/Pakistan/Sri Lanka"
                       442 "(442) Middle East" 444 "(444) Turkey and Cyprus"
                       447 "(447) North and South Korea"
                       452 "(452) Iceland and Atlantic Islands"
                       453 "(453) Italy and Malta"
                       455 "(455) Belgium and Luxembourg"
                       463 "(463) Estonia/Latvia/Bulgaria"
                       468 "(468) Iceland and Northern Ireland"
                       481 "(481) Pacific Islands excluding Western Samoa"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3OD7D    0 "(0) No other country" 1 "(1) Afghanistan"
                       2 "(2) Africa" 3 "(3) Albania"
                       5 "(5) America, includes Native American/Eskimo"
                       9 "(9) Armenia" 11 "(11) Australia" 12 "(12) Austria"
                       14 "(14) Bahamas" 16 "(16) Barbados"
                       22 "(22) British Isles" 25 "(25) Cambodia"
                       27 "(27) Canada" 30 "(30) China" 31 "(31) Colombia"
                       33 "(33) Cuba" 35 "(35) Czech Republic"
                       36 "(36) Czechoslovakia" 37 "(37) Denmark"
                       39 "(39) Dominican Republic" 40 "(40) Ecuador"
                       41 "(41) Egypt" 42 "(42) El Salvador"
                       43 "(43) England" 47 "(47) Finland" 48 "(48) France"
                       49 "(49) Germany" 51 "(51) Great Britain"
                       52 "(52) Greece" 54 "(54) Guatemala" 56 "(56) Haiti"
                       57 "(57) Honduras" 58 "(58) Hong Kong"
                       59 "(59) Hungary" 61 "(61) India" 63 "(63) Iran"
                       66 "(66) Israel" 68 "(68) Jamaica" 69 "(69) Japan"
                       74 "(74) Laos" 76 "(76) Lebanon" 79 "(79) Lithuania"
                       81 "(81) Macau" 82 "(82) Malaysia" 84 "(84) Mexico"
                       88 "(88) Netherlands" 91 "(91) Nicaragua"
                       92 "(92) Nigeria" 94 "(94) Norway" 99 "(99) Panama"
                       101 "(101) Peru" 102 "(102) Philippines"
                       103 "(103) Poland" 104 "(104) Portugal"
                       105 "(105) Romania" 106 "(106) Russia"
                       107 "(107) Saudi Arabia" 108 "(108) Scotland"
                       112 "(112) Slovakia" 117 "(117) Spain"
                       124 "(124) Sweden" 125 "(125) Switzerland"
                       126 "(126) Syria" 127 "(127) Taiwan"
                       129 "(129) Thailand" 131 "(131) Trinidad and Tobago"
                       134 "(134) Uganda" 135 "(135) Ukraine"
                       139 "(139) Vietnam" 140 "(140) Wales"
                       143 "(143) Yugoslavia" 200 "(200) American Indian"
                       201 "(201) Other, ethnicity or race listed"
                       202 "(202) Other, continent or geographic area listed"
                       203 "(203) Adopted, respondent doesn't know ancestry"
                       300 "(300) Puerto Rico"
                       402 "(402) Northern Africa excluding Egypt"
                       406 "(406) Eastern and Southern Africa excluding Uganda"
                       408 "(408) Western Africa excluding Nigeria"
                       414 "(414) West Indies excluding Bahamas"
                       419 "(419) Belize and Costa Rica"
                       426 "(426) Argentina/Chile/Uruguay"
                       427 "(427) Brazil/Bolivia/Paraguay"
                       428 "(428) Guyana/Suriname/Venezuela"
                       434 "(434) Indonesia and Singapore"
                       438 "(438) Bangladesh/Nepal/Pakistan/Sri Lanka"
                       442 "(442) Middle East" 444 "(444) Turkey and Cyprus"
                       447 "(447) North and South Korea"
                       452 "(452) Iceland and Atlantic Islands"
                       453 "(453) Italy and Malta"
                       455 "(455) Belgium and Luxembourg"
                       463 "(463) Estonia/Latvia/Bulgaria"
                       468 "(468) Iceland and Northern Ireland"
                       481 "(481) Pacific Islands excluding Western Samoa"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3OD8     2 "(2) Africa"
                       5 "(5) America, includes Native American/Eskimo"
                       12 "(12) Austria" 22 "(22) British Isles"
                       27 "(27) Canada" 30 "(30) China" 33 "(33) Cuba"
                       35 "(35) Czech Republic" 36 "(36) Czechoslovakia"
                       37 "(37) Denmark" 42 "(42) El Salvador"
                       43 "(43) England" 47 "(47) Finland" 48 "(48) France"
                       49 "(49) Germany" 51 "(51) Great Britain"
                       52 "(52) Greece" 56 "(56) Haiti" 57 "(57) Honduras"
                       58 "(58) Hong Kong" 59 "(59) Hungary" 61 "(61) India"
                       65 "(65) Ireland/Erie" 68 "(68) Jamaica"
                       69 "(69) Japan" 76 "(76) Lebanon" 84 "(84) Mexico"
                       91 "(91) Nicaragua" 94 "(94) Norway"
                       102 "(102) Philippines" 103 "(103) Poland"
                       104 "(104) Portugal" 106 "(106) Russia"
                       108 "(108) Scotland" 112 "(112) Slovakia"
                       117 "(117) Spain" 124 "(124) Sweden"
                       125 "(125) Switzerland" 127 "(127) Taiwan"
                       135 "(135) Ukraine" 139 "(139) Vietnam"
                       140 "(140) Wales" 200 "(200) American Indian"
                       201 "(201) Other, ethnicity or race listed"
                       300 "(300) Puerto Rico"
                       413 "(413) West Indies excluding Cuba/Haiti/Jamaica/Puerto Rico"
                       416 "(416) Central America excluding El Salvador/Honduras/Nicarag"
                       424 "(424) South America excluding Colombia/Guyana/Venezuela"
                       425 "(425) Columbia/Guyana/Venezuela"
                       433 "(433) Southeastern Asia excluding Philippines/Vietnam/Burma"
                       441 "(441) Middle East excluding Lebanon/Armenia"
                       447 "(447) North and South Korea"
                       453 "(453) Italy and Malta"
                       454 "(454) Belgium/Luxembourg/Netherlands"
                       461 "(461) Albania/Bulgaria/Romania/Yugoslavia"
                       462 "(462) All of Baltic states"
                       482 "(482) Pacific Islands, Australia, and Atlantic islands"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H3OD9     1 "(1) English" 2 "(2) Spanish"
                       3 "(3) Another European language"
                       4 "(4) An Asian language"
                       5 "(5) A non-European/non-Asian language"
                       6 "(6) Half English and half another language"
                       7 "(7) Other" ;
label define H3OD10    1 "(1) English" 2 "(2) Spanish"
                       3 "(3) Another European language"
                       4 "(4) An Asian language"
                       5 "(5) A non-European/non-Asian language"
                       6 "(6) Half English and half another language"
                       7 "(7) Other" ;
label define H3OD11    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3OD12    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3OD13    0 "(0) No" 1 "(1) Yes (skip to Q.20)" ;
label define H3OD14    995 "(995) Not asked of original respondents" ;
label define H3OD15    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3OD16    0 "(0) No" 1 "(1) Yes (skip to Q.20)"
                       7 "(7) Legitimate skip" ;
label define H3OD17    0 "(0) No (skip to Q.19)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3OD18M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3OD18Y   9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3OD19    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3OD20    0 "(0) No (skip to Q.23)" 1 "(1) Yes" ;
label define H3OD21A   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3OD21B   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD21C   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD21D   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD21E   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3OD22    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3OD23    0 "(0) No (skip to Q.31)" 1 "(1) Yes"
                       8 "(8) Don't know" ;
label define H3OD24    0 "(0) No" 1 "(1) Yes (skip to Q.26)"
                       7 "(7) Legitimate skip" ;
label define H3OD25    0 "(0) No" 1 "(1) Yes (skip to Q.31)"
                       7 "(7) Legitimate skip (skip to Q.31)" ;
label define H3OD26    0 "(0) Less than 1 year old" 1 "(1) 1 year old"
                       2 "(2) 2 years old" 3 "(3) 3 years old"
                       4 "(4) 4 years old" 5 "(5) 5 years old"
                       6 "(6) 6 years old" 7 "(7) 7 years old"
                       8 "(8) 8 years old" 9 "(9) 9 years old"
                       10 "(10) 10 years old" 11 "(11) 11 years old"
                       12 "(12) 12 years old" 13 "(13) 13 years old"
                       14 "(14) 14 years old" 15 "(15) 15 years old"
                       16 "(16) 16 years old" 17 "(17) 17 years old"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3OD27    0 "(0) Less than 1 month" 1 "(1) 1 month old"
                       2 "(2) 2 months old" 3 "(3) 3 months old"
                       4 "(4) 4 months old" 5 "(5) 5 months old"
                       6 "(6) 6 months old" 7 "(7) 7 months old"
                       8 "(8) 8 months old" 9 "(9) 9 months old"
                       10 "(10) 10 months old" 11 "(11) 11 months old"
                       97 "(97) Legitimate skip" ;
label define H3OD28    0 "(0) 0 years" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3OD29    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3OD30    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3OD31    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3OD32    1 "(1) 1 home" 2 "(2) 2 homes" 3 "(3) 3 homes"
                       4 "(4) 4 homes" 5 "(5) 5 homes" 6 "(6) 6 homes"
                       7 "(7) 7 homes" 8 "(8) 8 homes"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3OD33    0 "(0) No (skip to Q.35)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H3OD34A   0 "(0) Less than 1 month" 1 "(1) 1 month"
                       2 "(2) 2 months" 3 "(3) 3 months" 4 "(4) 4 months"
                       5 "(5) 5 months" 6 "(6) 6 months" 7 "(7) 7 months"
                       8 "(8) 8 months" 9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months" 97 "(97) Legitimate skip" ;
label define H3OD34B   0 "(0) Less than 1 year" 1 "(1) 1 year"
                       2 "(2) 2 years" 3 "(3) 3 years" 6 "(6) 6 years"
                       97 "(97) Legitimate skip" ;
label define H3OD35    0 "(0) No (skip to next section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3OD36M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3OD36Y   9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3OD37M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3OD37Y   9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3OD38    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3HR1     1 "(1) R lives at interview site"
                       2 "(2) R lives somewhere else" 9 "(9) Not applicable" ;
label define H3HR2     1 "(1) Your parent's home"
                       2 "(2) Another person's home"
                       3 "(3) Your own place (apt, house, trailer, etc)"
                       4 "(4) Group quarters"
                       5 "(5) Homeless-you have no regular place to stay"
                       6 "(6) Other (skip to Q.5)" 99 "(99) Not applicable" ;
label define H3HR3     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3HR4     1 "(1) A relative" 2 "(2) A friend"
                       3 "(3) A spouse or partner" 4 "(4) An employer"
                       5 "(5) Other" 97 "(97) Legitimate skip" ;
label define H3HR5     1 "(1) Alone (skip to Q.16)" 2 "(2) With others"
                       6 "(6) Refused (skip to Q.16)"
                       7 "(7) Legitimate skip (skip to Q.16)"
                       8 "(8) Don't know (skip to Q.16)"
                       9 "(9) Not applicable" ;
label define H3HR6     97 "(97) Legitimate skip" ;
label define H3HR7A    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8A    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR9A    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H3HR10A   1 "(1) Husband" 2 "(2) Partner/boyfriend" 3 "(3) Son"
                       4 "(4) Brother" 6 "(6) Sister's husband"
                       7 "(7) Sister's male partner" 8 "(8) Father"
                       10 "(10) Mother's husband"
                       11 "(11) Mother's male partner"
                       12 "(12) Father-in-law" 13 "(13) Grandfather"
                       15 "(15) Uncle" 16 "(16) Cousin-male" 17 "(17) Nephew"
                       18 "(18) Other relative - male"
                       19 "(19) Non-relative - male" 20 "(20) Wife"
                       21 "(21) Partner/girlfriend" 22 "(22) Daughter"
                       23 "(23) Sister" 26 "(26) Brother's female partner"
                       27 "(27) Mother" 29 "(29) Father's wife"
                       30 "(30) Father's female partner"
                       31 "(31) Mother-in-law" 32 "(32) Grandmother"
                       34 "(34) Aunt" 35 "(35) Cousin-female" 36 "(36) Niece"
                       37 "(37) Other relative - female"
                       38 "(38) Non-relative - female" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3HR11A   39 "(39) Biological son" 41 "(41) Step-son"
                       44 "(44) Biological daughter"
                       45 "(45) Adopted daughter" 46 "(46) Step-daughter"
                       49 "(49) Full brother" 50 "(50) Twin brother"
                       51 "(51) Half-brother" 52 "(52) Step-brother"
                       53 "(53) Adoptive brother" 56 "(56) Full sister"
                       57 "(57) Twin sister" 58 "(58) Half-sister"
                       59 "(59) Step-sister" 60 "(60) Adoptive sister"
                       63 "(63) Biological father" 64 "(64) Adopted father"
                       65 "(65) Step-father who has adopted you"
                       66 "(66) Step-father" 68 "(68) Biological mother"
                       69 "(69) Adopted mother" 71 "(71) Step-mother"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3HR7B    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8B    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR9B    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10B   1 "(1) Husband" 2 "(2) Partner/boyfriend" 3 "(3) Son"
                       4 "(4) Brother" 6 "(6) Sister's husband"
                       7 "(7) Sister's male partner" 8 "(8) Father"
                       10 "(10) Mother's husband"
                       11 "(11) Mother's male partner"
                       12 "(12) Father-in-law" 13 "(13) Grandfather"
                       15 "(15) Uncle" 16 "(16) Cousin-male" 17 "(17) Nephew"
                       18 "(18) Other relative - male"
                       19 "(19) Non-relative - male" 20 "(20) Wife"
                       21 "(21) Partner/girlfriend" 22 "(22) Daughter"
                       23 "(23) Sister" 25 "(25) Brother's wife"
                       26 "(26) Brother's female partner" 27 "(27) Mother"
                       29 "(29) Father's wife"
                       30 "(30) Father's female partner"
                       31 "(31) Mother-in-law" 32 "(32) Grandmother"
                       34 "(34) Aunt" 35 "(35) Cousin-female" 36 "(36) Niece"
                       37 "(37) Other relative - female"
                       38 "(38) Non-relative - female"
                       73 "(73) Same-sex partner of another household member"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR11B   39 "(39) Biological son" 40 "(40) Adopted son"
                       41 "(41) Step-son" 44 "(44) Biological daughter"
                       45 "(45) Adopted daughter" 46 "(46) Step-daughter"
                       47 "(47) Step-daughter whom you have adopted"
                       49 "(49) Full brother" 50 "(50) Twin brother"
                       51 "(51) Half-brother" 52 "(52) Step-brother"
                       53 "(53) Adoptive brother" 55 "(55) Brother-in-law"
                       56 "(56) Full sister" 57 "(57) Twin sister"
                       58 "(58) Half-sister" 59 "(59) Step-sister"
                       60 "(60) Adoptive sister" 63 "(63) Biological father"
                       64 "(64) Adopted father"
                       65 "(65) Step-father who has adopted you"
                       66 "(66) Step-father" 68 "(68) Biological mother"
                       69 "(69) Adopted mother" 71 "(71) Step-mother"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3HR7C    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8C    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9C    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H3HR10C   1 "(1) Husband" 2 "(2) Partner/boyfriend" 3 "(3) Son"
                       4 "(4) Brother" 6 "(6) Sister's husband"
                       7 "(7) Sister's male partner" 8 "(8) Father"
                       10 "(10) Mother's husband"
                       11 "(11) Mother's male partner"
                       12 "(12) Father-in-law" 13 "(13) Grandfather"
                       15 "(15) Uncle" 16 "(16) Cousin-male" 17 "(17) Nephew"
                       18 "(18) Other relative - male"
                       19 "(19) Non-relative - male" 20 "(20) Wife"
                       21 "(21) Partner/girlfriend" 22 "(22) Daughter"
                       23 "(23) Sister" 25 "(25) Brother's wife"
                       26 "(26) Brother's female partner" 27 "(27) Mother"
                       29 "(29) Father's wife"
                       30 "(30) Father's female partner"
                       31 "(31) Mother-in-law" 32 "(32) Grandmother"
                       34 "(34) Aunt" 35 "(35) Cousin-female" 36 "(36) Niece"
                       37 "(37) Other relative - female"
                       38 "(38) Non-relative - female"
                       73 "(73) Same-sex partner of another household member"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR11C   39 "(39) Biological son" 40 "(40) Adopted son"
                       41 "(41) Step-son" 44 "(44) Biological daughter"
                       45 "(45) Adopted daughter" 46 "(46) Step-daughter"
                       47 "(47) Step-daughter whom you have adopted"
                       49 "(49) Full brother" 50 "(50) Twin brother"
                       51 "(51) Half-brother" 52 "(52) Step-brother"
                       53 "(53) Adoptive brother" 55 "(55) Brother-in-law"
                       56 "(56) Full sister" 57 "(57) Twin sister"
                       58 "(58) Half-sister" 59 "(59) Step-sister"
                       60 "(60) Adoptive sister" 63 "(63) Biological father"
                       64 "(64) Adopted father"
                       65 "(65) Step-father who has adopted you"
                       66 "(66) Step-father" 68 "(68) Biological mother"
                       69 "(69) Adopted mother"
                       70 "(70) Step-mother who has adopted you"
                       71 "(71) Step-mother" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3HR7D    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8D    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9D    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10D   1 "(1) Husband" 2 "(2) Partner/boyfriend" 3 "(3) Son"
                       4 "(4) Brother" 6 "(6) Sister's husband"
                       7 "(7) Sister's male partner" 8 "(8) Father"
                       10 "(10) Mother's husband"
                       11 "(11) Mother's male partner"
                       12 "(12) Father-in-law" 13 "(13) Grandfather"
                       15 "(15) Uncle" 16 "(16) Cousin-male" 17 "(17) Nephew"
                       18 "(18) Other relative - male"
                       19 "(19) Non-relative - male" 20 "(20) Wife"
                       21 "(21) Partner/girlfriend" 22 "(22) Daughter"
                       23 "(23) Sister" 25 "(25) Brother's wife"
                       26 "(26) Brother's female partner" 27 "(27) Mother"
                       29 "(29) Father's wife"
                       30 "(30) Father's female partner"
                       31 "(31) Mother-in-law" 32 "(32) Grandmother"
                       34 "(34) Aunt" 35 "(35) Cousin-female" 36 "(36) Niece"
                       37 "(37) Other relative - female"
                       38 "(38) Non-relative - female"
                       73 "(73) Same-sex partner of another household member"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR11D   39 "(39) Biological son" 40 "(40) Adopted son"
                       41 "(41) Step-son" 44 "(44) Biological daughter"
                       45 "(45) Adopted daughter" 46 "(46) Step-daughter"
                       47 "(47) Step-daughter whom you have adopted"
                       49 "(49) Full brother" 50 "(50) Twin brother"
                       51 "(51) Half-brother" 52 "(52) Step-brother"
                       53 "(53) Adoptive brother" 54 "(54) Foster brother"
                       55 "(55) Brother-in-law" 56 "(56) Full sister"
                       57 "(57) Twin sister" 58 "(58) Half-sister"
                       59 "(59) Step-sister" 60 "(60) Adoptive sister"
                       63 "(63) Biological father" 64 "(64) Adopted father"
                       65 "(65) Step-father who has adopted you"
                       66 "(66) Step-father" 68 "(68) Biological mother"
                       69 "(69) Adopted mother"
                       70 "(70) Step-mother who has adopted you"
                       71 "(71) Step-mother" 97 "(97) Legitimate skip" ;
label define H3HR7E    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8E    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9E    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10E   1 "(1) Husband" 2 "(2) Partner/boyfriend" 3 "(3) Son"
                       4 "(4) Brother" 6 "(6) Sister's husband"
                       7 "(7) Sister's male partner" 8 "(8) Father"
                       10 "(10) Mother's husband"
                       11 "(11) Mother's male partner"
                       12 "(12) Father-in-law" 13 "(13) Grandfather"
                       15 "(15) Uncle" 16 "(16) Cousin-male" 17 "(17) Nephew"
                       18 "(18) Other relative - male"
                       19 "(19) Non-relative - male" 20 "(20) Wife"
                       21 "(21) Partner/girlfriend" 22 "(22) Daughter"
                       23 "(23) Sister" 25 "(25) Brother's wife"
                       26 "(26) Brother's female partner" 27 "(27) Mother"
                       29 "(29) Father's wife"
                       30 "(30) Father's female partner"
                       31 "(31) Mother-in-law" 32 "(32) Grandmother"
                       34 "(34) Aunt" 35 "(35) Cousin-female" 36 "(36) Niece"
                       37 "(37) Other relative - female"
                       38 "(38) Non-relative - female"
                       73 "(73) Same-sex partner of another household member"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR11E   39 "(39) Biological son" 40 "(40) Adopted son"
                       41 "(41) Step-son" 44 "(44) Biological daughter"
                       45 "(45) Adopted daughter" 46 "(46) Step-daughter"
                       47 "(47) Step-daughter whom you have adopted"
                       49 "(49) Full brother" 50 "(50) Twin brother"
                       51 "(51) Half-brother" 52 "(52) Step-brother"
                       53 "(53) Adoptive brother" 54 "(54) Foster brother"
                       55 "(55) Brother-in-law" 56 "(56) Full sister"
                       57 "(57) Twin sister" 58 "(58) Half-sister"
                       59 "(59) Step-sister" 60 "(60) Adoptive sister"
                       63 "(63) Biological father" 64 "(64) Adopted father"
                       65 "(65) Step-father who has adopted you"
                       66 "(66) Step-father" 68 "(68) Biological mother"
                       69 "(69) Adopted mother"
                       70 "(70) Step-mother who has adopted you"
                       71 "(71) Step-mother" 97 "(97) Legitimate skip" ;
label define H3HR7F    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8F    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9F    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10F   1 "(1) Husband" 2 "(2) Partner/boyfriend" 3 "(3) Son"
                       4 "(4) Brother" 6 "(6) Sister's husband"
                       7 "(7) Sister's male partner" 8 "(8) Father"
                       10 "(10) Mother's husband"
                       11 "(11) Mother's male partner"
                       12 "(12) Father-in-law" 13 "(13) Grandfather"
                       15 "(15) Uncle" 16 "(16) Cousin-male" 17 "(17) Nephew"
                       18 "(18) Other relative - male"
                       19 "(19) Non-relative - male" 20 "(20) Wife"
                       21 "(21) Partner/girlfriend" 22 "(22) Daughter"
                       23 "(23) Sister" 25 "(25) Brother's wife"
                       26 "(26) Brother's female partner" 27 "(27) Mother"
                       29 "(29) Father's wife"
                       30 "(30) Father's female partner"
                       31 "(31) Mother-in-law" 32 "(32) Grandmother"
                       34 "(34) Aunt" 35 "(35) Cousin-female" 36 "(36) Niece"
                       37 "(37) Other relative - female"
                       38 "(38) Non-relative - female"
                       73 "(73) Same-sex partner of another household member"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR11F   39 "(39) Biological son" 40 "(40) Adopted son"
                       41 "(41) Step-son" 44 "(44) Biological daughter"
                       45 "(45) Adopted daughter" 46 "(46) Step-daughter"
                       47 "(47) Step-daughter whom you have adopted"
                       49 "(49) Full brother" 50 "(50) Twin brother"
                       51 "(51) Half-brother" 52 "(52) Step-brother"
                       53 "(53) Adoptive brother" 54 "(54) Foster brother"
                       55 "(55) Brother-in-law" 56 "(56) Full sister"
                       57 "(57) Twin sister" 58 "(58) Half-sister"
                       59 "(59) Step-sister" 60 "(60) Adoptive sister"
                       63 "(63) Biological father" 64 "(64) Adopted father"
                       65 "(65) Step-father who has adopted you"
                       66 "(66) Step-father" 68 "(68) Biological mother"
                       69 "(69) Adopted mother"
                       70 "(70) Step-mother who has adopted you"
                       71 "(71) Step-mother" 97 "(97) Legitimate skip" ;
label define H3HR7G    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8G    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9G    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10G   1 "(1) Husband" 2 "(2) Partner/boyfriend" 3 "(3) Son"
                       4 "(4) Brother" 6 "(6) Sister's husband"
                       7 "(7) Sister's male partner" 8 "(8) Father"
                       10 "(10) Mother's husband"
                       11 "(11) Mother's male partner"
                       12 "(12) Father-in-law" 13 "(13) Grandfather"
                       15 "(15) Uncle" 16 "(16) Cousin-male" 17 "(17) Nephew"
                       18 "(18) Other relative - male"
                       19 "(19) Non-relative - male" 20 "(20) Wife"
                       21 "(21) Partner/girlfriend" 22 "(22) Daughter"
                       23 "(23) Sister" 25 "(25) Brother's wife"
                       26 "(26) Brother's female partner" 27 "(27) Mother"
                       29 "(29) Father's wife"
                       30 "(30) Father's female partner"
                       31 "(31) Mother-in-law" 32 "(32) Grandmother"
                       34 "(34) Aunt" 35 "(35) Cousin-female" 36 "(36) Niece"
                       37 "(37) Other relative - female"
                       38 "(38) Non-relative - female"
                       73 "(73) Same-sex partner of another household member"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR11G   39 "(39) Biological son" 40 "(40) Adopted son"
                       41 "(41) Step-son" 44 "(44) Biological daughter"
                       45 "(45) Adopted daughter" 46 "(46) Step-daughter"
                       47 "(47) Step-daughter whom you have adopted"
                       49 "(49) Full brother" 50 "(50) Twin brother"
                       51 "(51) Half-brother" 52 "(52) Step-brother"
                       53 "(53) Adoptive brother" 54 "(54) Foster brother"
                       55 "(55) Brother-in-law" 56 "(56) Full sister"
                       57 "(57) Twin sister" 58 "(58) Half-sister"
                       59 "(59) Step-sister" 60 "(60) Adoptive sister"
                       63 "(63) Biological father" 64 "(64) Adopted father"
                       65 "(65) Step-father who has adopted you"
                       66 "(66) Step-father" 68 "(68) Biological mother"
                       69 "(69) Adopted mother"
                       70 "(70) Step-mother who has adopted you"
                       71 "(71) Step-mother" 97 "(97) Legitimate skip" ;
label define H3HR7H    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8H    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9H    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10H   1 "(1) Husband" 2 "(2) Partner/boyfriend" 3 "(3) Son"
                       4 "(4) Brother" 6 "(6) Sister's husband"
                       7 "(7) Sister's male partner" 8 "(8) Father"
                       10 "(10) Mother's husband"
                       11 "(11) Mother's male partner"
                       12 "(12) Father-in-law" 13 "(13) Grandfather"
                       15 "(15) Uncle" 16 "(16) Cousin-male" 17 "(17) Nephew"
                       18 "(18) Other relative - male"
                       19 "(19) Non-relative - male" 20 "(20) Wife"
                       21 "(21) Partner/girlfriend" 22 "(22) Daughter"
                       23 "(23) Sister" 25 "(25) Brother's wife"
                       26 "(26) Brother's female partner" 27 "(27) Mother"
                       29 "(29) Father's wife"
                       30 "(30) Father's female partner"
                       31 "(31) Mother-in-law" 32 "(32) Grandmother"
                       34 "(34) Aunt" 35 "(35) Cousin-female" 36 "(36) Niece"
                       37 "(37) Other relative - female"
                       38 "(38) Non-relative - female"
                       73 "(73) Same-sex partner of another household member"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR11H   39 "(39) Biological son" 40 "(40) Adopted son"
                       41 "(41) Step-son" 44 "(44) Biological daughter"
                       45 "(45) Adopted daughter" 46 "(46) Step-daughter"
                       47 "(47) Step-daughter whom you have adopted"
                       49 "(49) Full brother" 50 "(50) Twin brother"
                       51 "(51) Half-brother" 52 "(52) Step-brother"
                       53 "(53) Adoptive brother" 54 "(54) Foster brother"
                       55 "(55) Brother-in-law" 56 "(56) Full sister"
                       57 "(57) Twin sister" 58 "(58) Half-sister"
                       59 "(59) Step-sister" 60 "(60) Adoptive sister"
                       63 "(63) Biological father" 64 "(64) Adopted father"
                       65 "(65) Step-father who has adopted you"
                       66 "(66) Step-father" 68 "(68) Biological mother"
                       69 "(69) Adopted mother"
                       70 "(70) Step-mother who has adopted you"
                       71 "(71) Step-mother" 97 "(97) Legitimate skip" ;
label define H3HR7I    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8I    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9I    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10I   1 "(1) Husband" 2 "(2) Partner/boyfriend" 3 "(3) Son"
                       4 "(4) Brother" 6 "(6) Sister's husband"
                       7 "(7) Sister's male partner" 8 "(8) Father"
                       10 "(10) Mother's husband"
                       11 "(11) Mother's male partner"
                       12 "(12) Father-in-law" 13 "(13) Grandfather"
                       15 "(15) Uncle" 16 "(16) Cousin-male" 17 "(17) Nephew"
                       18 "(18) Other relative - male"
                       19 "(19) Non-relative - male" 20 "(20) Wife"
                       21 "(21) Partner/girlfriend" 22 "(22) Daughter"
                       23 "(23) Sister" 25 "(25) Brother's wife"
                       26 "(26) Brother's female partner" 27 "(27) Mother"
                       29 "(29) Father's wife"
                       30 "(30) Father's female partner"
                       31 "(31) Mother-in-law" 32 "(32) Grandmother"
                       34 "(34) Aunt" 35 "(35) Cousin-female" 36 "(36) Niece"
                       37 "(37) Other relative - female"
                       38 "(38) Non-relative - female"
                       73 "(73) Same-sex partner of another household member"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR11I   39 "(39) Biological son" 40 "(40) Adopted son"
                       41 "(41) Step-son" 44 "(44) Biological daughter"
                       45 "(45) Adopted daughter" 46 "(46) Step-daughter"
                       47 "(47) Step-daughter whom you have adopted"
                       49 "(49) Full brother" 50 "(50) Twin brother"
                       51 "(51) Half-brother" 52 "(52) Step-brother"
                       53 "(53) Adoptive brother" 54 "(54) Foster brother"
                       55 "(55) Brother-in-law" 56 "(56) Full sister"
                       57 "(57) Twin sister" 58 "(58) Half-sister"
                       59 "(59) Step-sister" 60 "(60) Adoptive sister"
                       63 "(63) Biological father" 64 "(64) Adopted father"
                       65 "(65) Step-father who has adopted you"
                       66 "(66) Step-father" 68 "(68) Biological mother"
                       69 "(69) Adopted mother"
                       70 "(70) Step-mother who has adopted you"
                       71 "(71) Step-mother" 97 "(97) Legitimate skip" ;
label define H3HR7J    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8J    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9J    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10J   1 "(1) Husband" 2 "(2) Partner/boyfriend" 3 "(3) Son"
                       4 "(4) Brother" 6 "(6) Sister's husband"
                       7 "(7) Sister's male partner" 8 "(8) Father"
                       10 "(10) Mother's husband"
                       11 "(11) Mother's male partner"
                       12 "(12) Father-in-law" 13 "(13) Grandfather"
                       15 "(15) Uncle" 16 "(16) Cousin-male" 17 "(17) Nephew"
                       18 "(18) Other relative - male"
                       19 "(19) Non-relative - male" 20 "(20) Wife"
                       21 "(21) Partner/girlfriend" 22 "(22) Daughter"
                       23 "(23) Sister" 25 "(25) Brother's wife"
                       26 "(26) Brother's female partner" 27 "(27) Mother"
                       29 "(29) Father's wife"
                       30 "(30) Father's female partner"
                       31 "(31) Mother-in-law" 32 "(32) Grandmother"
                       34 "(34) Aunt" 35 "(35) Cousin-female" 36 "(36) Niece"
                       37 "(37) Other relative - female"
                       38 "(38) Non-relative - female"
                       73 "(73) Same-sex partner of another household member"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR11J   39 "(39) Biological son" 40 "(40) Adopted son"
                       41 "(41) Step-son" 44 "(44) Biological daughter"
                       45 "(45) Adopted daughter" 46 "(46) Step-daughter"
                       47 "(47) Step-daughter whom you have adopted"
                       49 "(49) Full brother" 50 "(50) Twin brother"
                       51 "(51) Half-brother" 52 "(52) Step-brother"
                       53 "(53) Adoptive brother" 54 "(54) Foster brother"
                       55 "(55) Brother-in-law" 56 "(56) Full sister"
                       57 "(57) Twin sister" 58 "(58) Half-sister"
                       59 "(59) Step-sister" 60 "(60) Adoptive sister"
                       63 "(63) Biological father" 64 "(64) Adopted father"
                       65 "(65) Step-father who has adopted you"
                       66 "(66) Step-father" 68 "(68) Biological mother"
                       69 "(69) Adopted mother"
                       70 "(70) Step-mother who has adopted you"
                       71 "(71) Step-mother" 97 "(97) Legitimate skip" ;
label define H3HR7K    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8K    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9K    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10K   97 "(97) Legitimate skip" ;
label define H3HR11K   97 "(97) Legitimate skip" ;
label define H3HR7L    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8L    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9L    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10L   97 "(97) Legitimate skip" ;
label define H3HR11L   97 "(97) Legitimate skip" ;
label define H3HR7M    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8M    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9M    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10M   97 "(97) Legitimate skip" ;
label define H3HR11M   97 "(97) Legitimate skip" ;
label define H3HR7N    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8N    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9N    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10N   97 "(97) Legitimate skip" ;
label define H3HR11N   97 "(97) Legitimate skip" ;
label define H3HR7O    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8O    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9O    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10O   97 "(97) Legitimate skip" ;
label define H3HR11O   97 "(97) Legitimate skip" ;
label define H3HR7P    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8P    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9P    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10P   97 "(97) Legitimate skip" ;
label define H3HR11P   97 "(97) Legitimate skip" ;
label define H3HR7Q    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8Q    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9Q    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10Q   97 "(97) Legitimate skip" ;
label define H3HR11Q   97 "(97) Legitimate skip" ;
label define H3HR7R    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8R    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9R    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10R   97 "(97) Legitimate skip" ;
label define H3HR11R   97 "(97) Legitimate skip" ;
label define H3HR7S    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3HR8S    0 "(0) 0 years" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3HR9S    997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3HR10S   97 "(97) Legitimate skip" ;
label define H3HR11S   97 "(97) Legitimate skip" ;
label define H3HR12    0 "(0) No (skip to Q.14)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3HR13    1 "(1) Person number 1" 2 "(2) Person number 2"
                       3 "(3) Person number 3" 4 "(4) Person number 4"
                       5 "(5) Person number 5" 6 "(6) Person number 6"
                       7 "(7) Person number 7" 8 "(8) Person number 8"
                       97 "(97) Legitimate skip" ;
label define H3HR14    0 "(0) No (skip to Q.16)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3HR15    1 "(1) Person number 1" 2 "(2) Person number 2"
                       3 "(3) Person number 3" 4 "(4) Person number 4"
                       5 "(5) Person number 5" 6 "(6) Person number 6"
                       7 "(7) Person number 7" 8 "(8) Person number 8"
                       9 "(9) Person number 9" 97 "(97) Legitimate skip" ;
label define H3HR16    0 "(0) No" 1 "(1) Yes (skip to Q.23)"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3HR17M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR17Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H3HR18    0 "(0) 0 addresses" 1 "(1) 1 address"
                       2 "(2) 2 addresses" 3 "(3) 3 addresses"
                       4 "(4) 4 addresses" 5 "(5) 5 addresses"
                       6 "(6) 6 addresses" 7 "(7) 7 addresses"
                       8 "(8) 8 addresses" 9 "(9) 9 addresses"
                       10 "(10) 10 addresses" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3HR19    0 "(0) No (skip to Q.23)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3HR20    0 "(0) 0 states or countries"
                       1 "(1) 1 state or country"
                       2 "(2) 2 states or countries"
                       3 "(3) 3 states or countries"
                       4 "(4) 4 states or countries"
                       5 "(5) 5 states or countries"
                       6 "(6) 6 states or countries"
                       7 "(7) 7 states or countries"
                       10 "(10) 10 states or countries"
                       97 "(97) Legitimate skip" ;
label define H3HR21M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3HR21Y   9997 "(9997) Legitimate skip" 9998 "(9998) Don't know"
                       9999 "(9999) Not applicable" ;
label define H3HR22MA  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR22YA  9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3HR22MB  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR22YB  9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3HR22MC  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR22YC  9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3HR22MD  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR22YD  9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3HR22ME  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR22YE  9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3HR22MF  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR22YF  9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3HR22MG  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HR22YG  9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3HR23    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3HR24    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3HR25    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3HR26    0 "(0) No" 1 "(1) Yes"
                       2 "(2) Never lived with parents" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3HR27    1 "(1) Dormitory at school"
                       2 "(2) Fraternity/sorority at a school"
                       3 "(3) Barracks in the armed services"
                       4 "(4) Half-way house/social rehabilitation facility"
                       5 "(5) Prison/penitentiary"
                       6 "(6) Group home (skip to next section)"
                       7 "(7) Hospital/nursing home/physical rehabilitation facility"
                       9 "(9) Communal home" 10 "(10) Other"
                       97 "(97) Legitimate skip" ;
label define H3HR28    1 "(1) Same-sex" 2 "(2) Co-ed" 7 "(7) Legitimate skip" ;
label define H3HR29    1 "(1) Social" 2 "(2) Honors" 7 "(7) Legitimate skip" ;
label define H3HR30    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3WP1     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3WP2     0 "(0) No" 1 "(1) Yes (skip to Q.4)"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3WP3M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3WP3Y    9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3WP4     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3WP5     0 "(0) No" 1 "(1) Yes (skip to Q.7)"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3WP6M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3WP6Y    9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3WP7     0 "(0) No (skip to Q.11)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3WP8     0 "(0) No" 1 "(1) Yes (skip to Q.11)"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3WP9     97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3WP10M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3WP10Y   9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3WP11    0 "(0) No (skip to Q.15)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3WP12    0 "(0) No" 1 "(1) Yes (skip to Q.15)"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3WP13    0 "(0) 0 years" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3WP14M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3WP14Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H3WP15    0 "(0) No" 1 "(1) Yes (skip to Q.18)"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3WP16    0 "(0) No (skip to Q.18)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3WP17    1 "(1) Less than $200" 2 "(2) $200-$499"
                       3 "(3) $500-$999" 4 "(4) $1000 or more"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3WP18    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3WP19    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3WP20    1 "(1) Extremely close" 2 "(2) Quite close"
                       3 "(3) Somewhat close" 4 "(4) Not very close"
                       5 "(5) Not close at all" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3WP21    0 "(0) No (skip to Q.23)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3WP22    1 "(1) Less than $200" 2 "(2) $200-$499"
                       3 "(3) $500-$999" 4 "(4) $1000 or more"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3WP23    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3WP24    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3WP25    1 "(1) Extremely close" 2 "(2) Quite close"
                       3 "(3) Somewhat close" 4 "(4) Not very close"
                       5 "(5) Not close at all" 97 "(97) Legitimate skip" ;
label define H3WP26    0 "(0) No (skip to Q.28)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H3WP27    1 "(1) Less than $200" 2 "(2) $200-$499"
                       3 "(3) $500-$999" 4 "(4) $1000 or more"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3WP28    1 "(1) Had never smoked"
                       2 "(2) Used to smoke/but had stopped"
                       3 "(3) Smoked only occasionally"
                       4 "(4) Smoked more than occasionally/but less than pack a day"
                       5 "(5) Smoked a pack a day or more"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3WP29    0 "(0) No (skip to Q.35)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3WP30    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3WP31    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3WP32    1 "(1) Extremely close" 2 "(2) Quite close"
                       3 "(3) Somewhat close" 4 "(4) Not very close"
                       5 "(5) Not close at all" 97 "(97) Legitimate skip" ;
label define H3WP33    0 "(0) No (skip to Q.35)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3WP34    1 "(1) Less than $200" 2 "(2) $200-$499"
                       3 "(3) $500-$999" 4 "(4) $1000 or more"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3WP35    1 "(1) Had never smoked"
                       2 "(2) Used to smoke/but had stopped"
                       3 "(3) Smoked only occasionally"
                       4 "(4) Snore more than occasionally/but less than pack a day"
                       5 "(5) Smoked a pack a day or more" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3WP36    0 "(0) No (skip to Q.42)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3WP37    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3WP38    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3WP39    1 "(1) Extremely close" 2 "(2) Quite close"
                       3 "(3) Somewhat close" 4 "(4) Not very close"
                       5 "(5) Not close at all" 97 "(97) Legitimate skip" ;
label define H3WP40    0 "(0) No (skip to Q.42)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H3WP41    1 "(1) Less than $200" 2 "(2) $200-$499"
                       3 "(3) $500-$999" 4 "(4) $1000 or more"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3WP42    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3WP43    0 "(0) No (skip to Q.49)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3WP44    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3WP45    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3WP46    1 "(1) Extremely close" 2 "(2) Quite close"
                       3 "(3) Somewhat close" 4 "(4) Not very close"
                       5 "(5) Not close at all" 97 "(97) Legitimate skip" ;
label define H3WP47    0 "(0) No (skip to Q.49)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3WP48    1 "(1) Less than $200" 2 "(2) $200-$499"
                       3 "(3) $500-$999" 4 "(4) $1000 or more"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3WP49    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3WP50    0 "(0) No (skip to Q.56)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3WP51    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3WP52    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3WP53    1 "(1) Extremely close" 2 "(2) Quite close"
                       3 "(3) Somewhat close" 4 "(4) Not very close"
                       5 "(5) Not close at all" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3WP54    0 "(0) No (skip to Q.56)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3WP55    1 "(1) Less than $200" 2 "(2) $200-$499"
                       3 "(3) $500-$999" 4 "(4) $1000 or more"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3WP56    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3WP57    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3WP58    0 "(0) No (skip to Q.66)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3WP59    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3WP60    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3WP61    0 "(0) No (skip to Q.66)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H3WP62    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3WP63    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3WP64    1 "(1) Extremely close" 2 "(2) Quite close"
                       3 "(3) Somewhat close" 4 "(4) Not very close"
                       5 "(5) Not close at all" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3WP65    0 "(0) Not at all" 1 "(1) A few times"
                       2 "(2) Once or twice a month"
                       3 "(3) Once or twice a week" 4 "(4) Almost every day"
                       7 "(7) Legitimate skip" ;
label define H3WP66    0 "(0) No (skip to the next section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3WP67    1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip" ;
label define H3WP68    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3WP69    0 "(0) No (skip to the next section)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H3WP70    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3WP71    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3WP72    1 "(1) Extremely close" 2 "(2) Quite close"
                       3 "(3) Somewhat close" 4 "(4) Not very close"
                       5 "(5) Not close at all" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3WP73    0 "(0) Not at all" 1 "(1) A few times"
                       2 "(2) Once or twice a month"
                       3 "(3) Once or twice a week" 4 "(4) Almost every day"
                       6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H3RA1     0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3RA2     0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3RA3     0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RA4     0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RA5     0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RA6     0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RA7     0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3RA8     0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RA9     0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RA10    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3RA11    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RA12    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RA13    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RA14    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3RA15    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3RA16    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3RA17    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3RA18    0 "(0) Never or rarely" 1 "(1) Sometimes"
                       2 "(2) Often" 3 "(3) Very often" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3WS1A    0 "(0) No" 1 "(1) Yes (skip to Q.4)"
                       5 "(5) Question not asked of this respondent"
                       8 "(8) Don't know (skip to next sibling/section)"
                       9 "(9) Not applicable (skip to next sibling/section)" ;
label define H3WS2MA   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3WS2YA   9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" ;
label define H3WS3A    2 "(2) Accidental injury" 3 "(3) Suicide"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3WS4A    0 "(0) None" 1 "(1) A few" 2 "(2) About half"
                       3 "(3) Most" 4 "(4) All"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3WS5A    0 "(0) Not at all close" 1 "(1) Not very close"
                       2 "(2) Somewhat close" 3 "(3) Quite close"
                       4 "(4) Very close"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS6A    0 "(0) Never" 1 "(1) Seldom" 2 "(2) Sometimes"
                       3 "(3) Often" 4 "(4) Very often"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS7A    0 "(0) Never" 1 "(1) Seldom" 2 "(2) Sometimes"
                       3 "(3) Often" 4 "(4) Very often"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3WS8A    0 "(0) Live together"
                       1 "(1) Within 5 minutes of each other"
                       2 "(2) Between 5 and 30 minutes apart"
                       3 "(3) Between 30 minutes and an hour apart"
                       4 "(4) Between an hour and a half-day apart"
                       5 "(5) Between a half-day and a day apart"
                       6 "(6) More than a day apart"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3WS9A    0 "(0) Never" 1 "(1) A few times a year"
                       2 "(2) Once or twice a month"
                       3 "(3) Once or twice a week" 4 "(4) Almost every day"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS10A   0 "(0) Never" 1 "(1) A few times a year"
                       2 "(2) Once or twice a month"
                       3 "(3) Once or twice a week" 4 "(4) Almost every day"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS11A   0 "(0) Never" 1 "(1) A few times a year"
                       2 "(2) Once or twice a month"
                       3 "(3) Once or twice a week" 4 "(4) Almost every day"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS12A   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3WS1B    0 "(0) No" 1 "(1) Yes (skip to Q.4)"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip"
                       8 "(8) Don't know (skip to next sibling or next section)" ;
label define H3WS2MB   95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3WS2YB   9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" ;
label define H3WS3B    95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3WS4B    0 "(0) None" 1 "(1) A few" 2 "(2) About half"
                       3 "(3) Most" 4 "(4) All"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS5B    0 "(0) Not at all close" 1 "(1) Not very close"
                       2 "(2) Somewhat close" 3 "(3) Quite close"
                       4 "(4) Very close"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS6B    0 "(0) Never" 1 "(1) Seldom" 2 "(2) Sometimes"
                       3 "(3) Often" 4 "(4) Very often"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS7B    0 "(0) Never" 1 "(1) Seldom" 2 "(2) Sometimes"
                       3 "(3) Often" 4 "(4) Very often"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS8B    0 "(0) Live together"
                       1 "(1) Within 5 minutes of each other"
                       2 "(2) Between 5 and 30 minutes apart"
                       3 "(3) Between 30 minutes and an hour apart"
                       4 "(4) Between an hour and a half-day apart"
                       5 "(5) Between a half-day and a day apart"
                       6 "(6) More than a day apart"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3WS9B    0 "(0) Never" 1 "(1) A few times a year"
                       2 "(2) Once or twice a month"
                       3 "(3) Once or twice a week" 4 "(4) Almost every day"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS10B   0 "(0) Never" 1 "(1) A few times a year"
                       2 "(2) Once or twice a month"
                       3 "(3) Once or twice a week" 4 "(4) Almost every day"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3WS11B   0 "(0) Never" 1 "(1) A few times a year"
                       2 "(2) Once or twice a month"
                       3 "(3) Once or twice a week" 4 "(4) Almost every day"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3WS12B   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS1C    0 "(0) No" 1 "(1) Yes (skip to Q.4)"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS2MC   95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3WS2YC   9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" ;
label define H3WS3C    95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3WS4C    0 "(0) None" 1 "(1) A few" 2 "(2) About half"
                       3 "(3) Most" 4 "(4) All"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS5C    0 "(0) Not at all close" 1 "(1) Not very close"
                       2 "(2) Somewhat close" 3 "(3) Quite close"
                       4 "(4) Very close"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS6C    0 "(0) Never" 1 "(1) Seldom" 2 "(2) Sometimes"
                       3 "(3) Often" 4 "(4) Very often"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS7C    0 "(0) Never" 1 "(1) Seldom" 2 "(2) Sometimes"
                       3 "(3) Often" 4 "(4) Very often"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS8C    0 "(0) Live together"
                       1 "(1) Within 5 minutes of each other"
                       2 "(2) Between 5 and 30 minutes apart"
                       3 "(3) Between 30 minutes and an hour apart"
                       4 "(4) Between an hour and a half-day apart"
                       5 "(5) Between a half-day and a day apart"
                       6 "(6) More than a day apart"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3WS9C    0 "(0) Never" 1 "(1) A few times a year"
                       2 "(2) Once or twice a month"
                       3 "(3) Once or twice a week" 4 "(4) Almost every day"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS10C   0 "(0) Never" 1 "(1) A few times a year"
                       2 "(2) Once or twice a month"
                       3 "(3) Once or twice a week" 4 "(4) Almost every day"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS11C   0 "(0) Never" 1 "(1) A few times a year"
                       2 "(2) Once or twice a month"
                       3 "(3) Once or twice a week" 4 "(4) Almost every day"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS12C   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS1D    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS2MD   95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3WS2YD   9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" ;
label define H3WS3D    95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3WS4D    5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS5D    5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS6D    5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS7D    5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS8D    95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3WS9D    5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS10D   5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS11D   5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3WS12D   5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3FS1_A   0 "(0) Not selected" 1 "(1) Selected"
                       5 "(5) Question not asked of this respondent" ;
label define H3FS2_A   1 "(1) Friend" 3 "(3) Former friend"
                       4 "(4) Former spouse or partner" 5 "(5) Acquaintance"
                       7 "(7) Relative" 8 "(8) Other"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3FS3_A   1 "(1) Brother/sister" 2 "(2) Cousin"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS4_A   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       7 "(7) You live together (skip to Q.6)"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS5_A   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       7 "(7) You live together (skip to Q.6)"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS6_A   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3FS7M_A  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3FS7Y_A  9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know"
                       9999 "(9999) Not applicable" ;
label define H3FS8M_A  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3FS8Y_A  9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" 9998 "Don't know"
                       9999 "(9999) Not applicable" ;
label define H3FS9_A   1 "(1) <FNAME> moved away" 2 "(2) You moved away"
                       3 "(3) <FNAME> changed" 4 "(4) You changed"
                       5 "(5) It just happened/you drifted apart"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3FS10_A  1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3FS1_B   0 "(0) Not selected" 1 "(1) Selected"
                       5 "(5) Question not asked of this respondent" ;
label define H3FS2_B   1 "(1) Friend" 2 "(2) Spouse or partner"
                       3 "(3) Former friend" 4 "(4) Former spouse or partner"
                       5 "(5) Acquaintance" 7 "(7) Relative" 8 "(8) Other"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS3_B   1 "(1) Brother/sister" 2 "(2) Cousin"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS4_B   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS5_B   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS6_B   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3FS7M_B  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS7Y_B  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H3FS8M_B  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3FS8Y_B  9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3FS9_B   1 "(1) <FNAME> moved away" 2 "(2) You moved away"
                       3 "(3) <FNAME> changed" 4 "(4) You changed"
                       5 "(5) It just happened/you drifted apart"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3FS10_B  1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3FS1_C   0 "(0) Not selected" 1 "(1) Selected"
                       5 "(5) Question not asked of this respondent" ;
label define H3FS2_C   1 "(1) Friend" 2 "(2) Spouse or partner"
                       3 "(3) Former friend" 4 "(4) Former spouse or partner"
                       5 "(5) Acquaintance" 7 "(7) Relative" 8 "(8) Other"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS3_C   1 "(1) Brother/sister" 2 "(2) Cousin" 5 "(5) Other"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS4_C   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS5_C   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS6_C   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3FS7M_C  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS7Y_C  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H3FS8M_C  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3FS8Y_C  9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3FS9_C   1 "(1) <FNAME> moved away" 2 "(2) You moved away"
                       3 "(3) <FNAME> changed" 4 "(4) You changed"
                       5 "(5) It just happened/you drifted apart"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS10_C  1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS1_D   0 "(0) Not selected" 1 "(1) Selected"
                       5 "(5) Question not asked of this respondent"
                       9 "(9) Not applicable" ;
label define H3FS2_D   1 "(1) Friend" 2 "(2) Spouse or partner"
                       3 "(3) Former friend" 4 "(4) Former spouse or partner"
                       5 "(5) Acquaintance" 6 "(6) Friend has died"
                       7 "(7) Relative" 8 "(8) Other"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip" ;
label define H3FS3_D   2 "(2) Cousin" 5 "(5) Other"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS4_D   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       7 "(7) You live together"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS5_D   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       7 "(7) You live together"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS6_D   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3FS7M_D  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS7Y_D  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H3FS8M_D  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3FS8Y_D  9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3FS9_D   1 "(1) <FNAME> moved away" 2 "(2) You moved away"
                       3 "(3) <FNAME> changed" 4 "(4) You changed"
                       5 "(5) It just happened/you drifted apart"
                       6 "(6) <FNAME> died"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS10_D  1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS1_E   0 "(0) Not selected" 1 "(1) Selected"
                       5 "(5) Question not asked of this respondent" ;
label define H3FS2_E   1 "(1) Friend" 2 "(2) Spouse or partner"
                       3 "(3) Former friend" 4 "(4) Former spouse or partner"
                       5 "(5) Acquaintance" 6 "(6) Friend has died"
                       7 "(7) Relative" 8 "(8) Other"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3FS3_E   1 "(1) Brother/sister" 2 "(2) Cousin"
                       3 "(3) Uncle/aunt"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS4_E   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS5_E   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS6_E   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3FS7M_E  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS7Y_E  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H3FS8M_E  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3FS8Y_E  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H3FS9_E   1 "(1) <FNAME> moved away" 2 "(2) You moved away"
                       3 "(3) <FNAME> changed" 4 "(4) You changed"
                       5 "(5) It just happened/you drifted apart"
                       6 "(6) <FNAME> died"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3FS10_E  1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS1_F   0 "(0) Not selected" 1 "(1) Selected"
                       5 "(5) Question not asked of this respondent" ;
label define H3FS2_F   1 "(1) Friend" 2 "(2) Spouse or partner"
                       3 "(3) Former friend" 4 "(4) Former spouse or partner"
                       5 "(5) Acquaintance" 6 "(6) Friend has died"
                       7 "(7) Relative" 8 "(8) Other"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3FS3_F   1 "(1) Brother/sister" 2 "(2) Cousin"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS4_F   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       7 "(7) You live together"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS5_F   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS6_F   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3FS7M_F  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3FS7Y_F  9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3FS8M_F  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3FS8Y_F  9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3FS9_F   1 "(1) <FNAME> moved away" 2 "(2) You moved away"
                       3 "(3) <FNAME> changed" 4 "(4) You changed"
                       5 "(5) It just happened/you drifted apart"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3FS10_F  1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS1_G   0 "(0) Not selected" 1 "(1) Selected"
                       5 "(5) Question not asked of this respondent" ;
label define H3FS2_G   1 "(1) Friend" 2 "(2) Spouse or partner"
                       3 "(3) Former friend" 4 "(4) Former spouse or partner"
                       5 "(5) Acquaintance" 7 "(7) Relative" 8 "(8) Other"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3FS3_G   1 "(1) Brother/sister" 2 "(2) Cousin"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS4_G   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS5_G   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS6_G   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H3FS7M_G  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS7Y_G  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3FS8M_G  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS8Y_G  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3FS9_G   1 "(1) <FNAME> moved away" 2 "(2) You moved away"
                       3 "(3) <FNAME> changed" 4 "(4) You changed"
                       5 "(5) It just happened/you drifted apart"
                       6 "(6) <FNAME> died"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS10_G  1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS1_H   0 "(0) Not selected" 1 "(1) Selected"
                       5 "(5) Question not asked of this respondent"
                       9 "(9) Not applicable" ;
label define H3FS2_H   1 "(1) Friend" 2 "(2) Spouse or partner"
                       3 "(3) Former friend" 4 "(4) Former spouse or partner"
                       5 "(5) Acquaintance" 7 "(7) Relative" 8 "(8) Other"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS3_H   1 "(1) Brother/sister" 2 "(2) Cousin"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS4_H   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       7 "(7) You live together"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS5_H   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       7 "(7) You live together"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS6_H   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3FS7M_H  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS7Y_H  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3FS8M_H  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS8Y_H  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3FS9_H   1 "(1) <FNAME> moved away" 2 "(2) You moved away"
                       3 "(3) <FNAME> changed" 4 "(4) You changed"
                       5 "(5) It just happened/you drifted apart"
                       6 "(6) <FNAME> died"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS10_H  1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS1_I   0 "(0) Not selected" 1 "(1) Selected"
                       5 "(5) Question not asked of this respondent"
                       9 "(9) Not applicable" ;
label define H3FS2_I   1 "(1) Friend" 2 "(2) Spouse or partner"
                       3 "(3) Former friend" 4 "(4) Former spouse or partner"
                       5 "(5) Acquaintance" 7 "(7) Relative" 8 "(8) Other"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS3_I   1 "(1) Brother/sister" 2 "(2) Cousin" 5 "(5) Other"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS4_I   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS5_I   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS6_I   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3FS7M_I  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS7Y_I  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3FS8M_I  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS8Y_I  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3FS9_I   1 "(1) <FNAME> moved away" 2 "(2) You moved away"
                       3 "(3) <FNAME> changed" 4 "(4) You changed"
                       5 "(5) It just happened/you drifted apart"
                       6 "(6) <FNAME> died"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS10_I  1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS1_J   0 "(0) Not selected" 1 "(1) Selected"
                       5 "(5) Question not asked of this respondent"
                       9 "(9) Not applicable" ;
label define H3FS2_J   1 "(1) Friend" 2 "(2) Spouse or partner"
                       3 "(3) Former friend" 4 "(4) Former spouse or partner"
                       5 "(5) Acquaintance" 7 "(7) Relative" 8 "(8) Other"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3FS3_J   1 "(1) Brother/sister" 2 "(2) Cousin"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3FS4_J   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS5_J   1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS6_J   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3FS7M_J  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS7Y_J  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3FS8M_J  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3FS8Y_J  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3FS9_J   1 "(1) <FNAME> moved away" 2 "(2) You moved away"
                       3 "(3) <FNAME> changed" 4 "(4) You changed"
                       5 "(5) It just happened/you drifted apart"
                       6 "(6) <FNAME> died"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS10_J  1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) Once a month or so"
                       5 "(5) Once or twice a week" 6 "(6) Almost daily"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3FS11    0 "(0) None" 1 "(1) One" 2 "(2) A few" 3 "(3) Some"
                       4 "(4) Most" 5 "(5) All"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3FS12    1 "(1) Your friends have influenced you more"
                       2 "(2) Your family has influenced you more"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ED1     6 "(6) 6th grade" 7 "(7) 7th grade" 8 "(8) 8th grade"
                       9 "(9) 9th grade" 10 "(10) 10th grade"
                       11 "(11) 11th grade" 12 "(12) 12th grade"
                       13 "(13) 1 year of college"
                       14 "(14) 2 years of college"
                       15 "(15) 3 years of college"
                       16 "(16) 4 years of college"
                       17 "(17) 5 or more years of college"
                       18 "(18) 1 year of graduate school"
                       19 "(19) 2 years of graduate school"
                       20 "(20) 3 years of graduate school"
                       21 "(21) 4 years of graduate school"
                       22 "(22) 5 or more years of graduate school"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3ED2     0 "(0) Not marked" 1 "(1) Marked"
                       9 "(9) Not applicable" ;
label define H3ED3     0 "(0) Not marked" 1 "(1) Marked" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ED4     0 "(0) Not marked" 1 "(1) Marked" ;
label define H3ED5     0 "(0) Not marked" 1 "(1) Marked" ;
label define H3ED6     0 "(0) Not marked" 1 "(1) Marked" ;
label define H3ED7     0 "(0) Not marked" 1 "(1) Marked"
                       9 "(9) Not applicable" ;
label define H3ED8     0 "(0) Not marked" 1 "(1) Marked" ;
label define H3ED9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3ED10    0 "(0) No (skip to Q.23)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H3ED11    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ED12M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3ED12Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3ED13M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3ED13Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3ED14M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3ED14Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3ED15M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3ED15Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3ED18M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3ED18Y   9997 "(9997) Legitimate skip" ;
label define H3ED21M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3ED21Y   9997 "(9997) Legitimate skip" ;
label define H3ED23    0 "(0) No (skip to Q.31)" 1 "(1) Yes"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ED24M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3ED24Y   9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3ED25    1 "(1) Full time" 2 "(2) Part time"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED26    1 "(1) High school (skip to Q.31)"
                       2 "(2) Two-year college" 3 "(3) Four-year college"
                       4 "(4) Graduate school" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ED27    13 "(13) 1st year of college"
                       14 "(14) 2nd year of college"
                       15 "(15) 3rd year of college"
                       16 "(16) 4th year of college"
                       17 "(17) 5th or higher year of college"
                       18 "(18) 1st year of graduate school"
                       19 "(19) 2nd year of graduate school"
                       20 "(20) 3rd year of graduate school"
                       21 "(21) 4th year of graduate school"
                       22 "(22) 5th or higher year of graduate school"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3ED28    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3ED31    0 "(0) No (skip to Q.33)" 1 "(1) Yes"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ED32    1 "(1) One school" 2 "(2) Two schools"
                       3 "(3) Three schools" 4 "(4) Four schools"
                       5 "(5) Five schools" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3ED33    0 "(0) No (skip to Q.43)" 1 "(1) Yes"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ED34    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED35    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED36    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED37    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED38    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED39    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED40    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED41    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED42    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED43    0 "(0) No (skip to the next section)" 1 "(1) Yes"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ED44    97 "(97) Legitimate skip" ;
label define H3ED45_A  1 "(1) Vocational/trade school"
                       2 "(2) Community college/junior college"
                       3 "(3) Business school/financial institute/secretarial school"
                       4 "(4) Armed forces" 5 "(5) High school"
                       6 "(6) Hospital/health-care facility or school"
                       7 "(7) Cosmetology/beauty/barber school"
                       8 "(8) Police academy/firefighter training program"
                       9 "(9) Job training through city/county/state/federal governmen"
                       10 "(10) Training by private employer"
                       11 "(11) Religious institution; bible college/school"
                       12 "(12) Other" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3ED46_A
                       1 "(1) Skilled crafts:mechanic;auto/appliance/computer;machinis"
                       2 "(2) Machine operator:welding/grinder/plater; truck/test driv"
                       3 "(3) Technician(ex. med):recording eng; electronics;nuclear t"
                       4 "(4) Construction/building trades:carpenter/plumber;roofer"
                       5 "(5) Business/restaurant/retail management"
                       6 "(6) Sales/retail/telemarketing/buyer/real estate/travel agen"
                       7 "(7) Food service/restaurant worker: bartender/waitress/cook"
                       8 "(8) Drafting/surveyor/mechanical drawing/cartographer"
                       9 "(9) Secretarial: typist/stenographer/word processor"
                       10 "(10) Other office/clerical: bookkeeping/receptionist"
                       11 "(11) Computer programmer"
                       12 "(12) 'Computer,' n.e.c"
                       13 "(13) Cosmetologist/barber/hair stylist/manicurist"
                       14 "(14) Health related: First/nurse aid; LPN/CPR/EMT"
                       15 "(15) Law enforcement/military police/firefighter/police"
                       16 "(16) Advertising/photography"
                       17 "(17) Engineering: electrical/mechanical/etc"
                       18 "(18) Art/music/drama/dance"
                       19 "(19) Foreign language" 20 "(20) Religion"
                       21 "(21) Other" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3ED47_A  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3ED48_A  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3ED49MA  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3ED49YA  9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H3ED45_B  1 "(1) Vocational/trade school"
                       2 "(2) Community college/junior college"
                       3 "(3) Business school/financial institute/secretarial school"
                       4 "(4) Armed forces" 5 "(5) High school"
                       6 "(6) Hospital/health-care facility or school"
                       7 "(7) Cosmetology/beauty/barber school"
                       8 "(8) Police academy/firefighter training program"
                       9 "(9) Job training through city/county/state/federal governmen"
                       10 "(10) Training by private employer"
                       11 "(11) Religious institution; bible college/school"
                       12 "(12) Other" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3ED46_B
                       1 "(1) Skilled crafts:mechanic;auto/appliance/computer;machinis"
                       2 "(2) Machine operator:welding/grinder/plater; truck/test driv"
                       3 "(3) Technician(ex. med):recording eng; electronics;nuclear t"
                       4 "(4) Construction/building trades:carpenter/plumber;roofer"
                       5 "(5) Business/restaurant/retail management"
                       6 "(6) Sales/retail/telemarketing/buyer/real estate/travel agen"
                       7 "(7) Food service/restaurant worker: bartender/waitress/cook"
                       8 "(8) Drafting/surveyor/mechanical drawing/cartographer"
                       9 "(9) Secretarial: typist/stenographer/word processor"
                       10 "(10) Other office/clerical: bookkeeping/receptionist"
                       11 "(11) Computer programmer"
                       12 "(12) 'Computer,' n.e.c"
                       13 "(13) Cosmetologist/barber/hair stylist/manicurist"
                       14 "(14) Health related: First/nurse aid; LPN/CPR/EMT"
                       15 "(15) Law enforcement/military polices/firefighter/police"
                       16 "(16) Advertising/photography"
                       17 "(17) Engineering: electrical/mechanical/etc"
                       18 "(18) Art/music/drama/dance"
                       19 "(19) Foreign language" 20 "(20) Religion"
                       21 "(21) Other" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3ED47_B  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED48_B  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED49MB  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3ED49YB  9997 "(9997) Legitimate skip" 9998 "(9998) Don't know"
                       9999 "(9999) Not applicable" ;
label define H3ED45_C  1 "(1) Vocational/trade school"
                       2 "(2) Community college/junior college"
                       3 "(3) Business school/financial institute/secretarial school"
                       4 "(4) Armed forces" 5 "(5) High school"
                       6 "(6) Hospital/health-care facility or school"
                       7 "(7) Cosmetology/beauty/barber school"
                       8 "(8) Police academy/firefighter training program"
                       9 "(9) Job training through city/county/state/federal governmen"
                       10 "(10) Training by private employer"
                       11 "(11) Religious institution; bible college/school"
                       12 "(12) Other" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3ED46_C
                       1 "(1) Skilled crafts:mechanic;auto/appliance/computer;machinis"
                       2 "(2) Machine operator:welding/grinder/plater; truck/test driv"
                       3 "(3) Technician(ex. med):recording eng; electronics;nuclear t"
                       4 "(4) Construction/building trades:carpenter/plumber;roofer"
                       5 "(5) Business/restaurant/retail management"
                       6 "(6) Sales/retail/telemarketing/buyer/real estate/travel agen"
                       7 "(7) Food service/restaurant worker: bartender/waitress/cook"
                       8 "(8) Drafting/surveyor/mechanical drawing/cartographer"
                       9 "(9) Secretarial: typist/stenographer/word processor"
                       10 "(10) Other office/clerical: bookkeeping/receptionist"
                       11 "(11) Computer programmer"
                       12 "(12) 'Computer,' n.e.c"
                       13 "(13) Cosmetologist/barber/hair stylist/manicurist"
                       14 "(14) Health related: First/nurse aid; LPN/CPR/EMT"
                       15 "(15) Law enforcement/military polices/firefighter/police"
                       16 "(16) Advertising/photography"
                       17 "(17) Engineering: electrical/mechanical/etc"
                       18 "(18) Art/music/drama/dance"
                       19 "(19) Foreign language" 20 "(20) Religion"
                       21 "(21) Other" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3ED47_C  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED48_C  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED49MC  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3ED49YC  9997 "(9997) Legitimate skip" ;
label define H3ED45_D  1 "(1) Vocational/trade school"
                       2 "(2) Community college/junior college"
                       3 "(3) Business school/financial institute/secretarial school"
                       4 "(4) Armed forces" 5 "(5) High school"
                       6 "(6) Hospital/health-care facility or school"
                       7 "(7) Cosmetology/beauty/barber school"
                       8 "(8) Police academy/firefighter training program"
                       9 "(9) Job training through city/county/state/federal governmen"
                       10 "(10) Training by private employer"
                       11 "(11) Religious institution; bible college/school"
                       12 "(12) Other" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3ED46_D
                       1 "(1) Skilled crafts:mechanic;auto/appliance/computer;machinis"
                       2 "(2) Machine operator:welding/grinder/plater; truck/test driv"
                       3 "(3) Technician(ex. med):recording eng; electronics;nuclear t"
                       4 "(4) Construction/building trades:carpenter/plumber;roofer"
                       5 "(5) Business/restaurant/retail management"
                       6 "(6) Sales/retail/telemarketing/buyer/real estate/travel agen"
                       7 "(7) Food service/restaurant worker: bartender/waitress/cook"
                       8 "(8) Drafting/surveyor/mechanical drawing/cartographer"
                       9 "(9) Secretarial: typist/stenographer/word processor"
                       10 "(10) Other office/clerical: bookkeeping/receptionist"
                       11 "(11) Computer programmer"
                       12 "(12) 'Computer,' n.e.c"
                       13 "(13) Cosmetologist/barber/hair stylist/manicurist"
                       14 "(14) Health related: First/nurse aid; LPN/CPR/EMT"
                       15 "(15) Law enforcement/military polices/firefighter/police"
                       16 "(16) Advertising/photography"
                       17 "(17) Engineering: electrical/mechanical/etc"
                       18 "(18) Art/music/drama/dance"
                       19 "(19) Foreign language" 20 "(20) Religion"
                       21 "(21) Other" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3ED47_D  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED48_D  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED49MD  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3ED49YD  9997 "(9997) Legitimate skip" ;
label define H3ED45_E  1 "(1) Vocational/trade school"
                       2 "(2) Community college/junior college"
                       3 "(3) Business school/financial institute/secretarial school"
                       4 "(4) Armed forces" 5 "(5) High school"
                       6 "(6) Hospital/health-care facility or school"
                       7 "(7) Cosmetology/beauty/barber school"
                       8 "(8) Police academy/firefighter training program"
                       9 "(9) Job training through city/county/state/federal governmen"
                       10 "(10) Training by private employer"
                       11 "(11) Religious institution; bible college/school"
                       12 "(12) Other" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3ED46_E
                       1 "(1) Skilled crafts:mechanic;auto/appliance/computer;machinis"
                       2 "(2) Machine operator:welding/grinder/plater; truck/test driv"
                       3 "(3) Technician(ex. med):recording eng; electronics;nuclear t"
                       4 "(4) Construction/building trades:carpenter/plumber;roofer"
                       5 "(5) Business/restaurant/retail management"
                       6 "(6) Sales/retail/telemarketing/buyer/real estate/travel agen"
                       7 "(7) Food service/restaurant worker: bartender/waitress/cook"
                       8 "(8) Drafting/surveyor/mechanical drawing/cartographer"
                       9 "(9) Secretarial: typist/stenographer/word processor"
                       10 "(10) Other office/clerical: bookkeeping/receptionist"
                       11 "(11) Computer programmer"
                       12 "(12) 'Computer,' n.e.c"
                       13 "(13) Cosmetologist/barber/hair stylist/manicurist"
                       14 "(14) Health related: First/nurse aid; LPN/CPR/EMT"
                       15 "(15) Law enforcement/military polices/firefighter/police"
                       16 "(16) Advertising/photography"
                       17 "(17) Engineering: electrical/mechanical/etc"
                       18 "(18) Art/music/drama/dance"
                       19 "(19) Foreign language" 20 "(20) Religion"
                       21 "(21) Other" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3ED47_E  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED48_E  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED49ME  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3ED49YE  9997 "(9997) Legitimate skip" ;
label define H3ED45_F  1 "(1) Vocational/trade school"
                       2 "(2) Community college/junior college"
                       3 "(3) Business school/financial institute/secretarial school"
                       4 "(4) Armed forces" 5 "(5) High school"
                       6 "(6) Hospital/health-care facility or school"
                       7 "(7) Cosmetology/beauty/barber school"
                       8 "(8) Police academy/firefighter training program"
                       9 "(9) Job training through city/county/state/federal governmen"
                       10 "(10) Training by private employer"
                       11 "(11) Religious institution; bible college/school"
                       12 "(12) Other" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3ED46_F
                       1 "(1) Skilled crafts:mechanic;auto/appliance/computer;machinis"
                       2 "(2) Machine operator:welding/grinder/plater; truck/test driv"
                       3 "(3) Technician(ex. med):recording eng; electronics;nuclear t"
                       4 "(4) Construction/building trades:carpenter/plumber;roofer"
                       5 "(5) Business/restaurant/retail management"
                       6 "(6) Sales/retail/telemarketing/buyer/real estate/travel agen"
                       7 "(7) Food service/restaurant worker: bartender/waitress/cook"
                       8 "(8) Drafting/surveyor/mechanical drawing/cartographer"
                       9 "(9) Secretarial: typist/stenographer/word processor"
                       10 "(10) Other office/clerical: bookkeeping/receptionist"
                       11 "(11) Computer programmer"
                       12 "(12) 'Computer,' n.e.c"
                       13 "(13) Cosmetologist/barber/hair stylist/manicurist"
                       14 "(14) Health related: First/nurse aid; LPN/CPR/EMT"
                       15 "(15) Law enforcement/military polices/firefighter/police"
                       16 "(16) Advertising/photography"
                       17 "(17) Engineering: electrical/mechanical/etc"
                       18 "(18) Art/music/drama/dance"
                       19 "(19) Foreign language" 20 "(20) Religion"
                       21 "(21) Other" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3ED47_F  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED48_F  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED49MF  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3ED49YF  9997 "(9997) Legitimate skip" ;
label define H3ED45_G  1 "(1) Vocational/trade school"
                       2 "(2) Community college/junior college"
                       3 "(3) Business school/financial institute/secretarial school"
                       4 "(4) Armed forces" 5 "(5) High school"
                       6 "(6) Hospital/health-care facility or school"
                       7 "(7) Cosmetology/beauty/barber school"
                       8 "(8) Police academy/firefighter training program"
                       9 "(9) Job training through city/county/state/federal governmen"
                       10 "(10) Training by private employer"
                       11 "(11) Religious institution; bible college/school"
                       12 "(12) Other" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3ED46_G
                       1 "(1) Skilled crafts:mechanic;auto/appliance/computer;machinis"
                       2 "(2) Machine operator:welding/grinder/plater; truck/test driv"
                       3 "(3) Technician(ex. med):recording eng; electronics;nuclear t"
                       4 "(4) Construction/building trades:carpenter/plumber;roofer"
                       5 "(5) Business/restaurant/retail management"
                       6 "(6) Sales/retail/telemarketing/buyer/real estate/travel agen"
                       7 "(7) Food service/restaurant worker: bartender/waitress/cook"
                       8 "(8) Drafting/surveyor/mechanical drawing/cartographer"
                       9 "(9) Secretarial: typist/stenographer/word processor"
                       10 "(10) Other office/clerical: bookkeeping/receptionist"
                       11 "(11) Computer programmer"
                       12 "(12) 'Computer,' n.e.c"
                       13 "(13) Cosmetologist/barber/hair stylist/manicurist"
                       14 "(14) Health related: First/nurse aid; LPN/CPR/EMT"
                       15 "(15) Law enforcement/military polices/firefighter/police"
                       16 "(16) Advertising/photography"
                       17 "(17) Engineering: electrical/mechanical/etc"
                       18 "(18) Art/music/drama/dance"
                       19 "(19) Foreign language" 20 "(20) Religion"
                       21 "(21) Other" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3ED47_G  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED48_G  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED49MG  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3ED49YG  9997 "(9997) Legitimate skip" ;
label define H3ED45_H  1 "(1) Vocational/trade school"
                       2 "(2) Community college/junior college"
                       3 "(3) Business school/financial institute/secretarial school"
                       4 "(4) Armed forces" 5 "(5) High school"
                       6 "(6) Hospital/health-care facility or school"
                       7 "(7) Cosmetology/beauty/barber school"
                       8 "(8) Police academy/firefighter training program"
                       9 "(9) Job training through city/county/state/federal governmen"
                       10 "(10) Training by private employer"
                       11 "(11) Religious institution; bible college/school"
                       12 "(12) Other" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3ED46_H
                       1 "(1) Skilled crafts:mechanic;auto/appliance/computer;machinis"
                       2 "(2) Machine operator:welding/grinder/plater; truck/test driv"
                       3 "(3) Technician(ex. med):recording eng; electronics;nuclear t"
                       4 "(4) Construction/building trades:carpenter/plumber;roofer"
                       5 "(5) Business/restaurant/retail management"
                       6 "(6) Sales/retail/telemarketing/buyer/real estate/travel agen"
                       7 "(7) Food service/restaurant worker: bartender/waitress/cook"
                       8 "(8) Drafting/surveyor/mechanical drawing/cartographer"
                       9 "(9) Secretarial: typist/stenographer/word processor"
                       10 "(10) Other office/clerical: bookkeeping/receptionist"
                       11 "(11) Computer programmer"
                       12 "(12) 'Computer,' n.e.c"
                       13 "(13) Cosmetologist/barber/hair stylist/manicurist"
                       14 "(14) Health related: First/nurse aid; LPN/CPR/EMT"
                       15 "(15) Law enforcement/military polices/firefighter/police"
                       16 "(16) Advertising/photography"
                       17 "(17) Engineering: electrical/mechanical/etc"
                       18 "(18) Art/music/drama/dance"
                       19 "(19) Foreign language" 20 "(20) Religion"
                       21 "(21) Other" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3ED47_H  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED48_H  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED49MH  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3ED49YH  9997 "(9997) Legitimate skip" ;
label define H3ED45_I  1 "(1) Vocational/trade school"
                       2 "(2) Community college/junior college"
                       3 "(3) Business school/financial institute/secretarial school"
                       4 "(4) Armed forces" 5 "(5) High school"
                       6 "(6) Hospital/health-care facility or school"
                       7 "(7) Cosmetology/beauty/barber school"
                       8 "(8) Police academy/firefighter training program"
                       9 "(9) Job training through city/county/state/federal governmen"
                       10 "(10) Training by private employer"
                       11 "(11) Religious institution; bible college/school"
                       12 "(12) Other" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3ED46_I
                       1 "(1) Skilled crafts:mechanic;auto/appliance/computer;machinis"
                       2 "(2) Machine operator:welding/grinder/plater; truck/test driv"
                       3 "(3) Technician(ex. med):recording eng; electronics;nuclear t"
                       4 "(4) Construction/building trades:carpenter/plumber;roofer"
                       5 "(5) Business/restaurant/retail management"
                       6 "(6) Sales/retail/telemarketing/buyer/real estate/travel agen"
                       7 "(7) Food service/restaurant worker: bartender/waitress/cook"
                       8 "(8) Drafting/surveyor/mechanical drawing/cartographer"
                       9 "(9) Secretarial: typist/stenographer/word processor"
                       10 "(10) Other office/clerical: bookkeeping/receptionist"
                       11 "(11) Computer programmer"
                       12 "(12) 'Computer,' n.e.c"
                       13 "(13) Cosmetologist/barber/hair stylist/manicurist"
                       14 "(14) Health related: First/nurse aid; LPN/CPR/EMT"
                       15 "(15) Law enforcement/military polices/firefighter/police"
                       16 "(16) Advertising/photography"
                       17 "(17) Engineering: electrical/mechanical/etc"
                       18 "(18) Art/music/drama/dance"
                       19 "(19) Foreign language" 20 "(20) Religion"
                       21 "(21) Other" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3ED47_I  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED48_I  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3ED49MI  97 "(97) Legitimate skip" ;
label define H3ED49YI  9997 "(9997) Legitimate skip" ;
label define H3ED45_J  97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3ED46_J  97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3ED47_J  7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED48_J  7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED49MJ  97 "(97) Legitimate skip" ;
label define H3ED49YJ  9997 "(9997) Legitimate skip" ;
label define H3ED45_K  97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3ED46_K  97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3ED47_K  7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED48_K  7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED49MK  97 "(97) Legitimate skip" ;
label define H3ED49YK  9997 "(9997) Legitimate skip" ;
label define H3ED45_L  97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3ED46_L  97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3ED47_L  7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED48_L  7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED49ML  97 "(97) Legitimate skip" ;
label define H3ED49YL  9997 "(9997) Legitimate skip" ;
label define H3ED45_M  97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3ED46_M  97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3ED47_M  7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED48_M  7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED49MM  97 "(97) Legitimate skip" ;
label define H3ED49YM  9997 "(9997) Legitimate skip" ;
label define H3ED45_N  97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3ED46_N  97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3ED47_N  7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED48_N  7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED49MN  97 "(97) Legitimate skip" ;
label define H3ED49YN  9997 "(9997) Legitimate skip" ;
label define H3ED45_O  97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3ED46_O  97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3ED47_O  7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED48_O  7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ED49MO  97 "(97) Legitimate skip" ;
label define H3ED49YO  9997 "(9997) Legitimate skip" ;
label define H3LM1     0 "(0) No (skip to Q.3)" 1 "(1) Yes"
                       8 "(8) Don't know" ;
label define H3LM2     0 "(0) No" 1 "(1) Yes (skip to Q.7)"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3LM3     0 "(0) No (skip to Q.37)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3LM4M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3LM4Y    9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3LM5     0 "(0) No" 1 "(1) Yes (skip to Q.37)"
                       7 "(7) Legitimate skip" ;
label define H3LM6M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3LM6Y    9997 "(9997) Legitimate skip" ;
label define H3LM7     0 "(0) No (skip to Q.9)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H3LM8     0 "(0) No" 1 "(1) Yes (skip to Q.14)"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3LM9     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3LM12    1 "(1) Full time" 2 "(2) Part time" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3LM13M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3LM13Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3LM14    0 "(0) 0 jobs" 1 "(1) 1 job" 2 "(2) 2 jobs"
                       3 "(3) 3 jobs" 4 "(4) 4 jobs"
                       97 "(97) Legitimate skip" ;
label define H3LM15M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3LM15Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3LM16    97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3LM17    1 "(1) Per hour" 2 "(2) Per day" 3 "(3) Per week"
                       4 "(4) Bi-weekly (every two weeks)"
                       5 "(5) Bi-monthly (twice a month)" 6 "(6) Per month"
                       7 "(7) Per year" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3LM18    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H3LM19    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H3LM20    99996 "(99996) Refused"
                       99997 "(99997) Legitimate skip"
                       99998 "(99998) Don't know"
                       99999 "(99999) Not applicable" ;
label define H3LM21    99996 "(99996) Refused"
                       99997 "(99997) Legitimate skip"
                       99998 "(99998) Don't know"
                       99999 "(99999) Not applicable" ;
label define H3LM22    99996 "(99996) Refused"
                       99997 "(99997) Legitimate skip"
                       99998 "(99998) Don't know"
                       99999 "(99999) Not applicable" ;
label define H3LM23    99996 "(99996) Refused"
                       99997 "(99997) Legitimate skip"
                       99998 "(99998) Don't know"
                       99999 "(99999) Not applicable" ;
label define H3LM24    999997 "(999997) Legitimate skip"
                       999998 "(999998) Don't know" ;
label define H3LM27    1 "(1) Regular day shift"
                       2 "(2) Regular evening shift"
                       3 "(3) Regular night shift"
                       4 "(4) Shift rotates/changes periodically day to evening/night"
                       5 "(5) Split shift/consists of two distinct periods each day"
                       6 "(6) Irregular schedule/hours" 7 "(7) Other"
                       97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3LM28    1 "(1) Extremely satisfied" 2 "(2) Satisfied"
                       3 "(3) Neither satisfied nor dissatisfied"
                       4 "(4) Dissatisfied" 5 "(5) Extremely dissatisfied"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3LM29    1 "(1) Per hour" 2 "(2) Per day" 3 "(3) Per week"
                       4 "(4) Bi-weekly (every two weeks)"
                       5 "(5) Bi-monthly (twice a month)" 6 "(6) Per month"
                       7 "(7) Per year" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3LM30    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H3LM31    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H3LM32    99996 "(99996) Refused"
                       99997 "(99997) Legitimate skip"
                       99998 "(99998) Don't know"
                       99999 "(99999) Not applicable" ;
label define H3LM33    99996 "(99996) Refused"
                       99997 "(99997) Legitimate skip"
                       99998 "(99998) Don't know"
                       99999 "(99999) Not applicable" ;
label define H3LM34    99996 "(99996) Refused"
                       99997 "(99997) Legitimate skip"
                       99998 "(99998) Don't know"
                       99999 "(99999) Not applicable" ;
label define H3LM35    99996 "(99996) Refused"
                       99997 "(99997) Legitimate skip"
                       99998 "(99998) Don't know"
                       99999 "(99999) Not applicable" ;
label define H3LM36    99997 "(99997) Legitimate skip" ;
label define H3LM37    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3LM38    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3LM39    0 "(0) No (skip to Q.43)" 1 "(1) Yes"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3LM40M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3LM40Y   9997 "(9997) Legitimate skip" ;
label define H3LM41    1 "(1) Army" 2 "(2) Air force" 3 "(3) Marines"
                       4 "(4) Navy" 5 "(5) Coast guard"
                       97 "(97) Legitimate skip" ;
label define H3LM42    1 "(1) ARMY Private/PV-1 (E1)"
                       2 "(2) ARMY Private/PV-2 (E2)"
                       3 "(3) ARMY Private 1st Class (E3)"
                       4 "(4) ARMY Corporal (E4)"
                       5 "(5) ARMY Specialist when required, ranks under Corporal (E4)"
                       6 "(6) ARMY Sergeant (E6)"
                       7 "(7) ARMY Staff Sergeant (E6)"
                       31 "(31) AIR FORCE Airman (E2)"
                       32 "(32) AIR FORCE Airman 1st Class (E3)"
                       33 "(33) AIR FORCE Senior Airman (E4)"
                       34 "(34) AIR FORCE Staff Sergeant (E5)"
                       52 "(52) MARINES Private (E1)"
                       53 "(53) MARINES Private 1st Class (E2)"
                       54 "(54) MARINES Lance Corporal (E3)"
                       55 "(55) MARINES Corporal (E4)"
                       56 "(56) MARINES Sergeant (E5)"
                       80 "(80) NAVY Seaman Apprentice (E2)"
                       81 "(81) NAVY Seaman (E3)"
                       82 "(82) NAVY Petty Officer 3rd Class (E4)"
                       83 "(83) NAVY Petty Officer 2nd Class (E5)"
                       106 "(106) COAST GUARD Petty Officer 3rd Class (E4)"
                       997 "(997) Legitimate skip" 999 "(999) Not applicable" ;
label define H3LM43    0 "(0) No (skip to Q.55)" 1 "(1) Yes"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3LM44A   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3LM44B   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3LM44C   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3LM44D   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3LM44E   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3LM45    97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3LM46M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3LM46Y   9997 "(9997) Legitimate skip"
                       9999 "(9999) Not applicable" ;
label define H3LM47    30 "(30) Airman Basic (E1)" 31 "(31) Airman (E2)"
                       32 "(32) Airman 1st Class (E3)"
                       33 "(33) Senior Airman (E4)" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3LM48M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3LM48Y   9997 "(9997) Legitimate skip" ;
label define H3LM49    52 "(52) Private (E1)"
                       53 "(53) Private 1st Class (E2)"
                       54 "(54) Lance Corporal (E3)" 55 "(55) Corporal (E4)"
                       56 "(56) Sergeant (E5)" 60 "(60) First Sergeant (E8)"
                       97 "(97) Legitimate skip" ;
label define H3LM50M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3LM50Y   9997 "(9997) Legitimate skip"
                       9999 "(9999) Not applicable" ;
label define H3LM51    79 "(79) Seaman Recruit (E1)"
                       80 "(80) Seaman Apprentice (E2)" 81 "(81) Seaman (E3)"
                       82 "(82) Petty Officer 3rd Class (E4)"
                       83 "(83) Petty Officer 2nd Class (E5)"
                       97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3LM52M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3LM52Y   9997 "(9997) Legitimate skip" ;
label define H3LM53    104 "(104) Seaman Apprentice (E2)"
                       997 "(997) Legitimate skip" ;
label define H3LM54M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3LM54Y   9997 "(9997) Legitimate skip" ;
label define H3LM55    0 "(0) No (skip to Q.59)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3LM56    1 "(1) Civilian" 2 "(2) Military" 3 "(3) Both"
                       7 "(7) Legitimate skip" ;
label define H3LM57    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3LM58    1 "(1) Full time" 2 "(2) Part time"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3LM59    0 "(0) No (skip to Q.63)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3LM60    1 "(1) Civilian" 2 "(2) Military" 3 "(3) Both"
                       7 "(7) Legitimate skip" ;
label define H3LM61    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3LM62    1 "(1) Full time" 2 "(2) Part time"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3LM63    0 "(0) No (skip to Q.67)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3LM64    1 "(1) Civilian" 2 "(2) Military" 3 "(3) Both"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3LM65    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3LM66    1 "(1) Full time" 2 "(2) Part time"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3LM67    0 "(0) No (skip to Q.71)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3LM68    1 "(1) Civilian" 2 "(2) Military" 3 "(3) Both"
                       7 "(7) Legitimate skip" ;
label define H3LM69    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3LM70    1 "(1) Full time" 2 "(2) Part time"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3LM71    0 "(0) No (skip to Q.75)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3LM72    1 "(1) Civilian" 2 "(2) Military" 3 "(3) Both"
                       7 "(7) Legitimate skip" ;
label define H3LM73    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3LM74    1 "(1) Full time" 2 "(2) Part time"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3LM75    0 "(0) No (skip to Q.79)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3LM76    1 "(1) Civilian" 2 "(2) Military" 3 "(3) Both"
                       7 "(7) Legitimate skip" ;
label define H3LM77    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3LM78    1 "(1) Full time" 2 "(2) Part time"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3LM79    0 "(0) No (skip to the next section)" 1 "(1) Yes"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3LM80    1 "(1) Civilian" 2 "(2) Military" 3 "(3) Both"
                       7 "(7) Legitimate skip" ;
label define H3LM81    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3LM82    1 "(1) Full time" 2 "(2) Part time"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3GH1     1 "(1) Excellent" 2 "(2) Very good" 3 "(3) Good"
                       4 "(4) Fair" 5 "(5) Poor" ;
label define H3GH2     1 "(1) Very underweight" 2 "(2) Slightly underweight"
                       3 "(3) About the right weight"
                       4 "(4) Slightly overweight" 5 "(5) Very overweight"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3GH3     1 "(1) Trying to lose weight"
                       2 "(2) Trying to gain weight/bulk up"
                       3 "(3) Trying to stay the same weight"
                       4 "(4) Not trying to do anything about weight"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3GH4A    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH4B    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH4C    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH4D    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH4E    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH4F    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH4G    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH4H    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH4I    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH5     0 "(0) 0 times" 98 "(98) Don't know" ;
label define H3GH6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3GH7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3GH8     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3GH9A    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH9B    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH9C    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH9D    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH9E    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH10    0 "(0) Never" 1 "(1) A few times"
                       2 "(2) About once a week" 3 "(3) Almost everyday"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GH11H   1 "(1) 1:00" 2 "(2) 2:00" 3 "(3) 3:00" 4 "(4) 4:00"
                       5 "(5) 5:00" 6 "(6) 6:00" 7 "(7) 7:00" 8 "(8) 8:00"
                       9 "(9) 9:00" 10 "(10) 10:00" 11 "(11) 11:00"
                       12 "(12) 12:00" 96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3GH11M   0 "(0) 0 minutes" 15 "(15) 15 minutes"
                       30 "(30) 30 minutes" 45 "(45) 45 minutes"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3GH11T   1 "(1) AM" 2 "(2) PM" ;
label define H3GH12H   1 "(1) 1:00" 2 "(2) 2:00" 3 "(3) 3:00" 4 "(4) 4:00"
                       5 "(5) 5:00" 6 "(6) 6:00" 7 "(7) 7:00" 8 "(8) 8:00"
                       9 "(9) 9:00" 10 "(10) 10:00" 11 "(11) 11:00"
                       12 "(12) 12:00" 96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3GH12M   0 "(0) 0 minutes" 15 "(15) 15 minutes"
                       30 "(30) 30 minutes" 45 "(45) 45 minutes"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3GH12T   1 "(1) AM" 2 "(2) PM" ;
label define H3GH13H   1 "(1) 1:00" 2 "(2) 2:00" 3 "(3) 3:00" 4 "(4) 4:00"
                       5 "(5) 5:00" 6 "(6) 6:00" 7 "(7) 7:00" 8 "(8) 8:00"
                       9 "(9) 9:00" 10 "(10) 10:00" 11 "(11) 11:00"
                       12 "(12) 12:00" 96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3GH13M   0 "(0) 0 minutes" 15 "(15) 15 minutes"
                       30 "(30) 30 minutes" 45 "(45) 45 minutes"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3GH13T   1 "(1) AM" 2 "(2) PM" ;
label define H3GH14H   1 "(1) 1:00" 2 "(2) 2:00" 3 "(3) 3:00" 4 "(4) 4:00"
                       5 "(5) 5:00" 6 "(6) 6:00" 7 "(7) 7:00" 8 "(8) 8:00"
                       9 "(9) 9:00" 10 "(10) 10:00" 11 "(11) 11:00"
                       12 "(12) 12:00" 96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3GH14M   0 "(0) 0 minutes" 15 "(15) 15 minutes"
                       30 "(30) 30 minutes" 45 "(45) 45 minutes"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3GH14T   1 "(1) AM" 2 "(2) PM" ;
label define H3GH15    0 "(0) Never" 1 "(1) A few times"
                       2 "(2) Almost everyday" 3 "(3) Every day"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3GH16    0 "(0) Never" 1 "(1) A few times"
                       2 "(2) Almost everyday" 3 "(3) Every day"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3GH17    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3GH18    0 "(0) No days" 1 "(1) One day" 2 "(2) Two days"
                       3 "(3) Three days" 4 "(4) Four days" 5 "(5) Five days"
                       6 "(6) Six days" 7 "(7) Seven days"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3GH19    0 "(0) No days" 1 "(1) One day" 2 "(2) Two days"
                       3 "(3) Three days" 4 "(4) Four days" 5 "(5) Five days"
                       6 "(6) Six days" 7 "(7) Seven days"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3GH20    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H3HS1     0 "(0) 0 months" 1 "(1) 1 month" 2 "(2) 2 months"
                       3 "(3) 3 months" 4 "(4) 4 months" 5 "(5) 5 months"
                       6 "(6) 6 months" 7 "(7) 7 months" 8 "(8) 8 months"
                       9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months" 12 "(12) 12 months"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HS2     0 "(0) No (skip to Q.5)" 1 "(1) Yes"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3HS3     0 "(0) No" 1 "(1) Yes (skip to Q.5)"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3HS4A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS4B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS4C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS4D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS4E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS4F    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS5     0 "(0) You have no health insurance"
                       1 "(1) You are covered by your parents' insurance"
                       2 "(2) You are covered by your husband's/wife's insurance"
                       3 "(3) You get insurance through work"
                       4 "(4) You get insurance through a union"
                       5 "(5) You get insurance through school"
                       6 "(6) You are covered because you are active-duty military"
                       7 "(7) You buy private insurance yourself"
                       8 "(8) You are on Medicaid"
                       9 "(9) You are covered through the Indian Health Service"
                       10 "(10) You don't know what your health insurance coverage is"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3HS6     0 "(0) No (skip to Q.10)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3HS7A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS7B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS7C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS7D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS7E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS7F    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS7G    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS7H    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS7I    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3HS8B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8F    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8G    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8H    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8I    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8J    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8K    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8L    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8M    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8N    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS8O    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3HS9     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3HS10    0 "(0) Never get sick or need health care"
                       1 "(1) Hospital-based clinic"
                       2 "(2) Hospital emergency room"
                       3 "(3) Community health center/clinic"
                       4 "(4) Health maintenance organization (HMO)"
                       5 "(5) Private doctor's office"
                       6 "(6) School/college clinic"
                       7 "(7) Military hospital/clinic"
                       8 "(8) Clinic at work" 9 "(9) Some other place"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3HS11    1 "(1) Within the past 3 months"
                       2 "(2) 4-6 months ago" 3 "(3) 7-9 months ago"
                       4 "(4) 10-12 months ago"
                       5 "(5) Longer than 1 year ago but less than 2 years ago"
                       6 "(6) 2 years ago or longer" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HS12    1 "(1) Illness" 2 "(2) Injury/accident"
                       3 "(3) Vaccine/inoculation"
                       4 "(4) Routine check-up/physical"
                       5 "(5) Pregnancy-related care" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3HS13    1 "(1) Hospital-based clinic"
                       2 "(2) Hospital emergency room"
                       3 "(3) Community health center/clinic"
                       4 "(4) Health maintenance organization (HMO)"
                       5 "(5) Private doctor's office"
                       6 "(6) School/college clinic"
                       7 "(7) Military hospital/clinic"
                       8 "(8) Clinic at work" 9 "(9) Some other place"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3HS14    1 "(1) Within the past 3 months"
                       2 "(2) 4-6 months ago" 3 "(3) 7-9 months ago"
                       4 "(4) 10-12 months ago"
                       5 "(5) Longer than 1 year ago but less than 2 years ago"
                       6 "(6) 2 years ago or longer"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3HS15    1 "(1) Hospital-based clinic"
                       2 "(2) Hospital emergency room"
                       3 "(3) Community health center/clinic"
                       4 "(4) Health maintenance organization (HMO)"
                       5 "(5) Private doctor's office"
                       6 "(6) School/college clinic"
                       7 "(7) Military hospital/clinic"
                       8 "(8) Clinic at work" 9 "(9) Some other place"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3HS16    1 "(1) Within the past 3 months"
                       2 "(2) 4-6 months ago" 3 "(3) 7-9 months ago"
                       4 "(4) 10-12 months ago"
                       5 "(5) Longer than 1 year ago but less than 2 years ago"
                       6 "(6) 2 years ago or longer"
                       7 "(7) Never (not in pretest)" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3HS17
                       1 "(1) Routine check-up or for family planning purposes"
                       2 "(2) Pregnancy care" 3 "(3) A gynecological problem"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3HS18    0 "(0) No (skip to Q.21)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3HS19    0 "(0) No" 1 "(1) Yes (skip to Q.21)"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3HS20    0 "(0) Do nothing"
                       1 "(1) Have another Pap smear in 3 months"
                       2 "(2) Have another Pap smear in 6 months"
                       4 "(4) Have another Pap smear in 1 year"
                       5 "(5) Have specialized gynecological exam/a culposcopy/a biops"
                       6 "(6) Not told what to do" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3HS21    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3HS22    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3HS23    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID1     0 "(0) Not limited at all" 1 "(1) Limited a little"
                       2 "(2) Limited a lot" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID2     0 "(0) Not limited at all" 1 "(1) Limited a little"
                       2 "(2) Limited a lot" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID3     0 "(0) Not limited at all" 1 "(1) Limited a little"
                       2 "(2) Limited a lot" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID4     0 "(0) Not limited at all" 1 "(1) Limited a little"
                       2 "(2) Limited a lot" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID5     0 "(0) Not limited at all" 1 "(1) Limited a little"
                       2 "(2) Limited a lot" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID6     0 "(0) Not limited at all" 1 "(1) Limited a little"
                       2 "(2) Limited a lot" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID7     0 "(0) Not limited at all" 1 "(1) Limited a little"
                       2 "(2) Limited a lot" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID8     0 "(0) Not limited at all" 1 "(1) Limited a little"
                       2 "(2) Limited a lot" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID9     0 "(0) Not limited at all" 1 "(1) Limited a little"
                       2 "(2) Limited a lot" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID10    0 "(0) Not limited at all" 1 "(1) Limited a little"
                       2 "(2) Limited a lot" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID11    1 "(1) Lasted more than a year"
                       2 "(2) Developed recently" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID12    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID13    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H3ID14    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID15    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID16    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID17    97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3ID18    0 "(0) Neither" 1 "(1) Pills" 2 "(2) Insulin"
                       3 "(3) Both" 7 "(7) Legitimate skip" ;
label define H3ID19    0 "(0) No (skip to Q.21)" 1 "(1) Yes"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID20    0 "(0) 0 seizures" 9996 "(9996) Refused"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3ID21    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID22    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID23    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID24    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID25    0 "(0) No (skip to Q.27)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3ID26A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26H   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26I   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26J   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26K   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26L   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26M   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26N   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26O   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26P   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26Q   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID26R   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3ID27    0 "(0) 0 times" 996 "(996) Refused"
                       998 "(998) Don't know" ;
label define H3ID28    1 "(1) Illness" 2 "(2) Injury/accident"
                       3 "(3) Drug use or emotional problem"
                       4 "(4) Pregnancy-related care" 5 "(5) Other"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3ID29    0 "(0) 0 times" 996 "(996) Refused"
                       998 "(998) Don't know" ;
label define H3ID30    1 "(1) Within the past 3 months"
                       2 "(2) 4-6 months ago" 3 "(3) 7-9 months ago"
                       4 "(4) 10-12 months ago"
                       5 "(5) Longer than 1 year ago but less than 2 years ago"
                       6 "(6) 2 years ago or longer"
                       7 "(7) Never (not in pretest)"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3ID31    1 "(1) Illness" 2 "(2) Injury/accident"
                       3 "(3) Drug use or emotional problem"
                       4 "(4) Pregnancy-related"
                       5 "(5) Elective/reconstructive surgery" 6 "(6) Other"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3ID32    0 "(0) 0 days" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H3ID33    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know" ;
label define H3ID34A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34H   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34I   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34J   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34K   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34L   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34M   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34N   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID34O   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID35    0 "(0) No (skip to Q.37)" 1 "(1) Yes"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3ID36    1 "(1) One eye" 2 "(2) Both eyes (skip to Q.39)"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ID37    0 "(0) Neither" 1 "(1) Eyeglasses"
                       2 "(2) Contact lenses" 3 "(3) Both" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3ID38    1 "(1) Excellent" 2 "(2) Good" 3 "(3) Fair"
                       4 "(4) Poor" 5 "(5) Very poor" 6 "(6) Miscode"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3ID39    1 "(1) Excellent" 2 "(2) Good" 3 "(3) Fair"
                       4 "(4) Poor" 5 "(5) Very poor" 6 "(6) Miscode"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3ID40    0 "(0) No" 1 "(1) Yes" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SP1     0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" ;
label define H3SP2     0 "(0) Never" 1 "(1) Just a few times"
                       2 "(2) About once a week" 3 "(3) Almost every day"
                       4 "(4) Every day" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H3SP3     1 "(1) Very satisfied" 2 "(2) Satisfied"
                       3 "(3) Neither satisfied nor dissatisfied"
                       4 "(4) Dissatisfied" 5 "(5) Very dissatisfied"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3SP4     1 "(1) Moderately below average"
                       2 "(2) Slightly below average" 3 "(3) About average"
                       4 "(4) Slightly above average"
                       5 "(5) Moderately above average"
                       6 "(6) Extremely above average" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP5     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SP6     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SP7     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SP8     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SP9     0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SP10    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SP11    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SP12    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SP13    0 "(0) Never/rarely" 1 "(1) Sometimes"
                       2 "(2) A lot of the time"
                       3 "(3) Most of the time/all of the time"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SP14    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP15    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP16    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP17    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP18    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP19    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP20    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP21    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP22    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP23    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP24    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP25    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP26    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SP27    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MN1     0 "(0) No (skip to Q.14)" 1 "(1) Yes"
                       8 "(8) Don't know" ;
label define H3MN2     1 "(1) Older brother" 2 "(2) Younger brother"
                       3 "(3) Older sister" 4 "(4) Younger sister"
                       5 "(5) Mother's mother" 6 "(6) Mother's father"
                       7 "(7) Father's mother" 8 "(8) Father's father"
                       9 "(9) Aunt" 10 "(10) Uncle"
                       11 "(11) Teacher/guidance counselor"
                       12 "(12) Coach/athletic director"
                       13 "(13) Minister/priest/rabbi/religious leader"
                       14 "(14) Employer" 15 "(15) Co-worker"
                       16 "(16) Neighbor" 17 "(17) Friend"
                       18 "(18) Spouse/partner" 19 "(19) Friend's parent"
                       20 "(20) Doctor/therapist/social worker"
                       21 "(21) Other" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MN3     0 "(0) Not" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3MN4     1 "(1) Male" 2 "(2) Female" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3MN5     1 "(1) Through family" 2 "(2) Through a friend"
                       3 "(3) Through school" 4 "(4) Through work"
                       5 "(5) Other" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3MN6     0 "(0) 0 years" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3MN7     0 "(0) Not" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3MN8     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MN9     0 "(0) Not at all" 1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) About once a month" 5 "(5) About once a week"
                       6 "(6) 2-5 times a week" 7 "(7) Almost everyday"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3MN10    0 "(0) Not at all" 1 "(1) Less than once a year"
                       2 "(2) About once a year" 3 "(3) Every few months"
                       4 "(4) About once a month" 5 "(5) About once a week"
                       6 "(6) 2-5 times a week" 7 "(7) Almost everyday"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3MN11    0 "(0) Not close at all" 1 "(1) Only a little close"
                       2 "(2) Somewhat close" 3 "(3) Quite close"
                       4 "(4) Very close" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3MN12M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MN12Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3MN14    1 "(1) Much better" 2 "(2) Better"
                       3 "(3) Sometimes better/sometimes worse" 4 "(4) Worse"
                       5 "(5) Much worse" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MN15    1 "(1) Faster" 2 "(2) At about the same rate"
                       3 "(3) Slower" 6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3MN16    1 "(1) Faster" 2 "(2) At about the same rate"
                       3 "(3) Slower" 6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3MN17    1 "(1) Older all of the time"
                       2 "(2) Older most of the time"
                       3 "(3) Neither older nor younger"
                       4 "(4) Younger most of the time"
                       5 "(5) Younger all of the time" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3MN18    0 "(0) Never" 1 "(1) Seldom" 2 "(2) Sometimes"
                       3 "(3) Most of the time" 4 "(4) All of the time"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3MN19    0 "(0) No (skip to next section)" 1 "(1) Yes"
                       5 "(5) Not included in pretest" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3MN20M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MN20Y   9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3MN21    95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3MR1     0 "(0) 0 times" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H3MR_M_A  1 "(1) 1st marriage" 7 "(7) Legitimate skip" ;
label define H3MR2M_A  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3MR2Y_A  9997 "(9997) Legitimate skip" 9998 "(9998) Don't know"
                       9999 "(9999) Not applicable" ;
label define H3MR3_A   0 "(0) No" 1 "(1) Yes (skip to Q.6)"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3MR4_A   1 "(1) Annulment" 2 "(2) Divorce"
                       3 "(3) Spouse's death" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3MR5M_A  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3MR5Y_A  9997 "(9997) Legitimate skip"
                       9999 "(9999) Not applicable" ;
label define H3MR6_A   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3MR7M_A  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3MR7Y_A  9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3MR_M_B  2 "(2) 2nd marriage" 7 "(7) Legitimate skip" ;
label define H3MR2M_B  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR2Y_B  9997 "(9997) Legitimate skip" ;
label define H3MR3_B   0 "(0) No" 1 "(1) Yes (skip to Q.6)"
                       7 "(7) Legitimate skip" ;
label define H3MR4_B   1 "(1) Annulment" 2 "(2) Divorce"
                       7 "(7) Legitimate skip" ;
label define H3MR5M_B  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR5Y_B  9997 "(9997) Legitimate skip" ;
label define H3MR6_B   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3MR7M_B  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR7Y_B  9997 "(9997) Legitimate skip" ;
label define H3MR_M_C  3 "(3) 3rd marriage" 7 "(7) Legitimate skip" ;
label define H3MR2M_C  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR2Y_C  9997 "(9997) Legitimate skip" ;
label define H3MR3_C   0 "(0) No" 1 "(1) Yes (skip to Q.6)"
                       7 "(7) Legitimate skip" ;
label define H3MR4_C   7 "(7) Legitimate skip" ;
label define H3MR5M_C  97 "(97) Legitimate skip" ;
label define H3MR5Y_C  9997 "(9997) Legitimate skip" ;
label define H3MR6_C   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3MR7M_C  97 "(97) Legitimate skip" ;
label define H3MR7Y_C  9997 "(9997) Legitimate skip" ;
label define H3MR8     0 "(0) No (skip to Q.16)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3MR9     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MR_C_A  1 "(1) 1st co-habitation" 97 "(97) Legitimate skip" ;
label define H3MR10MA  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3MR10YA  9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H3MR11_A  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3MR12MA  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3MR12YA  9997 "(9997) Legitimate skip" ;
label define H3MR13_A  0 "(0) No" 1 "(1) Yes (skip to Q.16)"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3MR14_A  1 "(1) You moved out" 2 "(2) Your partner moved out"
                       3 "(3) Your partner died" 4 "(4) Other"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3MR15MA  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MR15YA  9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3MR_C_B  2 "(2) 2nd co-habitation" 97 "(97) Legitimate skip" ;
label define H3MR10MB  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3MR10YB  9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3MR11_B  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3MR12MB  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR12YB  9997 "(9997) Legitimate skip" ;
label define H3MR13_B  0 "(0) No" 1 "(1) Yes (skip to Q.16)"
                       7 "(7) Legitimate skip" ;
label define H3MR14_B  1 "(1) You moved out" 2 "(2) Your partner moved out"
                       3 "(3) Your partner died" 4 "(4) Other"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3MR15MB  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3MR15YB  9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3MR_C_C  3 "(3) 3rd co-habitation" 97 "(97) Legitimate skip" ;
label define H3MR10MC  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3MR10YC  9997 "(9997) Legitimate skip" ;
label define H3MR11_C  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3MR12MC  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR12YC  9997 "(9997) Legitimate skip" ;
label define H3MR13_C  0 "(0) No" 1 "(1) Yes (skip to Q.16)"
                       7 "(7) Legitimate skip" ;
label define H3MR14_C  1 "(1) You moved out" 2 "(2) Your partner moved out"
                       3 "(3) Your partner died" 4 "(4) Other"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3MR15MC  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3MR15YC  9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3MR_C_D  4 "(4) 4th co-habitation" 97 "(97) Legitimate skip" ;
label define H3MR10MD  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR10YD  9997 "(9997) Legitimate skip" ;
label define H3MR11_D  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3MR12MD  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR12YD  9997 "(9997) Legitimate skip" ;
label define H3MR13_D  0 "(0) No" 1 "(1) Yes (skip to Q.16)"
                       7 "(7) Legitimate skip" ;
label define H3MR14_D  1 "(1) You moved out" 2 "(2) Your partner moved out"
                       3 "(3) Your partner died" 4 "(4) Other"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3MR15MD  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR15YD  9997 "(9997) Legitimate skip" ;
label define H3MR_C_E  5 "(5) 5th co-habitation" 97 "(97) Legitimate skip" ;
label define H3MR10ME  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip" ;
label define H3MR10YE  9996 "(9996) Refused" 9997 "(9997) Legitimate skip" ;
label define H3MR11_E  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3MR12ME  97 "(97) Legitimate skip" ;
label define H3MR12YE  9997 "(9997) Legitimate skip" ;
label define H3MR13_E  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3MR14_E  1 "(1) You moved out" 2 "(2) Your partner moved out"
                       3 "(3) Your partner died" 4 "(4) Other"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3MR15ME  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR15YE  9997 "(9997) Legitimate skip" ;
label define H3MR_C_F  6 "(6) 6th co-habitation" 97 "(97) Legitimate skip" ;
label define H3MR10MF  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3MR10YF  9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3MR11_F  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3MR12MF  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR12YF  9997 "(9997) Legitimate skip" ;
label define H3MR13_F  0 "(0) No" 1 "(1) Yes (skip to Q.16)"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3MR14_F  7 "(7) Legitimate skip" ;
label define H3MR15MF  97 "(97) Legitimate skip" ;
label define H3MR15YF  9997 "(9997) Legitimate skip" ;
label define H3MR_C_G  7 "(7) 7th co-habitation" 97 "(97) Legitimate skip" ;
label define H3MR10MG  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR10YG  9997 "(9997) Legitimate skip" ;
label define H3MR11_G  7 "(7) Legitimate skip" ;
label define H3MR12MG  97 "(97) Legitimate skip" ;
label define H3MR12YG  9997 "(9997) Legitimate skip" ;
label define H3MR13_G  0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3MR14_G  1 "(1) You moved out" 2 "(2) Your partner moved out"
                       3 "(3) Your partner died" 4 "(4) Other"
                       7 "(7) Legitimate skip" ;
label define H3MR15MG  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR15YG  9997 "(9997) Legitimate skip" ;
label define H3MR_C_H  8 "(8) 8th co-habitation" 97 "(97) Legitimate skip" ;
label define H3MR10MH  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR10YH  9997 "(9997) Legitimate skip" ;
label define H3MR11_H  7 "(7) Legitimate skip" ;
label define H3MR12MH  97 "(97) Legitimate skip" ;
label define H3MR12YH  9997 "(9997) Legitimate skip" ;
label define H3MR13_H  0 "(0) No" 1 "(1) Yes (skip to Q.16)"
                       7 "(7) Legitimate skip" ;
label define H3MR14_H  7 "(7) Legitimate skip" ;
label define H3MR15MH  97 "(97) Legitimate skip" ;
label define H3MR15YH  9997 "(9997) Legitimate skip" ;
label define H3MR_C_I  9 "(9) 9th co-habitation" 97 "(97) Legitimate skip" ;
label define H3MR10MI  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR10YI  9997 "(9997) Legitimate skip" ;
label define H3MR11_I  7 "(7) Legitimate skip" ;
label define H3MR12MI  97 "(97) Legitimate skip" ;
label define H3MR12YI  9997 "(9997) Legitimate skip" ;
label define H3MR13_I  0 "(0) No" 1 "(1) Yes (skip to Q.16)" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3MR14_I  7 "(7) Legitimate skip" ;
label define H3MR15MI  97 "(97) Legitimate skip" ;
label define H3MR15YI  9997 "(9997) Legitimate skip" ;
label define H3MR_C_J  10 "(10) 10th co-habitation" 97 "(97) Legitimate skip" ;
label define H3MR10MJ  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3MR10YJ  9997 "(9997) Legitimate skip" ;
label define H3MR11_J  7 "(7) Legitimate skip" ;
label define H3MR12MJ  97 "(97) Legitimate skip" ;
label define H3MR12YJ  9997 "(9997) Legitimate skip" ;
label define H3MR13_J  0 "(0) No" 1 "(1) Yes (skip to Q.16)"
                       7 "(7) Legitimate skip" ;
label define H3MR14_J  7 "(7) Legitimate skip" ;
label define H3MR15MJ  97 "(97) Legitimate skip" ;
label define H3MR15YJ  9997 "(9997) Legitimate skip" ;
label define H3MR16A   1 "(1) Not important at all"
                       10 "(10) Extremely important" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MR16B   1 "(1) Not important at all"
                       10 "(10) Extremely important" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MR16C   1 "(1) Not important at all"
                       10 "(10) Extremely important" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MR16D   1 "(1) Not important at all"
                       10 "(10) Extremely important" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MR16E   1 "(1) Not important at all"
                       10 "(10) Extremely important" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MR17    1 "(1) Strongly agree" 2 "(2) Agree somewhat"
                       3 "(3) Neither agree nor disagree"
                       4 "(4) Disagree somewhat" 5 "(5) Strongly disagree"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3MR18    1 "(1) Get married"
                       2 "(2) Wait until education finished" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3MR19    1 "(1) Get married"
                       2 "(2) Wait until education finished" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3MR20    1 "(1) Very important" 2 "(2) Somewhat important"
                       3 "(3) Not very important"
                       4 "(4) Not at all important" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3MR21    1 "(1) Very important" 2 "(2) Somewhat important"
                       3 "(3) Not very important"
                       4 "(4) Not at all important" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3MR22    1 "(1) Strongly agree" 2 "(2) Agree somewhat"
                       3 "(3) Neither agree nor disagree"
                       4 "(4) Disagree somewhat" 5 "(5) Strongly disagree"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3EC1A    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC1B    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC1C    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC1D    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC1E    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC1F    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC1G    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC1H    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC2     0 "(0) No income" 999996 "(999996) Refused"
                       999998 "(999998) Don't know"
                       999999 "(999999) Not applicable" ;
label define H3EC3     1 "(1) Less than $10,000" 2 "(2) $10,000-$14,999"
                       3 "(3) $15,000-$19,999" 4 "(4) $20,000-$29,000"
                       5 "(5) $30,000-$39,000" 6 "(6) $40,000-$49,000"
                       7 "(7) $50,000-$74,999" 8 "(8) $75,000 or more"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3EC4     0 "(0) No income" 999996 "(999996) Refused"
                       999997 "(999997) Legitimate skip"
                       999998 "(999998) Don't know"
                       999999 "(999999) Not applicable" ;
label define H3EC5     1 "(1) Less than $10,000" 2 "(2) $10,000-$14,999"
                       3 "(3) $15,000-$19,999" 4 "(4) $20,000-$29,000"
                       5 "(5) $30,000-$39,000" 6 "(6) $40,000-$49,000"
                       7 "(7) $50,000-$74,999" 8 "(8) $75,000 or more"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3EC6     0 "(0) No income" 999996 "(999996) Refused"
                       999997 "(999997) Legitimate skip"
                       999998 "(999998) Don't know"
                       999999 "(999999) Not applicable" ;
label define H3EC7     1 "(1) Less than $10,000" 2 "(2) $10,000-$14,999"
                       3 "(3) $15,000-$19,999" 4 "(4) $20,000-$29,000"
                       5 "(5) $30,000-$39,000" 6 "(6) $40,000-$49,000"
                       7 "(7) $50,000-$74,999" 8 "(8) $75,000 or more"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3EC8     0 "(0) No income" 999996 "(999996) Refused"
                       999997 "(999997) Legitimate skip"
                       999998 "(999998) Don't know"
                       999999 "(999999) Not applicable" ;
label define H3EC9     1 "(1) Less than $10,000" 2 "(2) $10,000-$14,999"
                       3 "(3) $15,000-$19,999" 4 "(4) $20,000-$29,000"
                       5 "(5) $30,000-$39,000" 6 "(6) $40,000-$49,000"
                       7 "(7) $50,000-$74,999" 8 "(8) $75,000 or more"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3EC10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC11    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC12    0 "(0) No" 1 "(1) Yes (skip to Q.14)" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3EC13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC15    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC16    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC17    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC18    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC19    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC20    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC21    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC22    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC23    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC24    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC25    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC26    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC27    0 "(0) No" 1 "(1) Yes (skip to Q.31)" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC28    1 "(1) Cut off by welfare office (skip to Q.30)"
                       2 "(2) Own decision to leave" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC29A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC29B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC29C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC29D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC29E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC29F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC29G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC29H   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC30A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC30B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC30C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC30D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC30E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC30F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC31    0 "(0) No (skip to Q.33)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC32A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC32B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC32C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC32D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC33    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC34    0 "(0) No (skip to Q.38)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC35    1 "(1) Cut off by food stamp office (skip to Q.37)"
                       2 "(2) Own decision to leave" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC36A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC36B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC36C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC36D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC36E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC36F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC36G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC36H   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC37A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC37B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC37C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC37D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC37E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC37F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3EC38    0 "(0) No (skip to Q.53)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC39    0 "(0) No (skip to Q.41)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3EC40    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3EC41    0 "(0) No (skip to Q.43)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3EC42    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3EC43    0 "(0) No (skip to Q.45)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3EC44    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3EC45    0 "(0) No (skip to Q.47)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3EC46    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3EC47    0 "(0) No (skip to Q.49)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3EC48    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3EC49    0 "(0) No (skip to Q.51)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3EC50    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3EC51    0 "(0) No (skip to Q.53)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3EC52    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3EC53    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3EC54    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3EC55    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3EC56    1 "(1) Almost certain" 2 "(2) A good chance"
                       3 "(3) A 50-50 chance"
                       4 "(4) Some chance, but probably not"
                       5 "(5) Almost no chance" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3EC57    1 "(1) Almost certain" 2 "(2) A good chance"
                       3 "(3) A 50-50 chance"
                       4 "(4) Some chance, but probably not"
                       5 "(5) Almost no chance"
                       6 "(6) This has already happened" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3EC58    1 "(1) Almost certain" 2 "(2) A good chance"
                       3 "(3) A 50-50 chance"
                       4 "(4) Some chance, but probably not"
                       5 "(5) Almost no chance"
                       6 "(6) This has already happened" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3EC59    1 "(1) Almost certain" 2 "(2) A good chance"
                       3 "(3) A 50-50 chance"
                       4 "(4) Some chance, but probably not"
                       5 "(5) Almost no chance"
                       6 "(6) This has already happened" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3EC60    1 "(1) Almost certain" 2 "(2) A good chance"
                       3 "(3) A 50-50 chance"
                       4 "(4) Some chance, but probably not"
                       5 "(5) Almost no chance"
                       6 "(6) This has already happened" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3EC61    1 "(1) Almost certain" 2 "(2) A good chance"
                       3 "(3) A 50-50 chance"
                       4 "(4) Some chance, but probably not"
                       5 "(5) Almost no chance"
                       6 "(6) This has already happened" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3EC62    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3EC63    1 "(1) Only a very short time"
                       2 "(2) Less than half the time"
                       3 "(3) About half the time" 4 "(4) Most of the time"
                       5 "(5) Practically all the time" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3SE1     0 "(0) No (skip to Q.11)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE2     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3SE3     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SE4     0 "(0) No partners (skip to Q.11)" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3SE5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE6     0 "(0) 0 times" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3SE7     0 "(0) None" 1 "(1) Some" 2 "(2) Half" 3 "(3) Most"
                       4 "(4) All" 6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE8     0 "(0) None" 1 "(1) Some" 2 "(2) Half" 3 "(3) Most"
                       4 "(4) All" 6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE11    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE12    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE13    1 "(1) 100% heterosexual (straight)"
                       2 "(2) Mostly heterosexual/somewhat attracted to people of own"
                       3 "(3) Bisexual-attracted to men and women equally"
                       4 "(4) Mostly homosexual/somewhat attracted to opposite sex"
                       5 "(5) 100% homosexual (gay)"
                       6 "(6) Not sexually attracted to either males or females"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3SE14    0 "(0) Neither parent knows" 1 "(1) Only mother knows"
                       2 "(2) Only father knows" 3 "(3) Both parents know"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3SE15    0 "(0) No (skip to Q.17)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE16    0 "(0) None" 1 "(1) 1 or 2 times" 2 "(2) 3-10 times"
                       3 "(3) 11-25 times" 4 "(4) 26 or more times"
                       7 "(7) Legitimate skip" ;
label define H3SE17    0 "(0) No (skip to Q.19)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE18    0 "(0) None" 1 "(1) 1 or 2 times" 2 "(2) 3-10 times"
                       3 "(3) 11-25 times" 4 "(4) 26 or more times"
                       7 "(7) Legitimate skip" ;
label define H3SE19    0 "(0) No (skip to Q.21)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE20    0 "(0) None" 1 "(1) 1 or 2 times" 2 "(2) 3-10 times"
                       3 "(3) 11-25 times" 4 "(4) 26 or more times"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE21A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21E   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21F   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21G   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21H   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21I   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21J   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21K   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21L   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21M   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE21N   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE22A   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE22B   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE22C   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE22D   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE22E   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE22F   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE22G   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE22H   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE22I   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE22J   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE23A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE23B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE23C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE23D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE23E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE23F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE24A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE24B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE24C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE24D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE24E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE24F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE25    0 "(0) No (skip to Q.28)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE26    1 "(1) Within the past 3 months"
                       2 "(2) 4-6 months ago" 3 "(3) 7-9 months ago"
                       4 "(4) 10-12 months ago" 5 "(5) 1-2 years ago"
                       6 "(6) More than 2 years ago" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3SE27A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE27B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE27C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE27D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE27E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE28    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE29A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE29B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE29C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE29D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE29E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE29F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE29G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE30A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE30B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3SE31    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3SE32    1 "(1) Very high chance" 2 "(2) High chance"
                       3 "(3) Moderate chance" 4 "(4) Low chance"
                       5 "(5) Very low chance" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3SE33    1 "(1) Very good idea" 2 "(2) Somewhat good idea"
                       3 "(3) Neither a good nor a bad idea"
                       4 "(4) Somewhat bad idea" 5 "(5) Very bad idea"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SE34    1 "(1) Strongly approve" 2 "(2) Moderately approve"
                       3 "(3) Neither approve nor disapprove"
                       4 "(4) Moderately disapprove" 5 "(5) Strongly approve"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SE35    1 "(1) Very bad" 2 "(2) Moderately bad"
                       3 "(3) Somewhat bad" 4 "(4) Only slightly bad"
                       5 "(5) It would have no bad effect on your health"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SE36    1 "(1) Very bad" 2 "(2) Moderately bad"
                       3 "(3) Somewhat bad" 4 "(4) Only slightly bad"
                       5 "(5) It would have no bad effect on your relationship"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3SE37    1 "(1) Very high chance" 2 "(2) High chance"
                       3 "(3) Moderate chance" 4 "(4) Low chance"
                       5 "(5) Very low chance" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define RRELNO    1 "(1) 1st relationship listed"
                       2 "(2) 2nd relationship listed"
                       3 "(3) 3rd relationship listed"
                       4 "(4) 4th relationship listed"
                       5 "(5) 5th relationship listed"
                       6 "(6) 6th relationship listed"
                       7 "(7) 7th relationship listed"
                       8 "(8) 8th relationship listed"
                       9 "(9) 9th relationship listed"
                       10 "(10) 10th relationship listed"
                       11 "(11) 11th relationship listed"
                       12 "(12) 12th relationship listed"
                       13 "(13) 13th relationship listed"
                       14 "(14) 14th relationship listed"
                       15 "(15) 15th relationship listed"
                       18 "(18) 18th relationship listed"
                       19 "(19) 19th relationship listed"
                       41 "(41) 41st relationship listed" ;
label define H3BM1     1 "(1) Completely committed" 2 "(2) Very committed"
                       3 "(3) Moderately committed"
                       4 "(4) Somewhat committed"
                       5 "(5) Not at all committed"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM2     1 "(1) Picture 1" 2 "(2) Picture 2" 3 "(3) Picture 3"
                       4 "(4) Picture 4" 5 "(5) Picture 5" 6 "(6) Picture 6"
                       7 "(7) Picture 7"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM3     1 "(1) Almost certain" 2 "(2) A good chance"
                       3 "(3) A 50-50 chance"
                       4 "(4) Some chance, but probably not"
                       5 "(5) Almost no chance"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM4     1 "(1) Strongly agree" 2 "(2) Somewhat agree"
                       3 "(3) Neither agree nor disagree"
                       4 "(4) Somewhat disagree" 5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM5     1 "(1) Strongly agree" 2 "(2) Somewhat agree"
                       3 "(3) Neither agree nor disagree"
                       4 "(4) Somewhat disagree" 5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM6     1 "(1) Strongly agree" 2 "(2) Somewhat agree"
                       3 "(3) Neither agree nor disagree"
                       4 "(4) Somewhat disagree" 5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM7     1 "(1) Strongly agree" 2 "(2) Somewhat agree"
                       3 "(3) Neither agree nor disagree"
                       4 "(4) Somewhat disagree" 5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM8     1 "(1) Strongly agree" 2 "(2) Somewhat agree"
                       3 "(3) Neither agree nor disagree"
                       4 "(4) Somewhat disagree" 5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM9     1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM10    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM11    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM12    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM13    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM14    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM15    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM16    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM17    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM18    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM19    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM20    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM21    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM22    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM23    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM24    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM25    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM26    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM27    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM28    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM29    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM30    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM31    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM32    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM33    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM34    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM35    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM36    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM37    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3BM38    1 "(1) Never or almost never true"
                       2 "(2) Usually not true"
                       3 "(3) Sometimes but infrequently true"
                       4 "(4) Occasionally true" 5 "(5) Often true"
                       6 "(6) Usually true"
                       7 "(7) Always or almost always true"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3PR1     1 "(1) Sentence 1 selected"
                       2 "(2) Sentence 2 selected"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PR2     1 "(1) Sentence 1 selected"
                       2 "(2) Sentence 2 selected"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PR3     1 "(1) Sentence 1 selected"
                       2 "(2) Sentence 2 selected"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PR4     1 "(1) Sentence 1 selected"
                       2 "(2) Sentence 2 selected"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PR5     1 "(1) Sentence 1 selected"
                       2 "(2) Sentence 2 selected"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PR6     1 "(1) Sentence 1 selected"
                       2 "(2) Sentence 2 selected"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PR7     1 "(1) Sentence 1 selected"
                       2 "(2) Sentence 2 selected"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS1     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS2     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS3     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS4     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS5     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS6     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS7     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS8     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS9     0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS10    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS11    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS12    0 "(0) Never" 1 "(1) 1 or 2 times"
                       2 "(2) 3 or 4 times" 3 "(3) 5 or more times"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DS13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DS14    0 "(0) No (skip to Q.16)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DS15    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3DS16    0 "(0) 0 times" 96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3DS17    0 "(0) 0 times" 996 "(996) Refused"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H3DS18A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DS18B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DS18C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DS18D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DS18E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DS18F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DS18G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DS18H   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DS18I   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CJ1     0 "(0) Never (skip to Q.160)" 1 "(1) 1 time"
                       2 "(2) 2 or 3 times" 3 "(3) 4 or 5 times"
                       4 "(4) 6 or more times" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CJ2     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3CJ3     0 "(0) No (skip to Q.160)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ4     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3CJ5     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3CJ6     0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ7     0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ8     0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ9     0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ10    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ11    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ12    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ13    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ14    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ15    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ16    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ17    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ18    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ19    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ20    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ21    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ22    0 "(0) No (skip to Q.67)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ23    1 "(1) 1 conviction/guilty plea"
                       2 "(2) 2 convictions/guilty pleas"
                       3 "(3) 3 convictions/guilty pleas"
                       4 "(4) 4 convictions/guilty pleas"
                       5 "(5) 5 convictions/guilty pleas"
                       6 "(6) 6 convictions/guilty pleas"
                       7 "(7) 7 convictions/guilty pleas"
                       8 "(8) 8 convictions/guilty pleas"
                       9 "(9) 9 convictions/guilty pleas"
                       10 "(10) 10 convictions/guilty pleas"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3CJ24    5 "(5) 5 years old" 11 "(11) 11 years old"
                       12 "(12) 12 years old" 13 "(13) 13 years old"
                       14 "(14) 14 years old" 15 "(15) 15 years old"
                       16 "(16) 16 years old" 17 "(17) 17 years old"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3CJ25M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3CJ25Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3CJ26    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ27    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ28    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ29    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ30    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ31    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ32    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ33    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ34    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ35    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ36    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ37    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ38    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ39    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ40    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ41    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ42    1 "(1) Probation only" 2 "(2) A detention center only"
                       3 "(3) Both probation and a detention center"
                       4 "(4) Other" 6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CJ43A   0 "(0) 0 months" 1 "(1) 1 month" 2 "(2) 2 months"
                       3 "(3) 3 months" 4 "(4) 4 months" 5 "(5) 5 months"
                       6 "(6) 6 months" 7 "(7) 7 months" 8 "(8) 8 months"
                       9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3CJ43B   0 "(0) 0 years" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       6 "(6) 6 years" 7 "(7) 7 years" 8 "(8) 8 years"
                       9 "(9) 9 years" 10 "(10) 10 years" 11 "(11) 11 years"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3CJ44    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3CJ45    0 "(0) No" 1 "(1) Yes" 2 "(2) Some yes/some no"
                       7 "(7) Legitimate skip" ;
label define H3CJ46    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ47    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ48    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ49    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ50    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ51    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ52    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ53    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ54    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ55    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ56    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ57    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ58    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ59    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ60    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ61    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ62    1 "(1) Probation only" 2 "(2) A detention center only"
                       3 "(3) Both probation and a detention center"
                       4 "(4) Other" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CJ63A   0 "(0) 0 months" 1 "(1) 1 month" 2 "(2) 2 months"
                       3 "(3) 3 months" 4 "(4) 4 months" 5 "(5) 5 months"
                       6 "(6) 6 months" 7 "(7) 7 months" 8 "(8) 8 months"
                       9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months" 97 "(97) Legitimate skip" ;
label define H3CJ63B   0 "(0) 0 years" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       6 "(6) 6 years" 7 "(7) 7 years" 8 "(8) 8 years"
                       9 "(9) 9 years" 10 "(10) 10 years" 11 "(11) 11 years"
                       97 "(97) Legitimate skip" ;
label define H3CJ64A   0 "(0) 0 months" 1 "(1) 1 month" 2 "(2) 2 months"
                       3 "(3) 3 months" 4 "(4) 4 months" 5 "(5) 5 months"
                       6 "(6) 6 months" 7 "(7) 7 months" 8 "(8) 8 months"
                       9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months" 97 "(97) Legitimate skip" ;
label define H3CJ64B   0 "(0) 0 years" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       6 "(6) 6 years" 7 "(7) 7 years" 8 "(8) 8 years"
                       9 "(9) 9 years" 10 "(10) 10 years" 11 "(11) 11 years"
                       97 "(97) Legitimate skip" ;
label define H3CJ65    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3CJ66    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3CJ67    0 "(0) No (skip to Q.160)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ68    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H3CJ69    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ70    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ71    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ72    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ73    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ74    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ75    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ76    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ77    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ78    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ79    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ80    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ81    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ82    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ83    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ84    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ85    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CJ86    0 "(0) No (skip to Q.160)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ87    1 "(1) 1 conviction/guilty plea"
                       2 "(2) 2 convictions/guilty pleas"
                       3 "(3) 3 convictions/guilty pleas"
                       4 "(4) 4 convictions/guilty pleas"
                       5 "(5) 5 convictions/guilty pleas"
                       6 "(6) 6 convictions/guilty pleas"
                       7 "(7) 7 convictions/guilty pleas"
                       8 "(8) 8 convictions/guilty pleas"
                       9 "(9) 9 convictions/guilty pleas"
                       10 "(10) 10 convictions/guilty pleas"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3CJ88    96 "(96) Refused" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3CJ89M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3CJ89Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3CJ90    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ91    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ92    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ93    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ94    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ95    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ96    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ97    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ98    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ99    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ100   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ101   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ102   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ103   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ104   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ105   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ106   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3CJ107   1 "(1) Probation" 2 "(2) Jail" 3 "(3) Prison"
                       4 "(4) Other" 6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CJ108A  0 "(0) 0 months" 1 "(1) 1 month" 2 "(2) 2 months"
                       3 "(3) 3 months" 4 "(4) 4 months" 5 "(5) 5 months"
                       6 "(6) 6 months" 7 "(7) 7 months" 8 "(8) 8 months"
                       9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3CJ108B  0 "(0) 0 years" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       6 "(6) 6 years" 7 "(7) 7 years" 8 "(8) 8 years"
                       9 "(9) 9 years" 10 "(10) 10 years" 11 "(11) 11 years"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3CJ109A  0 "(0) 0 months" 1 "(1) 1 month" 2 "(2) 2 months"
                       3 "(3) 3 months" 4 "(4) 4 months" 5 "(5) 5 months"
                       6 "(6) 6 months" 7 "(7) 7 months" 8 "(8) 8 months"
                       9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3CJ109B  0 "(0) 0 years" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       6 "(6) 6 years" 7 "(7) 7 years" 8 "(8) 8 years"
                       9 "(9) 9 years" 10 "(10) 10 years" 11 "(11) 11 years"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3CJ110   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CJ111   0 "(0) No" 1 "(1) Yes" 2 "(2) Some yes/some no"
                       7 "(7) Legitimate skip" ;
label define H3CJ112M  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3CJ112Y  9997 "(9997) Legitimate skip" 9998 "(9998) Don't know"
                       9999 "(9999) Not applicable" ;
label define H3CJ113   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ114   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ115   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ116   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ117   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ118   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ119   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ120   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ121   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ122   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ123   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ124   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ125   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ126   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ127   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ128   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ129   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3CJ130   1 "(1) Probation" 2 "(2) Jail" 3 "(3) Prison"
                       4 "(4) Other" 7 "(7) Legitimate skip" ;
label define H3CJ131A  0 "(0) 0 months" 1 "(1) 1 month" 2 "(2) 2 months"
                       3 "(3) 3 months" 4 "(4) 4 months" 5 "(5) 5 months"
                       6 "(6) 6 months" 7 "(7) 7 months" 8 "(8) 8 months"
                       9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months" 97 "(97) Legitimate skip" ;
label define H3CJ131B  0 "(0) 0 years" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       6 "(6) 6 years" 7 "(7) 7 years" 8 "(8) 8 years"
                       9 "(9) 9 years" 10 "(10) 10 years" 11 "(11) 11 years"
                       12 "(12) 12 years" 97 "(97) Legitimate skip" ;
label define H3CJ132A  0 "(0) 0 months" 1 "(1) 1 month" 2 "(2) 2 months"
                       3 "(3) 3 months" 4 "(4) 4 months" 5 "(5) 5 months"
                       6 "(6) 6 months" 7 "(7) 7 months" 8 "(8) 8 months"
                       9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months" 97 "(97) Legitimate skip" ;
label define H3CJ132B  0 "(0) 0 years" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       6 "(6) 6 years" 7 "(7) 7 years" 8 "(8) 8 years"
                       9 "(9) 9 years" 10 "(10) 10 years" 11 "(11) 11 years"
                       12 "(12) 12 years" 97 "(97) Legitimate skip" ;
label define H3CJ133   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3CJ134   0 "(0) No" 1 "(1) Yes" 2 "(2) Some yes/some no"
                       7 "(7) Legitimate skip" ;
label define H3CJ135   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ136   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ137   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ138   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ139   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ140   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ141   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ142   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ143   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ144   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ145   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ146   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ147   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ148   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ149   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ150   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ151   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ152   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ153   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ154   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3CJ155   0 "(0) Not marked" 1 "(1) Marked (skip to Q.158)"
                       7 "(7) Legitimate skip" ;
label define H3CJ156A  0 "(0) 0 months" 1 "(1) 1 month" 2 "(2) 2 months"
                       3 "(3) 3 months" 4 "(4) 4 months" 5 "(5) 5 months"
                       6 "(6) 6 months" 7 "(7) 7 months" 8 "(8) 8 months"
                       9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months" 97 "(97) Legitimate skip" ;
label define H3CJ156B  0 "(0) 0 years" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       6 "(6) 6 years" 7 "(7) 7 years" 8 "(8) 8 years"
                       9 "(9) 9 years" 10 "(10) 10 years" 11 "(11) 11 years"
                       12 "(12) 12 years" 97 "(97) Legitimate skip" ;
label define H3CJ157A  0 "(0) 0 months" 1 "(1) 1 month" 2 "(2) 2 months"
                       3 "(3) 3 months" 4 "(4) 4 months" 5 "(5) 5 months"
                       6 "(6) 6 months" 7 "(7) 7 months" 8 "(8) 8 months"
                       9 "(9) 9 months" 10 "(10) 10 months"
                       11 "(11) 11 months" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3CJ157B  0 "(0) 0 years" 1 "(1) 1 year" 2 "(2) 2 years"
                       3 "(3) 3 years" 4 "(4) 4 years" 5 "(5) 5 years"
                       6 "(6) 6 years" 7 "(7) 7 years" 8 "(8) 8 years"
                       9 "(9) 9 years" 10 "(10) 10 years" 11 "(11) 11 years"
                       12 "(12) 12 years" 97 "(97) Legitimate skip" ;
label define H3CJ158   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3CJ159   0 "(0) No" 1 "(1) Yes" 2 "(2) Some yes/some no"
                       7 "(7) Legitimate skip" ;
label define H3CJ160   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO1     0 "(0) No (skip to Q.27)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO2     0 "(0) No (skip to Q.6)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H3TO3     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO4     0 "(0) No (skip to Q.27)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO5     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO6     0 "(0) No (skip to Q.18)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3TO7     0 "(0) 0 days" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO8     0 "(0) 0 days" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO9     0 "(0) 0 days" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO10    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H3TO11    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO12    1 "(1) Within 5 minutes" 2 "(2) Within 6-30 minutes"
                       3 "(3) Within 31-60 minutes" 4 "(4) After 60 minutes"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO14    1 "(1) The first in the morning" 2 "(2) All others"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO15    1 "(1) 10 or fewer" 2 "(2) 11-20" 3 "(3) 21-30"
                       4 "(4) 31 or more" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO16    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO17    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO18    0 "(0) No (skip to Q.25)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO19    1 "(1) Within 5 minutes" 2 "(2) Within 6-30 minutes"
                       3 "(3) Within 31-60 minutes" 4 "(4) After 60 minutes"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO20    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO21    1 "(1) The first in the morning" 2 "(2) All others"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO22    1 "(1) 10 or fewer" 2 "(2) 11-20" 3 "(3) 21-30"
                       4 "(4) 31 or more" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO23    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO24    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO25A   0 "(0) None" 1 "(1) Slight" 2 "(2) Moderate"
                       3 "(3) Intense" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO25B   0 "(0) None" 1 "(1) Slight" 2 "(2) Moderate"
                       3 "(3) Intense" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO25C   0 "(0) None" 1 "(1) Slight" 2 "(2) Moderate"
                       3 "(3) Intense" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO25D   0 "(0) None" 1 "(1) Slight" 2 "(2) Moderate"
                       3 "(3) Intense" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO25E   0 "(0) None" 1 "(1) Slight" 2 "(2) Moderate"
                       3 "(3) Intense" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO25F   0 "(0) None" 1 "(1) Slight" 2 "(2) Moderate"
                       3 "(3) Intense" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO25G   0 "(0) None" 1 "(1) Slight" 2 "(2) Moderate"
                       3 "(3) Intense" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO25H   0 "(0) None" 1 "(1) Slight" 2 "(2) Moderate"
                       3 "(3) Intense" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO25I   0 "(0) None" 1 "(1) Slight" 2 "(2) Moderate"
                       3 "(3) Intense" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO26    1 "(1) Very often" 2 "(2) Sometimes" 3 "(3) Never"
                       4 "(4) I have no siblings"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO27    1 "(1) Not true" 2 "(2) A little true"
                       3 "(3) Somewhat true" 4 "(4) Pretty true"
                       5 "(5) Very true" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO28    1 "(1) Not true" 2 "(2) A little true"
                       3 "(3) Somewhat true" 4 "(4) Pretty true"
                       5 "(5) Very true" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO29    1 "(1) Not true" 2 "(2) A little true"
                       3 "(3) Somewhat true" 4 "(4) Pretty true"
                       5 "(5) Very true" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO30    1 "(1) Not true" 2 "(2) A little true"
                       3 "(3) Somewhat true" 4 "(4) Pretty true"
                       5 "(5) Very true" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO31    1 "(1) Not true" 2 "(2) A little true"
                       3 "(3) Somewhat true" 4 "(4) Pretty true"
                       5 "(5) Very true" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO32    1 "(1) Not true" 2 "(2) A little true"
                       3 "(3) Somewhat true" 4 "(4) Pretty true"
                       5 "(5) Very true" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO33    1 "(1) Not true" 2 "(2) A little true"
                       3 "(3) Somewhat true" 4 "(4) Pretty true"
                       5 "(5) Very true" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO34    1 "(1) Not true" 2 "(2) A little true"
                       3 "(3) Somewhat true" 4 "(4) Pretty true"
                       5 "(5) Very true" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO35    1 "(1) Not true" 2 "(2) A little true"
                       3 "(3) Somewhat true" 4 "(4) Pretty true"
                       5 "(5) Very true" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO36    96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO37    0 "(0) No (skip to Q.50)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO38    0 "(0) None (skip to Q.50)"
                       1 "(1) 1 or 2 days in past 12 months"
                       2 "(2) Once a month or less (3-12 times in past 12 months)"
                       3 "(3) 2 or 3 days a month" 4 "(4) 1 or 2 days a week"
                       5 "(5) 3-5 days a week"
                       6 "(6) Every day/almost every day" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO39    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO40    0 "(0) None" 1 "(1) 1 or 2 days in past 12 months"
                       2 "(2) Once a month or less (3-12 times in past 12 months)"
                       3 "(3) 2 or 3 days a month" 4 "(4) 1 or 2 days a week"
                       5 "(5) 3-5 days a week"
                       6 "(6) Every day/almost every day" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO41    0 "(0) 0 drinks" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO42    0 "(0) 0 drinks" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO43    0 "(0) None" 1 "(1) 1 or 2 days in past 12 months"
                       2 "(2) Once a month or less (3-12 times in past 12 months)"
                       3 "(3) 2 or 3 days a month" 4 "(4) 1 or 2 days a week"
                       5 "(5) 3-5 days a week"
                       6 "(6) Every day/almost every day" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO44    1 "(1) Beer" 2 "(2) Wine" 3 "(3) Wine coolers"
                       4 "(4) Hard cider" 5 "(5) Straight liquor"
                       6 "(6) Mixed drinks" 7 "(7) Whatever is available"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3TO45    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO46    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO47    0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO48A   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO48B   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO48C   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO48D   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO48E   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO49    0 "(0) No" 1 "(1) Yes"
                       2 "(2) I haven't driven since June 1995"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO50    1 "(1) Very favorably" 2 "(2) Slightly favorably"
                       3 "(3) Neither favorably nor unfavorably"
                       4 "(4) Slightly unfavorably" 5 "(5) Very unfavorably"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO51    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO52    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO53    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO54    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO55    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO56    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO57    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO58    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO59    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO60    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO61    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO62    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO63    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO64    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO65    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO66    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO67    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO68    1 "(1) Very intelligent"
                       2 "(2) Moderately intelligent"
                       3 "(3) Slightly intelligent"
                       4 "(4) Not at all intelligent"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO69    1 "(1) Very popular" 2 "(2) Moderately popular"
                       3 "(3) Slightly popular" 4 "(4) Not at all popular"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO70    1 "(1) Very immature" 2 "(2) Moderately immature"
                       3 "(3) Slightly immature" 4 "(4) Not at all immature"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO71    1 "(1) Very confident of (HIMSELF/HERSELF)"
                       2 "(2) Moderately confident of (HIMSELF/HERSELF)"
                       3 "(3) Slightly confident of (HIMSELF/HERSELF)"
                       4 "(4) Not at all confident of (HIMSELF/HERSELF)"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO72    1 "(1) Very independent"
                       2 "(2) Moderately independent"
                       3 "(3) Slightly independent"
                       4 "(4) Not at all independent"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO73    1 "(1) Very careful" 2 "(2) Moderately careful"
                       3 "(3) Slightly careful" 4 "(4) Not at all careful"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO74    1 "(1) Very attractive" 2 "(2) Moderately attractive"
                       3 "(3) Slightly attractive"
                       4 "(4) Not at all attractive"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO75    1 "(1) Very considerate"
                       2 "(2) Moderately considerate"
                       3 "(3) Slightly considerate"
                       4 "(4) Not at all considerate"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO76    1 "(1) Very self-centered"
                       2 "(2) Moderately self-centered"
                       3 "(3) Slightly self-centered"
                       4 "(4) Not at all self-centered"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO77    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO78    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO79    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO80    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO81    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO82    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO83    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO84    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO85    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO86    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO87    1 "(1) Very excited" 2 "(2) Moderately excited"
                       3 "(3) Slightly excited" 4 "(4) Not at all excited"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO88    1 "(1) Very pleased" 2 "(2) Moderately pleased"
                       3 "(3) Slightly pleased" 4 "(4) Not at all pleased"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO89    1 "(1) Very nervous" 2 "(2) Moderately nervous"
                       3 "(3) Slightly nervous" 4 "(4) Not at all nervous"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO90    1 "(1) Very aroused or 'pumped up'"
                       2 "(2) Moderately aroused or 'pumped up'"
                       3 "(3) Slightly aroused or 'pumped up'"
                       4 "(4) Not at all aroused or 'pumped up'"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO91    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO92    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO93    1 "(1) Very positive" 2 "(2) Slightly positive"
                       3 "(3) Neither positive nor negative"
                       4 "(4) Slightly negative" 5 "(5) Very negative"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3TO94    1 "(1) Very intelligent"
                       2 "(2) Moderately intelligent"
                       3 "(3) Slightly intelligent"
                       4 "(4) Not at all intelligent" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO95    1 "(1) Very popular" 2 "(2) Moderately popular"
                       3 "(3) Slightly popular" 4 "(4) Not at all popular"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO96    1 "(1) Very immature" 2 "(2) Moderately immature"
                       3 "(3) Slightly immature" 4 "(4) Not at all immature"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO97    1 "(1) Very confident of myself"
                       2 "(2) Moderately confident of myself"
                       3 "(3) Slightly confident of myself"
                       4 "(4) Not at all confident of myself" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO98    1 "(1) Very independent"
                       2 "(2) Moderately independent"
                       3 "(3) Slightly independent"
                       4 "(4) Not at all independent" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO99    1 "(1) Very careful" 2 "(2) Moderately careful"
                       3 "(3) Slightly careful" 4 "(4) Not at all careful"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO100   1 "(1) Very attractive" 2 "(2) Moderately attractive"
                       3 "(3) Slightly attractive"
                       4 "(4) Not at all attractive" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO101   1 "(1) Very considerate"
                       2 "(2) Moderately considerate"
                       3 "(3) Slightly considerate"
                       4 "(4) Not at all considerate" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO102   1 "(1) Very self-centered"
                       2 "(2) Moderately self-centered"
                       3 "(3) Slightly self-centered"
                       4 "(4) Not at all self-centered" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO103   0 "(0) None of my friends" 1 "(1) One friend"
                       2 "(2) Two friends" 3 "(3) Three friends"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO104   0 "(0) None of my friends" 1 "(1) One friend"
                       2 "(2) Two friends" 3 "(3) Three friends"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO105A  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO105B  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO105C  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO105D  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO105E  0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO106   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO107   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO108   0 "(0) No (skip to Q.111)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO109   0 "(0) No (skip to Q.111)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3TO110   0 "(0) 0 times" 9996 "(9996) Refused"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know"
                       9999 "(9999) Not applicable" ;
label define H3TO111   0 "(0) No (skip to Q.114)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO112   0 "(0) No (skip to Q.114)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H3TO113   0 "(0) 0 times" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know" ;
label define H3TO114   0 "(0) No (skip to Q.117)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO115   0 "(0) No (skip to Q.117)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3TO116   0 "(0) 0 times" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H3TO117   0 "(0) No (skip to Q.120)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO118   0 "(0) No (skip to Q.120)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" ;
label define H3TO119   0 "(0) 0 times" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H3TO120   0 "(0) No (skip to Q.123)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO121   0 "(0) No (skip to Q.123)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3TO122   0 "(0) 0 times" 997 "(997) Legitimate skip" ;
label define H3TO123   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO124   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO125   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO126   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO127   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO128   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO129   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TO130   0 "(0) No (skip to Q.133)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO131   0 "(0) None" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 or 4 times" 4 "(4) 5 or more times"
                       7 "(7) Legitimate skip" ;
label define H3TO132   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3TO133   0 "(0) No (skip to Q.135)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO134   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3TO135   0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TO136   0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3MA1     1 "(1) One time" 2 "(2) Two times" 3 "(3) 3-5 times"
                       4 "(4) 6-10 times" 5 "(5) More than 10 times"
                       6 "(6) This has never happened" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MA2     1 "(1) One time" 2 "(2) Two times" 3 "(3) 3-5 times"
                       4 "(4) 6-10 times" 5 "(5) More than 10 times"
                       6 "(6) This has never happened" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MA3     1 "(1) One time" 2 "(2) Two times" 3 "(3) 3-5 times"
                       4 "(4) 6-10 times" 5 "(5) More than 10 times"
                       6 "(6) This has never happened" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MA4     1 "(1) One time" 2 "(2) Two times" 3 "(3) 3-5 times"
                       4 "(4) 6-10 times" 5 "(5) More than 10 times"
                       6 "(6) This has never happened" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MA5     0 "(0) 0 times" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 9 "(9) 9 times" 10 "(10) 10 times"
                       11 "(11) 11 times" 15 "(15) 15 times"
                       22 "(22) 22 times" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3MA6     0 "(0) 0 times" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 8 "(8) 8 times" 9 "(9) 9 times"
                       10 "(10) 10 times" 11 "(11) 11 times"
                       15 "(15) 15 times" 22 "(22) 22 times"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3MAC7    0 "(0) This has never happened" 1 "(1) One time"
                       2 "(2) Two times" 3 "(3) 3-5 times" 4 "(4) 6-10 times"
                       5 "(5) More than 10 times"
                       6 "(6) This has never happened"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3MAC8    0 "(0) This has never happened" 1 "(1) One time"
                       2 "(2) Two times" 3 "(3) 3-5 times" 4 "(4) 6-10 times"
                       5 "(5) More than 10 times"
                       6 "(6) This has never happened"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3MAC9    0 "(0) This has never happened" 1 "(1) One time"
                       2 "(2) Two times" 3 "(3) 3-5 times" 4 "(4) 6-10 times"
                       5 "(5) More than 10 times"
                       6 "(6) This has never happened"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3MAC10   0 "(0) This has never happened" 1 "(1) One time"
                       2 "(2) Two times" 3 "(3) 3-5 times" 4 "(4) 6-10 times"
                       5 "(5) More than 10 times"
                       6 "(6) This has never happened"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3CC1     0 "(0) No (skip to Q.3)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CC2A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CC2B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CC2C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CC3     0 "(0) No (skip to Q.5)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CC4A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CC4B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CC4C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CC4D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CC4E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CC4F    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CC4G    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CC4H    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CC4I    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3CC5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CC6     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CC7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CC8     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3CC9A    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CC9B    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CC9C    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CC9D    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CC9E    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CC9F    0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CC10    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3CC11    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3CC12    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3CC13    1 "(1) Very conservative" 2 "(2) Conservative"
                       3 "(3) Middle-of-the-road" 4 "(4) Liberal"
                       5 "(5) Very liberal" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3CC14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3CC15    1 "(1) Democrat" 2 "(2) Republican" 3 "(3) Reform"
                       4 "(4) Libertarian" 5 "(5) Green" 6 "(6) Socialist"
                       7 "(7) Independent" 8 "(8) Other" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RE1     0 "(0) None/atheist/agnostic" 1 "(1) Protestant"
                       2 "(2) Catholic" 3 "(3) Jewish" 4 "(4) Buddhist"
                       5 "(5) Hindu" 6 "(6) Moslem" 7 "(7) Other"
                       8 "(8) Christian" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RE2     0 "(0) None/atheist/agnostic" 1 "(1) Protestant"
                       2 "(2) Catholic" 3 "(3) Jewish" 4 "(4) Buddhist"
                       5 "(5) Hindu" 6 "(6) Moslem" 7 "(7) Other"
                       8 "(8) Pagan" 9 "(9) Spiritual" 10 "(10) Asian"
                       11 "(11) Personal" 12 "(12) Orthodox"
                       13 "(13) Eastern Orthodox" 14 "(14) Native American"
                       15 "(15) Unknown" 97 "(97) Legitimate skip" ;
label define H3RE3     0 "(0) None of these" 1 "(1) Fundamentalist"
                       2 "(2) Evangelical" 3 "(3) Mainline" 4 "(4) Liberal"
                       5 "(5) Pentecostal" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RE4     0 "(0) None of these" 1 "(1) Traditional"
                       2 "(2) Moderate" 3 "(3) Liberal" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RE5     0 "(0) None of these" 1 "(1) Orthodox"
                       2 "(2) Conservative" 3 "(3) Reform"
                       7 "(7) Legitimate skip" ;
label define H3RE6     2 "(2) Assembly of God" 3 "(3) Baptist"
                       4 "(4) Brethren" 5 "(5) Charismatic"
                       6 "(6) Christian/'just Christian'"
                       7 "(7) Christian and Missionary Alliance (CMA)"
                       8 "(8) Christian Science" 9 "(9) Church of Christ"
                       10 "(10) Church of God"
                       11 "(11) Church of the Nazarene"
                       12 "(12) Congregational" 13 "(13) Disciples of Christ"
                       14 "(14) Episcopalian/Anglican/Church of England"
                       15 "(15) Evangelical Covenant Church"
                       16 "(16) Evangelical Free Church"
                       17 "(17) Four-square Gospel"
                       18 "(18) Free Methodist Church" 19 "(19) Holiness"
                       20 "(20) Independent" 21 "(21) Jehovah's Witness"
                       22 "(22) Lutheran" 24 "(24) Methodist"
                       25 "(25) Mormon/Latter-Day Saints"
                       26 "(26) Nondenominational/inter-denominational Protestant"
                       27 "(27) Pentecostal" 28 "(28) Presbyterian"
                       29 "(29) Quaker/Friends" 30 "(30) Reformed"
                       32 "(32) Unitarian/Universalist"
                       33 "(33) United Church of Christ"
                       34 "(34) Wesleyan Church" 35 "(35) Other"
                       36 "(36) Just Protestant"
                       37 "(37) Seven Day Adventists" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RE7     2 "(2) Assembly of God" 3 "(3) Baptist"
                       4 "(4) Brethren" 5 "(5) Charismatic"
                       6 "(6) Christian/'just Christian'"
                       7 "(7) Christian and Missionary Alliance (CMA)"
                       8 "(8) Christian Science" 9 "(9) Church of Christ"
                       10 "(10) Church of God"
                       11 "(11) Church of the Nazarene"
                       12 "(12) Congregational" 13 "(13) Disciples of Christ"
                       14 "(14) Episcopalian/Anglican/Church of England"
                       15 "(15) Evangelical Covenant Church"
                       16 "(16) Evangelical Free Church"
                       17 "(17) Four-square Gospel"
                       18 "(18) Free Methodist Church" 19 "(19) Holiness"
                       20 "(20) Independent" 21 "(21) Jehovah's Witness"
                       22 "(22) Lutheran" 24 "(24) Methodist"
                       25 "(25) Mormon/Latter-Day Saints"
                       26 "(26) Nondenominational/inter-denominational Protestant"
                       27 "(27) Pentecostal" 28 "(28) Presbyterian"
                       29 "(29) Quaker/Friends" 30 "(30) Reformed"
                       32 "(32) Unitarian/Universalist"
                       33 "(33) United Church of Christ"
                       34 "(34) Wesleyan Church" 35 "(35) Other"
                       36 "(36) Just Protestant"
                       37 "(37) Seven Day Adventists" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RE8     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RE9     1 "(1) American Baptist Association"
                       2 "(2) American Baptist Churches in the USA"
                       3 "(3) Baptist Bible Fellowship"
                       4 "(4) Baptist General Conference"
                       5 "(5) Baptist Missionary Association"
                       6 "(6) Conservative Baptist Association of America"
                       7 "(7) Free Will Baptist"
                       8 "(8) Fundamentalist Baptist (no denominational ties)"
                       9 "(9) General Association of Regular Baptists"
                       10 "(10) Independent Baptist (no denominational ties)"
                       11 "(11) Missionary Baptist"
                       12 "(12) National Baptist Convention USA"
                       13 "(13) Primitive Baptist"
                       14 "(14) Progressive National Baptist Convention"
                       15 "(15) Reformed Baptist"
                       16 "(16) Southern Baptist Convention" 17 "(17) Other"
                       18 "(18) Just Baptist" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RE10    1 "(1) Church of the Brethren"
                       97 "(97) Legitimate skip" ;
label define H3RE11    2 "(2) Pentecostal"
                       3 "(3) Nondenominational charismatic"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3RE12    1 "(1) Christian Church (Disciples of Christ)"
                       3 "(3) 'Simply a Christian'" 7 "(7) Legitimate skip" ;
label define H3RE13    1 "(1) Church of Christ"
                       2 "(2) United Church of Christ"
                       7 "(7) Legitimate skip" ;
label define H3RE14    1 "(1) Church of God of Anderson, IN"
                       2 "(2) Church of God of Cleveland, TN"
                       3 "(3) Church of God in Christ" 4 "(4) Other"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3RE15    1 "(1) United Church of Christ"
                       2 "(2) 'Just Congregational'" 7 "(7) Legitimate skip" ;
label define H3RE16    7 "(7) Other" 8 "(8) 'Just Holiness'"
                       97 "(97) Legitimate skip" ;
label define H3RE17    2 "(2) Independent evangelical"
                       3 "(3) Independent fundamentalist" 5 "(5) Other"
                       6 "(6) 'Just independent'" 97 "(97) Legitimate skip" ;
label define H3RE18    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RE19    1 "(1) Evangelical Lutheran Church in America"
                       2 "(2) Missouri Synod" 4 "(4) Other"
                       5 "(5) 'Just Lutheran'" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RE20    1 "(1) African Methodist Episcopal Church"
                       2 "(2) African Methodist Episcopal Zion Church"
                       4 "(4) United Methodist Church" 5 "(5) Other"
                       6 "(6) 'Just Methodist'" 97 "(97) Legitimate skip" ;
label define H3RE21    1 "(1) Apostolic Pentecostal"
                       2 "(2) Assemblies of God"
                       5 "(5) Church of God in Christ"
                       8 "(8) Four-square Gospel" 9 "(9) Full Gospel"
                       10 "(10) Pentecostal Church of God"
                       11 "(11) Pentecostal Holiness Church"
                       13 "(13) United Pentecostal Church International"
                       14 "(14) Other" 15 "(15) 'Just Pentecostal'"
                       96 "(96) Refused" 97 "(97) Legitimate skip" ;
label define H3RE22    1 "(1) Evangelical Presbyterian Church"
                       2 "(2) PCUSA (Presbyterian Church in the USA)"
                       3 "(3) Presbyterian Church of America" 4 "(4) Other"
                       5 "(5) 'Just Presbyterian'" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3RE23    2 "(2) Reformed Church in America"
                       7 "(7) Legitimate skip" ;
label define H3RE24    0 "(0) Never" 1 "(1) A few times"
                       2 "(2) Several times" 3 "(3) Once a month"
                       4 "(4) 2 or 3 times a month" 5 "(5) Once a week"
                       6 "(6) More than once a week" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RE25    0 "(0) Never" 1 "(1) A few times"
                       2 "(2) Several times" 3 "(3) Once a month"
                       4 "(4) 2 or 3 times a month" 5 "(5) Once a week"
                       6 "(6) More than once a week" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RE26    0 "(0) None (skip to Q.30)" 1 "(1) Protestant"
                       2 "(2) Catholic" 3 "(3) Jewish" 4 "(4) Buddhist"
                       5 "(5) Hindu" 6 "(6) Moslem" 7 "(7) Other"
                       8 "(8) Christian" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RE27    0 "(0) None of these" 1 "(1) Fundamentalist"
                       2 "(2) Evangelical" 3 "(3) Mainline" 4 "(4) Liberal"
                       5 "(5) Pentecostal" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RE28    0 "(0) None of these" 1 "(1) Traditional"
                       2 "(2) Moderate" 3 "(3) Liberal" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RE29    0 "(0) None of these" 1 "(1) Orthodox"
                       2 "(2) Conservative" 3 "(3) Reform"
                       7 "(7) Legitimate skip" ;
label define H3RE30    0 "(0) Not important" 1 "(1) Somewhat important"
                       2 "(2) Very important"
                       3 "(3) More important than anything else"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RE31    0 "(0) 0 hours" 96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RE32    0 "(0) Never" 1 "(1) Less than once a month"
                       2 "(2) Once a month" 3 "(3) A few times a month"
                       4 "(4) Once a week" 5 "(5) A few times a week"
                       6 "(6) Once a day" 7 "(7) More than once a day"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RE33    0 "(0) Not important" 1 "(1) Somewhat important"
                       2 "(2) Very important"
                       3 "(3) More important than anything else"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RE34    0 "(0) No (skip to Q.36)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RE35    0 "(0) 0 years" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3RE36    0 "(0) I don't believe in God now and I never have"
                       1 "(1) I don't believe in God now, but I used to"
                       2 "(2) I believe in God, but I didn't before"
                       3 "(3) I believe in God and always have"
                       4 "(4) I've never been sure if there is a God or not"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RE37    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RE38    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RE39    1 "(1) Strongly agree" 2 "(2) Agree"
                       3 "(3) Neither agree nor disagree" 4 "(4) Disagree"
                       5 "(5) Strongly disagree" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RE40    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RE41    0 "(0) Not religious at all"
                       1 "(1) Slightly religious"
                       2 "(2) Moderately religious" 3 "(3) Very religious"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RE42    0 "(0) Not spiritual at all"
                       1 "(1) Slightly spiritual"
                       2 "(2) Moderately spiritual" 3 "(3) Very spiritual"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3GM1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3GM2     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3GM3     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3GM4     0 "(0) Never gambled" 1 "(1) Never lost money"
                       2 "(2) Lost less than $100"
                       3 "(3) Lost between $100 and $500"
                       4 "(4) Lost between $501 and $1000"
                       5 "(5) Lost between $1001 and $5000"
                       6 "(6) Lost between $5001 and $10,000"
                       7 "(7) Lost more than $10,000" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3GM5     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3GM6     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3GM7     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3GM8     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3DA1     0 "(0) Not at all" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 7 "(7) 7 or more times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA2     0 "(0) Not at all" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 7 "(7) 7 or more times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA3     0 "(0) Not at all" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 7 "(7) 7 or more times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA4     0 "(0) 0 hours" 996 "(996) Refused"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H3DA5     0 "(0) 0 hours" 996 "(996) Refused"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H3DA6     0 "(0) Not at all" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 7 "(7) 7 or more times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA7     0 "(0) 0 hours" 996 "(996) Refused"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H3DA8     0 "(0) Not at all" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 7 "(7) 7 or more times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA9     0 "(0) Not at all" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 7 "(7) 7 or more times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA10    0 "(0) Not at all" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 7 "(7) 7 or more times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA11    0 "(0) Not at all" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 7 "(7) 7 or more times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA12    0 "(0) Not at all" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 7 "(7) 7 or more times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA13    0 "(0) Not at all" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 7 "(7) 7 or more times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA14    0 "(0) Not at all" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 7 "(7) 7 or more times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA15    0 "(0) Not at all" 1 "(1) 1 time" 2 "(2) 2 times"
                       3 "(3) 3 times" 4 "(4) 4 times" 5 "(5) 5 times"
                       6 "(6) 6 times" 7 "(7) 7 or more times"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA16    0 "(0) No" 1 "(1) Yes (skip to Q.18)" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DA17    1 "(1) More active" 2 "(2) Less active"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DA18    0 "(0) No children" 1 "(1) 1 child" 2 "(2) 2 children"
                       3 "(3) 3 children" 4 "(4) 4 children"
                       5 "(5) 5 children" 9 "(9) 9 children"
                       32 "(32) 32 children" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3DA19    0 "(0) No children" 1 "(1) 1 child" 2 "(2) 2 children"
                       3 "(3) 3 children" 4 "(4) 4 children"
                       5 "(5) 5 children" 9 "(9) 9 children"
                       32 "(32) 32 children" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3DA20    0 "(0) 0 hours" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3DA21    0 "(0) 0 hours" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3DA22    0 "(0) No (skip to Q.28)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3DA23    0 "(0) No (skip to Q.25)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3DA24    0 "(0) 0 times" 97 "(97) Legitimate skip" ;
label define H3DA25    0 "(0) No (skip to Q.28)" 1 "(1) Yes"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3DA26    97 "(97) Legitimate skip" ;
label define H3DA27    0 "(0) 0 hours" 97 "(97) Legitimate skip" ;
label define H3DA28    0 "(0) No (skip to Q.36)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DA29A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DA29B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DA29C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DA29D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DA29E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DA29F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DA30    0 "(0) 0 miles" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3DA31    0 "(0) 0 hours" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3DA32    0 "(0) 0 hours" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3DA33    0 "(0) 0 hours" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3DA34    0 "(0) 0 hours" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3DA35    0 "(0) 0 hours" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3DA36    0 "(0) No (skip to Q.43)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3DA37    0 "(0) 0 hours" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3DA38A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DA38B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DA38C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DA38D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DA38E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DA38F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3DA39    0 "(0) 0 miles" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3DA40    0 "(0) 0 hours" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3DA41    0 "(0) 0 hours" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3DA42    0 "(0) 0 hours" 996 "(996) Refused"
                       997 "(997) Legitimate skip" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3DA43F   4 "(4) 4 feet" 5 "(5) 5 feet" 6 "(6) 6 feet"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3DA43I   0 "(0) 0 inches" 1 "(1) 1 inch" 2 "(2) 2 inches"
                       3 "(3) 3 inches" 4 "(4) 4 inches" 5 "(5) 5 inches"
                       6 "(6) 6 inches" 7 "(7) 7 inches" 8 "(8) 8 inches"
                       9 "(9) 9 inches" 10 "(10) 10 inches"
                       11 "(11) 11 inches" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H3DA44    996 "(996) Refused" 998 "(998) Don't know"
                       999 "(999) Not applicable" ;
label define H3DA45    7 "(7) Seven years or younger" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3WGT     888 "(888) Over 330 lbs--scale measured only to 330"
                       996 "(996) Refused" ;
label define H3HGT_F   4 "(4) 4 feet" 5 "(5) 5 feet" 6 "(6) 6 feet"
                       7 "(7) 7 feet" 96 "(96) Refused" 98 "(98) Don't know" ;
label define H3HGT_I   0 "(0) 0 inches" 1 "(1) 1 inch" 2 "(2) 2 inches"
                       3 "(3) 3 inches" 4 "(4) 4 inches" 5 "(5) 5 inches"
                       6 "(6) 6 inches" 7 "(7) 7 inches" 8 "(8) 8 inches"
                       9 "(9) 9 inches" 10 "(10) 10 inches"
                       11 "(11) 11 inches" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H3HGT_PI  0 "(0) 0 inches" 6 "(6) Refused" 8 "(8) Don't know" ;
label define CH        1 "(1) No results" 2 "(2) Positive" 3 "(3) Negative"
                       6 "(6) Refused" ;
label define GC        1 "(1) No results" 2 "(2) Positive" 3 "(3) Negative"
                       6 "(6) Refused" ;
label define TRICH     1 "(1) No results" 2 "(2) Positive" 3 "(3) Negative"
                       6 "(6) Refused" ;
label define H3RPART
                       1 "(1) Resp passed on letter;spouse/partner available can proce"
                       2 "(2) Resp passed on letter;spouse/partner not available now"
                       3 "(3) Resp agreed pass on letter;spouse/partner not there"
                       4 "(4) Resp agreed pass on letter;spouse/partner there, not ava"
                       5 "(5) Respondent didn't agree to pass on the letter"
                       6 "(6) In partner sample--no eligible partner"
                       7 "(7) In partner sample-eligible partnr/not recruit/computer e"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3IR1     1 "(1) Very unattractive" 2 "(2) Unattractive"
                       3 "(3) About average" 4 "(4) Attractive"
                       5 "(5) Very attractive" ;
label define H3IR2     1 "(1) Very unattractive" 2 "(2) Unattractive"
                       3 "(3) About average" 4 "(4) Attractive"
                       5 "(5) Very attractive" ;
label define H3IR3     1 "(1) Very poorly groomed" 2 "(2) Poorly groomed"
                       3 "(3) About average" 4 "(4) Well groomed"
                       5 "(5) Very well groomed" ;
label define H3IR4     1 "(1) White" 2 "(2) Black/African American"
                       3 "(3) American Indian/Alaska Native"
                       4 "(4) Asian/Pacific Islander" ;
label define H3IR5     0 "(0) No" 1 "(1) Yes" ;
label define H3IR6     0 "(0) No interruptions" 1 "(1) A few interruptions"
                       2 "(2) Many interruptions" ;
label define H3IR7     1 "(1) Inside respondent's residence"
                       2 "(2) Immediately outside respondent's residence"
                       3 "(3) Inside a parent's residence"
                       4 "(4) Immediately outside a parent's residence"
                       5 "(5) In interviewer's car"
                       6 "(6) At another location" ;
label define H3IR8     0 "(0) No" 1 "(1) Yes" ;
label define H3IR9     0 "(0) No" 1 "(1) Yes" 2 "(2) Perhaps" ;
label define H3IR10    0 "(0) No" 1 "(1) Yes" ;
label define H3IR11    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3IR12    0 "(0) No" 1 "(1) Yes" ;
label define H3IR13    0 "(0) No" 1 "(1) Yes" ;
label define H3IR14    0 "(0) No" 1 "(1) Yes, in one eye"
                       2 "(2) Yes, in both eyes" ;
label define H3IR15    0 "(0) No" 1 "(1) Yes, somewhat"
                       2 "(2) Yes, completely" ;
label define H3IR16    0 "(0) No" 1 "(1) Yes" ;
label define H3IR17    1 "(1) Black" 2 "(2) Dark brown" 3 "(3) Medium brown"
                       4 "(4) Light brown" 5 "(5) White" ;
label define H3IR18    0 "(0) No hair: bald or shaved" 1 "(1) Black"
                       2 "(2) Brown" 3 "(3) Blond" 4 "(4) Red" 6 "(6) Other" ;
label define H3IR19    1 "(1) Black" 2 "(2) Brown" 3 "(3) Hazel" 4 "(4) Blue"
                       5 "(5) Green" 6 "(6) Other" ;
label define H3IR20    0 "(0) No"
                       1 "(1) Yes, all of the self-administered questions"
                       2 "(2) Yes, some of the self-administered questions"
                       5 "(5) Question not asked of this respondent" ;
label define H3IR21    0 "(0) No comments" 1 "(1) Enter comments" ;


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
replace PRMOM = . if (PRMOM == 99)
replace PRPOP = . if (PRPOP == 99)
replace H3OD2 = . if (H3OD2 == 8)
replace H3OD3A = . if (H3OD3A == 7 | H3OD3A == 8)
replace H3OD3B = . if (H3OD3B == 7)
replace H3OD3C = . if (H3OD3C == 7)
replace H3OD3D = . if (H3OD3D == 7)
replace H3OD3E = . if (H3OD3E == 7)
replace H3OD3F = . if (H3OD3F == 7)
replace H3OD4A = . if (H3OD4A == 6 | H3OD4A == 8 | H3OD4A == 9)
replace H3OD4B = . if (H3OD4B == 8 | H3OD4B == 9)
replace H3OD4C = . if (H3OD4C == 8 | H3OD4C == 9)
replace H3OD4D = . if (H3OD4D == 8 | H3OD4D == 9)
replace H3OD5A = . if (H3OD5A == 6 | H3OD5A == 7)
replace H3OD5B = . if (H3OD5B == 7)
replace H3OD5C = . if (H3OD5C == 7)
replace H3OD5D = . if (H3OD5D == 7)
replace H3OD5E = . if (H3OD5E == 7)
replace H3OD5F = . if (H3OD5F == 7)
replace H3OD5G = . if (H3OD5G >= 7 & H3OD5G <= 9)
replace H3OD6 = . if (H3OD6 >= 6 & H3OD6 <= 9)
replace H3OD7A = . if (H3OD7A == 994 | H3OD7A == 998 | H3OD7A == 999)
replace H3OD7B = . if (H3OD7B == 994)
replace H3OD7B = . if (H3OD7B >= 997 & H3OD7B <= 999)
replace H3OD7C = . if (H3OD7C >= 997 & H3OD7C <= 999)
replace H3OD7D = . if (H3OD7D >= 997 & H3OD7D <= 999)
replace H3OD8 = . if (H3OD8 >= 996 & H3OD8 <= 999)
replace H3OD11 = . if (H3OD11 == 8 | H3OD11 == 9)
replace H3OD12 = . if (H3OD12 == 8 | H3OD12 == 9)
replace H3OD14 = . if (H3OD14 == 995)
replace H3OD15 = . if (H3OD15 == 7 | H3OD15 == 8)
replace H3OD16 = . if (H3OD16 == 7)
replace H3OD17 = . if (H3OD17 == 7 | H3OD17 == 8)
replace H3OD18M = . if (H3OD18M == 97 | H3OD18M == 98)
replace H3OD18Y = . if (H3OD18Y == 9997 | H3OD18Y == 9998)
replace H3OD19 = . if (H3OD19 == 7 | H3OD19 == 8)
replace H3OD21A = . if (H3OD21A == 7 | H3OD21A == 8)
replace H3OD21B = . if (H3OD21B == 7)
replace H3OD21C = . if (H3OD21C == 7)
replace H3OD21D = . if (H3OD21D == 7)
replace H3OD21E = . if (H3OD21E == 7)
replace H3OD22 = . if (H3OD22 == 7)
replace H3OD23 = . if (H3OD23 == 8)
replace H3OD24 = . if (H3OD24 == 7)
replace H3OD25 = . if (H3OD25 == 7)
replace H3OD26 = . if (H3OD26 >= 96 & H3OD26 <= 98)
replace H3OD27 = . if (H3OD27 == 97)
replace H3OD28 = . if (H3OD28 >= 96 & H3OD28 <= 98)
replace H3OD29 = . if (H3OD29 == 7 | H3OD29 == 8)
replace H3OD30 = . if (H3OD30 == 7)
replace H3OD31 = . if (H3OD31 == 6 | H3OD31 == 8 | H3OD31 == 9)
replace H3OD32 = . if (H3OD32 == 97 | H3OD32 == 98)
replace H3OD33 = . if (H3OD33 == 7)
replace H3OD34A = . if (H3OD34A == 97)
replace H3OD34B = . if (H3OD34B == 97)
replace H3OD35 = . if (H3OD35 == 7 | H3OD35 == 8)
replace H3OD36M = . if (H3OD36M == 97 | H3OD36M == 98)
replace H3OD36Y = . if (H3OD36Y == 9997 | H3OD36Y == 9998)
replace H3OD37M = . if (H3OD37M == 97 | H3OD37M == 98)
replace H3OD37Y = . if (H3OD37Y == 9997 | H3OD37Y == 9998)
replace H3OD38 = . if (H3OD38 == 6 | H3OD38 == 7)
replace H3HR1 = . if (H3HR1 == 9)
replace H3HR2 = . if (H3HR2 == 99)
replace H3HR3 = . if (H3HR3 == 7)
replace H3HR4 = . if (H3HR4 == 97)
replace H3HR5 = . if (H3HR5 >= 6 & H3HR5 <= 9)
replace H3HR6 = . if (H3HR6 == 97)
replace H3HR7A = . if (H3HR7A == 7)
replace H3HR8A = . if (H3HR8A >= 996 & H3HR8A <= 998)
replace H3HR9A = . if (H3HR9A >= 996 & H3HR9A <= 998)
replace H3HR10A = . if (H3HR10A == 96 | H3HR10A == 97 | H3HR10A == 99)
replace H3HR11A = . if (H3HR11A >= 97 & H3HR11A <= 99)
replace H3HR7B = . if (H3HR7B == 7)
replace H3HR8B = . if (H3HR8B >= 996 & H3HR8B <= 998)
replace H3HR9B = . if (H3HR9B == 997 | H3HR9B == 998)
replace H3HR10B = . if (H3HR10B >= 96 & H3HR10B <= 99)
replace H3HR11B = . if (H3HR11B >= 97 & H3HR11B <= 99)
replace H3HR7C = . if (H3HR7C == 7)
replace H3HR8C = . if (H3HR8C >= 996 & H3HR8C <= 999)
replace H3HR9C = . if (H3HR9C >= 996 & H3HR9C <= 999)
replace H3HR10C = . if (H3HR10C >= 96 & H3HR10C <= 99)
replace H3HR11C = . if (H3HR11C >= 96 & H3HR11C <= 99)
replace H3HR7D = . if (H3HR7D == 7)
replace H3HR8D = . if (H3HR8D >= 996 & H3HR8D <= 999)
replace H3HR9D = . if (H3HR9D >= 996 & H3HR9D <= 999)
replace H3HR10D = . if (H3HR10D >= 96 & H3HR10D <= 99)
replace H3HR11D = . if (H3HR11D >= 96 & H3HR11D <= 99)
replace H3HR7E = . if (H3HR7E == 7)
replace H3HR8E = . if (H3HR8E >= 996 & H3HR8E <= 999)
replace H3HR9E = . if (H3HR9E >= 996 & H3HR9E <= 999)
replace H3HR10E = . if (H3HR10E >= 96 & H3HR10E <= 99)
replace H3HR11E = . if (H3HR11E >= 96 & H3HR11E <= 99)
replace H3HR7F = . if (H3HR7F == 7)
replace H3HR8F = . if (H3HR8F >= 996 & H3HR8F <= 999)
replace H3HR9F = . if (H3HR9F >= 996 & H3HR9F <= 999)
replace H3HR10F = . if (H3HR10F >= 96 & H3HR10F <= 99)
replace H3HR11F = . if (H3HR11F >= 96 & H3HR11F <= 99)
replace H3HR7G = . if (H3HR7G == 7)
replace H3HR8G = . if (H3HR8G >= 996 & H3HR8G <= 999)
replace H3HR9G = . if (H3HR9G >= 996 & H3HR9G <= 999)
replace H3HR10G = . if (H3HR10G >= 96 & H3HR10G <= 99)
replace H3HR11G = . if (H3HR11G >= 96 & H3HR11G <= 99)
replace H3HR7H = . if (H3HR7H == 7)
replace H3HR8H = . if (H3HR8H >= 996 & H3HR8H <= 999)
replace H3HR9H = . if (H3HR9H >= 996 & H3HR9H <= 999)
replace H3HR10H = . if (H3HR10H >= 96 & H3HR10H <= 99)
replace H3HR11H = . if (H3HR11H >= 96 & H3HR11H <= 99)
replace H3HR7I = . if (H3HR7I == 7)
replace H3HR8I = . if (H3HR8I >= 996 & H3HR8I <= 999)
replace H3HR9I = . if (H3HR9I >= 996 & H3HR9I <= 999)
replace H3HR10I = . if (H3HR10I >= 96 & H3HR10I <= 99)
replace H3HR11I = . if (H3HR11I >= 96 & H3HR11I <= 99)
replace H3HR7J = . if (H3HR7J == 7)
replace H3HR8J = . if (H3HR8J >= 996 & H3HR8J <= 999)
replace H3HR9J = . if (H3HR9J >= 996 & H3HR9J <= 999)
replace H3HR10J = . if (H3HR10J >= 96 & H3HR10J <= 99)
replace H3HR11J = . if (H3HR11J >= 96 & H3HR11J <= 99)
replace H3HR7K = . if (H3HR7K == 7)
replace H3HR8K = . if (H3HR8K >= 996 & H3HR8K <= 999)
replace H3HR9K = . if (H3HR9K >= 996 & H3HR9K <= 999)
replace H3HR10K = . if (H3HR10K >= 96 & H3HR10K <= 99)
replace H3HR11K = . if (H3HR11K >= 96 & H3HR11K <= 99)
replace H3HR7L = . if (H3HR7L == 7)
replace H3HR8L = . if (H3HR8L >= 996 & H3HR8L <= 999)
replace H3HR9L = . if (H3HR9L >= 996 & H3HR9L <= 999)
replace H3HR10L = . if (H3HR10L >= 96 & H3HR10L <= 99)
replace H3HR11L = . if (H3HR11L >= 96 & H3HR11L <= 99)
replace H3HR7M = . if (H3HR7M == 7)
replace H3HR8M = . if (H3HR8M >= 996 & H3HR8M <= 999)
replace H3HR9M = . if (H3HR9M >= 996 & H3HR9M <= 999)
replace H3HR10M = . if (H3HR10M >= 96 & H3HR10M <= 99)
replace H3HR11M = . if (H3HR11M >= 96 & H3HR11M <= 99)
replace H3HR7N = . if (H3HR7N == 7)
replace H3HR8N = . if (H3HR8N >= 996 & H3HR8N <= 999)
replace H3HR9N = . if (H3HR9N >= 996 & H3HR9N <= 999)
replace H3HR10N = . if (H3HR10N >= 96 & H3HR10N <= 99)
replace H3HR11N = . if (H3HR11N >= 96 & H3HR11N <= 99)
replace H3HR7O = . if (H3HR7O == 7)
replace H3HR8O = . if (H3HR8O >= 996 & H3HR8O <= 999)
replace H3HR9O = . if (H3HR9O >= 996 & H3HR9O <= 999)
replace H3HR10O = . if (H3HR10O >= 96 & H3HR10O <= 99)
replace H3HR11O = . if (H3HR11O >= 96 & H3HR11O <= 99)
replace H3HR7P = . if (H3HR7P == 7)
replace H3HR8P = . if (H3HR8P >= 996 & H3HR8P <= 999)
replace H3HR9P = . if (H3HR9P >= 996 & H3HR9P <= 999)
replace H3HR10P = . if (H3HR10P >= 96 & H3HR10P <= 99)
replace H3HR11P = . if (H3HR11P >= 96 & H3HR11P <= 99)
replace H3HR7Q = . if (H3HR7Q == 7)
replace H3HR8Q = . if (H3HR8Q >= 996 & H3HR8Q <= 999)
replace H3HR9Q = . if (H3HR9Q >= 996 & H3HR9Q <= 999)
replace H3HR10Q = . if (H3HR10Q >= 96 & H3HR10Q <= 99)
replace H3HR11Q = . if (H3HR11Q >= 96 & H3HR11Q <= 99)
replace H3HR7R = . if (H3HR7R == 7)
replace H3HR8R = . if (H3HR8R >= 996 & H3HR8R <= 999)
replace H3HR9R = . if (H3HR9R >= 996 & H3HR9R <= 999)
replace H3HR10R = . if (H3HR10R >= 96 & H3HR10R <= 99)
replace H3HR11R = . if (H3HR11R >= 96 & H3HR11R <= 99)
replace H3HR7S = . if (H3HR7S == 7)
replace H3HR8S = . if (H3HR8S >= 996 & H3HR8S <= 999)
replace H3HR9S = . if (H3HR9S >= 996 & H3HR9S <= 999)
replace H3HR10S = . if (H3HR10S >= 96 & H3HR10S <= 99)
replace H3HR11S = . if (H3HR11S >= 96 & H3HR11S <= 99)
replace H3HR12 = . if (H3HR12 >= 6 & H3HR12 <= 9)
replace H3HR13 = . if (H3HR13 == 97)
replace H3HR14 = . if (H3HR14 == 6 | H3HR14 == 7 | H3HR14 == 9)
replace H3HR15 = . if (H3HR15 == 97)
replace H3HR16 = . if (H3HR16 == 8 | H3HR16 == 9)
replace H3HR17M = . if (H3HR17M >= 96 & H3HR17M <= 99)
replace H3HR17Y = . if (H3HR17Y >= 9996 & H3HR17Y <= 9998)
replace H3HR18 = . if (H3HR18 >= 96 & H3HR18 <= 98)
replace H3HR19 = . if (H3HR19 == 7 | H3HR19 == 9)
replace H3HR20 = . if (H3HR20 == 97)
replace H3HR21M = . if (H3HR21M >= 97 & H3HR21M <= 99)
replace H3HR21Y = . if (H3HR21Y >= 9997 & H3HR21Y <= 9999)
replace H3HR22MA = . if (H3HR22MA >= 96 & H3HR22MA <= 99)
replace H3HR22YA = . if (H3HR22YA >= 9996 & H3HR22YA <= 9999)
replace H3HR22MB = . if (H3HR22MB >= 96 & H3HR22MB <= 99)
replace H3HR22YB = . if (H3HR22YB >= 9996 & H3HR22YB <= 9999)
replace H3HR22MC = . if (H3HR22MC >= 96 & H3HR22MC <= 99)
replace H3HR22YC = . if (H3HR22YC >= 9996 & H3HR22YC <= 9999)
replace H3HR22MD = . if (H3HR22MD >= 96 & H3HR22MD <= 99)
replace H3HR22YD = . if (H3HR22YD >= 9996 & H3HR22YD <= 9999)
replace H3HR22ME = . if (H3HR22ME >= 96 & H3HR22ME <= 99)
replace H3HR22YE = . if (H3HR22YE >= 9996 & H3HR22YE <= 9999)
replace H3HR22MF = . if (H3HR22MF >= 96 & H3HR22MF <= 99)
replace H3HR22YF = . if (H3HR22YF >= 9996 & H3HR22YF <= 9999)
replace H3HR22MG = . if (H3HR22MG >= 96 & H3HR22MG <= 99)
replace H3HR22YG = . if (H3HR22YG >= 9996 & H3HR22YG <= 9999)
replace H3HR23 = . if (H3HR23 == 8 | H3HR23 == 9)
replace H3HR24 = . if (H3HR24 >= 7 & H3HR24 <= 9)
replace H3HR25 = . if (H3HR25 == 8 | H3HR25 == 9)
replace H3HR26 = . if (H3HR26 == 6 | H3HR26 == 8 | H3HR26 == 9)
replace H3HR27 = . if (H3HR27 == 97)
replace H3HR28 = . if (H3HR28 == 7)
replace H3HR29 = . if (H3HR29 == 7)
replace H3HR30 = . if (H3HR30 == 7 | H3HR30 == 9)
replace H3WP1 = . if (H3WP1 == 7)
replace H3WP2 = . if (H3WP2 >= 5 & H3WP2 <= 9)
replace H3WP3M = . if (H3WP3M >= 95 & H3WP3M <= 99)
replace H3WP3Y = . if (H3WP3Y >= 9995 & H3WP3Y <= 9999)
replace H3WP4 = . if (H3WP4 == 7)
replace H3WP5 = . if (H3WP5 >= 5 & H3WP5 <= 9)
replace H3WP6M = . if (H3WP6M >= 95 & H3WP6M <= 99)
replace H3WP6Y = . if (H3WP6Y >= 9995 & H3WP6Y <= 9999)
replace H3WP7 = . if (H3WP7 == 6 | H3WP7 == 7 | H3WP7 == 9)
replace H3WP8 = . if (H3WP8 == 7 | H3WP8 == 8)
replace H3WP9 = . if (H3WP9 == 97 | H3WP9 == 98)
replace H3WP10M = . if (H3WP10M == 97 | H3WP10M == 98)
replace H3WP10Y = . if (H3WP10Y == 9997 | H3WP10Y == 9998)
replace H3WP11 = . if (H3WP11 == 6 | H3WP11 == 7 | H3WP11 == 9)
replace H3WP12 = . if (H3WP12 == 7 | H3WP12 == 8)
replace H3WP13 = . if (H3WP13 >= 96 & H3WP13 <= 98)
replace H3WP14M = . if (H3WP14M >= 96 & H3WP14M <= 98)
replace H3WP14Y = . if (H3WP14Y == 9996 | H3WP14Y == 9997 | H3WP14Y == 9998)
replace H3WP15 = . if (H3WP15 == 7 | H3WP15 == 8)
replace H3WP16 = . if (H3WP16 == 7 | H3WP16 == 9)
replace H3WP17 = . if (H3WP17 >= 6 & H3WP17 <= 8)
replace H3WP18 = . if (H3WP18 >= 97 & H3WP18 <= 99)
replace H3WP19 = . if (H3WP19 >= 97 & H3WP19 <= 99)
replace H3WP20 = . if (H3WP20 >= 97 & H3WP20 <= 99)
replace H3WP21 = . if (H3WP21 >= 7 & H3WP21 <= 9)
replace H3WP22 = . if (H3WP22 >= 6 & H3WP22 <= 8)
replace H3WP23 = . if (H3WP23 == 97 | H3WP23 == 98)
replace H3WP24 = . if (H3WP24 == 97 | H3WP24 == 98)
replace H3WP25 = . if (H3WP25 == 97 | H3WP25 == 98)
replace H3WP26 = . if (H3WP26 == 7)
replace H3WP27 = . if (H3WP27 >= 6 & H3WP27 <= 9)
replace H3WP28 = . if (H3WP28 >= 97 & H3WP28 <= 99)
replace H3WP29 = . if (H3WP29 == 7 | H3WP29 == 9)
replace H3WP30 = . if (H3WP30 == 97 | H3WP30 == 99)
replace H3WP31 = . if (H3WP31 == 97 | H3WP31 == 99)
replace H3WP32 = . if (H3WP32 == 97 | H3WP32 == 99)
replace H3WP33 = . if (H3WP33 == 7 | H3WP33 == 9)
replace H3WP34 = . if (H3WP34 >= 6 & H3WP34 <= 8)
replace H3WP35 = . if (H3WP35 >= 96 & H3WP35 <= 99)
replace H3WP36 = . if (H3WP36 == 7 | H3WP36 == 9)
replace H3WP37 = . if (H3WP37 >= 96 & H3WP37 <= 99)
replace H3WP38 = . if (H3WP38 >= 96 & H3WP38 <= 99)
replace H3WP39 = . if (H3WP39 == 97)
replace H3WP40 = . if (H3WP40 == 7)
replace H3WP41 = . if (H3WP41 >= 7 & H3WP41 <= 9)
replace H3WP42 = . if (H3WP42 >= 7 & H3WP42 <= 9)
replace H3WP43 = . if (H3WP43 == 7 | H3WP43 == 9)
replace H3WP44 = . if (H3WP44 == 97 | H3WP44 == 99)
replace H3WP45 = . if (H3WP45 == 97 | H3WP45 == 99)
replace H3WP46 = . if (H3WP46 == 97)
replace H3WP47 = . if (H3WP47 == 6 | H3WP47 == 7)
replace H3WP48 = . if (H3WP48 >= 7 & H3WP48 <= 9)
replace H3WP49 = . if (H3WP49 == 6 | H3WP49 == 7 | H3WP49 == 9)
replace H3WP50 = . if (H3WP50 == 7 | H3WP50 == 9)
replace H3WP51 = . if (H3WP51 >= 97 & H3WP51 <= 99)
replace H3WP52 = . if (H3WP52 >= 97 & H3WP52 <= 99)
replace H3WP53 = . if (H3WP53 == 97 | H3WP53 == 99)
replace H3WP54 = . if (H3WP54 >= 6 & H3WP54 <= 8)
replace H3WP55 = . if (H3WP55 >= 6 & H3WP55 <= 8)
replace H3WP56 = . if (H3WP56 >= 7 & H3WP56 <= 9)
replace H3WP57 = . if (H3WP57 >= 7 & H3WP57 <= 9)
replace H3WP58 = . if (H3WP58 == 7 | H3WP58 == 8)
replace H3WP59 = . if (H3WP59 == 7 | H3WP59 == 8)
replace H3WP60 = . if (H3WP60 == 7)
replace H3WP61 = . if (H3WP61 == 7)
replace H3WP62 = . if (H3WP62 == 97 | H3WP62 == 99)
replace H3WP63 = . if (H3WP63 == 97 | H3WP63 == 99)
replace H3WP64 = . if (H3WP64 == 97 | H3WP64 == 99)
replace H3WP65 = . if (H3WP65 == 7)
replace H3WP66 = . if (H3WP66 == 7 | H3WP66 == 8)
replace H3WP67 = . if (H3WP67 == 7)
replace H3WP68 = . if (H3WP68 == 7)
replace H3WP69 = . if (H3WP69 == 7)
replace H3WP70 = . if (H3WP70 == 97 | H3WP70 == 99)
replace H3WP71 = . if (H3WP71 == 97 | H3WP71 == 99)
replace H3WP72 = . if (H3WP72 == 97 | H3WP72 == 99)
replace H3WP73 = . if (H3WP73 == 6 | H3WP73 == 7)
replace H3RA1 = . if (H3RA1 == 6 | H3RA1 == 8)
replace H3RA2 = . if (H3RA2 == 6 | H3RA2 == 8)
replace H3RA3 = . if (H3RA3 == 6 | H3RA3 == 8 | H3RA3 == 9)
replace H3RA4 = . if (H3RA4 == 6 | H3RA4 == 8 | H3RA4 == 9)
replace H3RA5 = . if (H3RA5 == 6 | H3RA5 == 8 | H3RA5 == 9)
replace H3RA6 = . if (H3RA6 == 6 | H3RA6 == 8 | H3RA6 == 9)
replace H3RA7 = . if (H3RA7 == 6 | H3RA7 == 8)
replace H3RA8 = . if (H3RA8 == 6 | H3RA8 == 8 | H3RA8 == 9)
replace H3RA9 = . if (H3RA9 == 6 | H3RA9 == 8 | H3RA9 == 9)
replace H3RA10 = . if (H3RA10 == 6 | H3RA10 == 8)
replace H3RA11 = . if (H3RA11 == 6 | H3RA11 == 8 | H3RA11 == 9)
replace H3RA12 = . if (H3RA12 == 6 | H3RA12 == 8 | H3RA12 == 9)
replace H3RA13 = . if (H3RA13 == 6 | H3RA13 == 8 | H3RA13 == 9)
replace H3RA14 = . if (H3RA14 == 6 | H3RA14 == 8)
replace H3RA15 = . if (H3RA15 == 6 | H3RA15 == 8)
replace H3RA16 = . if (H3RA16 == 6 | H3RA16 == 8)
replace H3RA17 = . if (H3RA17 == 6 | H3RA17 == 8)
replace H3RA18 = . if (H3RA18 == 6 | H3RA18 == 8)
replace H3WS1A = . if (H3WS1A == 5 | H3WS1A == 8 | H3WS1A == 9)
replace H3WS2MA = . if (H3WS2MA == 95 | H3WS2MA == 97)
replace H3WS2YA = . if (H3WS2YA == 9995 | H3WS2YA == 9997)
replace H3WS3A = . if (H3WS3A == 95 | H3WS3A == 97)
replace H3WS4A = . if (H3WS4A == 5 | H3WS4A == 7 | H3WS4A == 8)
replace H3WS5A = . if (H3WS5A == 5 | H3WS5A == 7)
replace H3WS6A = . if (H3WS6A == 5 | H3WS6A == 7)
replace H3WS7A = . if (H3WS7A == 5 | H3WS7A == 7 | H3WS7A == 9)
replace H3WS8A = . if (H3WS8A == 95 | H3WS8A == 97 | H3WS8A == 98)
replace H3WS9A = . if (H3WS9A == 5 | H3WS9A == 7)
replace H3WS10A = . if (H3WS10A == 5 | H3WS10A == 7)
replace H3WS11A = . if (H3WS11A == 5 | H3WS11A == 7)
replace H3WS12A = . if (H3WS12A >= 5 & H3WS12A <= 9)
replace H3WS1B = . if (H3WS1B == 5 | H3WS1B == 7 | H3WS1B == 8)
replace H3WS2MB = . if (H3WS2MB == 95 | H3WS2MB == 97)
replace H3WS2YB = . if (H3WS2YB == 9995 | H3WS2YB == 9997)
replace H3WS3B = . if (H3WS3B == 95 | H3WS3B == 97)
replace H3WS4B = . if (H3WS4B == 5 | H3WS4B == 7)
replace H3WS5B = . if (H3WS5B == 5 | H3WS5B == 7)
replace H3WS6B = . if (H3WS6B == 5 | H3WS6B == 7)
replace H3WS7B = . if (H3WS7B == 5 | H3WS7B == 7)
replace H3WS8B = . if (H3WS8B == 95 | H3WS8B == 97 | H3WS8B == 98)
replace H3WS9B = . if (H3WS9B == 5 | H3WS9B == 7)
replace H3WS10B = . if (H3WS10B == 5 | H3WS10B == 7 | H3WS10B == 9)
replace H3WS11B = . if (H3WS11B == 5 | H3WS11B == 7 | H3WS11B == 9)
replace H3WS12B = . if (H3WS12B == 5 | H3WS12B == 7)
replace H3WS1C = . if (H3WS1C == 5 | H3WS1C == 7)
replace H3WS2MC = . if (H3WS2MC == 95 | H3WS2MC == 97)
replace H3WS2YC = . if (H3WS2YC == 9995 | H3WS2YC == 9997)
replace H3WS3C = . if (H3WS3C == 95 | H3WS3C == 97)
replace H3WS4C = . if (H3WS4C == 5 | H3WS4C == 7)
replace H3WS5C = . if (H3WS5C == 5 | H3WS5C == 7)
replace H3WS6C = . if (H3WS6C == 5 | H3WS6C == 7)
replace H3WS7C = . if (H3WS7C == 5 | H3WS7C == 7)
replace H3WS8C = . if (H3WS8C == 95 | H3WS8C == 97 | H3WS8C == 98)
replace H3WS9C = . if (H3WS9C == 5 | H3WS9C == 7)
replace H3WS10C = . if (H3WS10C == 5 | H3WS10C == 7)
replace H3WS11C = . if (H3WS11C == 5 | H3WS11C == 7)
replace H3WS12C = . if (H3WS12C == 5 | H3WS12C == 7)
replace H3WS1D = . if (H3WS1D == 5 | H3WS1D == 7)
replace H3WS2MD = . if (H3WS2MD == 95 | H3WS2MD == 97)
replace H3WS2YD = . if (H3WS2YD == 9995 | H3WS2YD == 9997)
replace H3WS3D = . if (H3WS3D == 95 | H3WS3D == 97)
replace H3WS4D = . if (H3WS4D == 5 | H3WS4D == 7)
replace H3WS5D = . if (H3WS5D == 5 | H3WS5D == 7)
replace H3WS6D = . if (H3WS6D == 5 | H3WS6D == 7)
replace H3WS7D = . if (H3WS7D == 5 | H3WS7D == 7)
replace H3WS8D = . if (H3WS8D == 95 | H3WS8D == 97)
replace H3WS9D = . if (H3WS9D == 5 | H3WS9D == 7)
replace H3WS10D = . if (H3WS10D == 5 | H3WS10D == 7)
replace H3WS11D = . if (H3WS11D == 5 | H3WS11D == 7)
replace H3WS12D = . if (H3WS12D == 5 | H3WS12D == 7)
replace H3FS1_A = . if (H3FS1_A == 5)
replace H3FS2_A = . if (H3FS2_A == 95 | H3FS2_A == 97 | H3FS2_A == 99)
replace H3FS3_A = . if (H3FS3_A == 95 | H3FS3_A == 97)
replace H3FS4_A = . if (H3FS4_A >= 95 & H3FS4_A <= 99)
replace H3FS5_A = . if (H3FS5_A >= 95 & H3FS5_A <= 99)
replace H3FS6_A = . if (H3FS6_A == 5 | H3FS6_A == 7 | H3FS6_A == 9)
replace H3FS7M_A = . if (H3FS7M_A == 95)
replace H3FS7M_A = . if (H3FS7M_A >= 97 & H3FS7M_A <= 99)
replace H3FS7Y_A = . if (H3FS7Y_A == 9995)
replace H3FS7Y_A = . if (H3FS7Y_A >= 9997 & H3FS7Y_A <= 9999)
replace H3FS8M_A = . if (H3FS8M_A == 95)
replace H3FS8M_A = . if (H3FS8M_A >= 97 & H3FS8M_A <= 99)
replace H3FS8Y_A = . if (H3FS8Y_A >= 9995 & H3FS8Y_A <= 9999)
replace H3FS9_A = . if (H3FS9_A == 95 | H3FS9_A == 97 | H3FS9_A == 99)
replace H3FS10_A = . if (H3FS10_A == 95 | H3FS10_A == 97 | H3FS10_A == 99)
replace H3FS1_B = . if (H3FS1_B == 5)
replace H3FS2_B = . if (H3FS2_B >= 95 & H3FS2_B <= 99)
replace H3FS3_B = . if (H3FS3_B == 95 | H3FS3_B == 97)
replace H3FS4_B = . if (H3FS4_B >= 95 & H3FS4_B <= 99)
replace H3FS5_B = . if (H3FS5_B >= 95 & H3FS5_B <= 99)
replace H3FS6_B = . if (H3FS6_B == 5 | H3FS6_B == 7)
replace H3FS7M_B = . if (H3FS7M_B >= 95 & H3FS7M_B <= 98)
replace H3FS7Y_B = . if (H3FS7Y_B >= 9995 & H3FS7Y_B <= 9998)
replace H3FS8M_B = . if (H3FS8M_B == 95 | H3FS8M_B == 97 | H3FS8M_B == 98)
replace H3FS8Y_B = . if (H3FS8Y_B == 9995 | H3FS8Y_B == 9997 | H3FS8Y_B == 9998)
replace H3FS9_B = . if (H3FS9_B == 95 | H3FS9_B == 97 | H3FS9_B == 98)
replace H3FS10_B = . if (H3FS10_B == 95 | H3FS10_B == 97 | H3FS10_B == 99)
replace H3FS1_C = . if (H3FS1_C == 5)
replace H3FS2_C = . if (H3FS2_C >= 95 & H3FS2_C <= 99)
replace H3FS3_C = . if (H3FS3_C == 95 | H3FS3_C == 97)
replace H3FS4_C = . if (H3FS4_C >= 95 & H3FS4_C <= 99)
replace H3FS5_C = . if (H3FS5_C >= 95 & H3FS5_C <= 99)
replace H3FS6_C = . if (H3FS6_C == 5 | H3FS6_C == 7 | H3FS6_C == 9)
replace H3FS7M_C = . if (H3FS7M_C >= 95 & H3FS7M_C <= 98)
replace H3FS7Y_C = . if (H3FS7Y_C >= 9995 & H3FS7Y_C <= 9998)
replace H3FS8M_C = . if (H3FS8M_C == 95 | H3FS8M_C == 97 | H3FS8M_C == 98)
replace H3FS8Y_C = . if (H3FS8Y_C == 9995 | H3FS8Y_C == 9997 | H3FS8Y_C == 9998)
replace H3FS9_C = . if (H3FS9_C == 95 | H3FS9_C == 97)
replace H3FS10_C = . if (H3FS10_C == 95 | H3FS10_C == 97)
replace H3FS1_D = . if (H3FS1_D == 5 | H3FS1_D == 9)
replace H3FS2_D = . if (H3FS2_D >= 95 & H3FS2_D <= 97)
replace H3FS3_D = . if (H3FS3_D == 95 | H3FS3_D == 97)
replace H3FS4_D = . if (H3FS4_D >= 95 & H3FS4_D <= 98)
replace H3FS5_D = . if (H3FS5_D >= 95 & H3FS5_D <= 98)
replace H3FS6_D = . if (H3FS6_D == 5 | H3FS6_D == 7)
replace H3FS7M_D = . if (H3FS7M_D >= 95 & H3FS7M_D <= 98)
replace H3FS7Y_D = . if (H3FS7Y_D >= 9995 & H3FS7Y_D <= 9998)
replace H3FS8M_D = . if (H3FS8M_D == 95 | H3FS8M_D == 97 | H3FS8M_D == 98)
replace H3FS8Y_D = . if (H3FS8Y_D == 9995 | H3FS8Y_D == 9997 | H3FS8Y_D == 9998)
replace H3FS9_D = . if (H3FS9_D == 95 | H3FS9_D == 97)
replace H3FS10_D = . if (H3FS10_D == 95 | H3FS10_D == 97)
replace H3FS1_E = . if (H3FS1_E == 5)
replace H3FS2_E = . if (H3FS2_E == 99)
replace H3FS2_E = . if (H3FS2_E >= 95 & H3FS2_E <= 97)
replace H3FS3_E = . if (H3FS3_E == 95 | H3FS3_E == 97)
replace H3FS4_E = . if (H3FS4_E >= 95 & H3FS4_E <= 99)
replace H3FS5_E = . if (H3FS5_E >= 95 & H3FS5_E <= 99)
replace H3FS6_E = . if (H3FS6_E == 5 | H3FS6_E == 7 | H3FS6_E == 9)
replace H3FS7M_E = . if (H3FS7M_E >= 95 & H3FS7M_E <= 98)
replace H3FS7Y_E = . if (H3FS7Y_E >= 9995 & H3FS7Y_E <= 9998)
replace H3FS8M_E = . if (H3FS8M_E >= 95 & H3FS8M_E <= 98)
replace H3FS8Y_E = . if (H3FS8Y_E >= 9995 & H3FS8Y_E <= 9998)
replace H3FS9_E = . if (H3FS9_E == 95 | H3FS9_E == 97 | H3FS9_E == 98)
replace H3FS10_E = . if (H3FS10_E >= 95 & H3FS10_E <= 99)
replace H3FS1_F = . if (H3FS1_F == 5)
replace H3FS2_F = . if (H3FS2_F == 95 | H3FS2_F == 97 | H3FS2_F == 99)
replace H3FS3_F = . if (H3FS3_F == 95 | H3FS3_F == 97)
replace H3FS4_F = . if (H3FS4_F >= 95 & H3FS4_F <= 99)
replace H3FS5_F = . if (H3FS5_F >= 95 & H3FS5_F <= 99)
replace H3FS6_F = . if (H3FS6_F == 5 | H3FS6_F == 7 | H3FS6_F == 8)
replace H3FS7M_F = . if (H3FS7M_F == 95 | H3FS7M_F == 97 | H3FS7M_F == 98)
replace H3FS7Y_F = . if (H3FS7Y_F == 9995 | H3FS7Y_F == 9997 | H3FS7Y_F == 9998)
replace H3FS8M_F = . if (H3FS8M_F == 95 | H3FS8M_F == 97 | H3FS8M_F == 98)
replace H3FS8Y_F = . if (H3FS8Y_F == 9995 | H3FS8Y_F == 9997 | H3FS8Y_F == 9998)
replace H3FS9_F = . if (H3FS9_F == 95)
replace H3FS9_F = . if (H3FS9_F >= 97 & H3FS9_F <= 99)
replace H3FS10_F = . if (H3FS10_F == 95 | H3FS10_F == 97)
replace H3FS1_G = . if (H3FS1_G == 5)
replace H3FS2_G = . if (H3FS2_G == 99)
replace H3FS2_G = . if (H3FS2_G >= 95 & H3FS2_G <= 97)
replace H3FS3_G = . if (H3FS3_G == 95 | H3FS3_G == 97)
replace H3FS4_G = . if (H3FS4_G >= 95 & H3FS4_G <= 99)
replace H3FS5_G = . if (H3FS5_G >= 95 & H3FS5_G <= 99)
replace H3FS6_G = . if (H3FS6_G >= 5 & H3FS6_G <= 7)
replace H3FS7M_G = . if (H3FS7M_G >= 95 & H3FS7M_G <= 98)
replace H3FS7Y_G = . if (H3FS7Y_G >= 9995 & H3FS7Y_G <= 9999)
replace H3FS8M_G = . if (H3FS8M_G >= 95 & H3FS8M_G <= 98)
replace H3FS8Y_G = . if (H3FS8Y_G >= 9995 & H3FS8Y_G <= 9999)
replace H3FS9_G = . if (H3FS9_G >= 95 & H3FS9_G <= 99)
replace H3FS10_G = . if (H3FS10_G >= 95 & H3FS10_G <= 99)
replace H3FS1_H = . if (H3FS1_H == 5 | H3FS1_H == 9)
replace H3FS2_H = . if (H3FS2_H >= 95 & H3FS2_H <= 99)
replace H3FS3_H = . if (H3FS3_H == 95 | H3FS3_H == 97)
replace H3FS4_H = . if (H3FS4_H >= 95 & H3FS4_H <= 99)
replace H3FS5_H = . if (H3FS5_H >= 95 & H3FS5_H <= 99)
replace H3FS6_H = . if (H3FS6_H == 5 | H3FS6_H == 7)
replace H3FS7M_H = . if (H3FS7M_H >= 95 & H3FS7M_H <= 98)
replace H3FS7Y_H = . if (H3FS7Y_H >= 9995 & H3FS7Y_H <= 9999)
replace H3FS8M_H = . if (H3FS8M_H >= 95 & H3FS8M_H <= 98)
replace H3FS8Y_H = . if (H3FS8Y_H >= 9995 & H3FS8Y_H <= 9999)
replace H3FS9_H = . if (H3FS9_H >= 95 & H3FS9_H <= 99)
replace H3FS10_H = . if (H3FS10_H >= 95 & H3FS10_H <= 99)
replace H3FS1_I = . if (H3FS1_I == 5 | H3FS1_I == 9)
replace H3FS2_I = . if (H3FS2_I >= 95 & H3FS2_I <= 99)
replace H3FS3_I = . if (H3FS3_I == 95 | H3FS3_I == 97)
replace H3FS4_I = . if (H3FS4_I >= 95 & H3FS4_I <= 99)
replace H3FS5_I = . if (H3FS5_I >= 95 & H3FS5_I <= 99)
replace H3FS6_I = . if (H3FS6_I == 5 | H3FS6_I == 7 | H3FS6_I == 9)
replace H3FS7M_I = . if (H3FS7M_I >= 95 & H3FS7M_I <= 99)
replace H3FS7Y_I = . if (H3FS7Y_I >= 9995 & H3FS7Y_I <= 9999)
replace H3FS8M_I = . if (H3FS8M_I >= 95 & H3FS8M_I <= 98)
replace H3FS8Y_I = . if (H3FS8Y_I >= 9995 & H3FS8Y_I <= 9999)
replace H3FS9_I = . if (H3FS9_I >= 95 & H3FS9_I <= 99)
replace H3FS10_I = . if (H3FS10_I >= 95 & H3FS10_I <= 99)
replace H3FS1_J = . if (H3FS1_J == 5 | H3FS1_J == 9)
replace H3FS2_J = . if (H3FS2_J == 95)
replace H3FS2_J = . if (H3FS2_J >= 97 & H3FS2_J <= 99)
replace H3FS3_J = . if (H3FS3_J == 95 | H3FS3_J == 97)
replace H3FS4_J = . if (H3FS4_J >= 95 & H3FS4_J <= 99)
replace H3FS5_J = . if (H3FS5_J >= 95 & H3FS5_J <= 99)
replace H3FS6_J = . if (H3FS6_J == 5 | H3FS6_J == 7)
replace H3FS7M_J = . if (H3FS7M_J >= 95 & H3FS7M_J <= 98)
replace H3FS7Y_J = . if (H3FS7Y_J >= 9995 & H3FS7Y_J <= 9999)
replace H3FS8M_J = . if (H3FS8M_J >= 95 & H3FS8M_J <= 98)
replace H3FS8Y_J = . if (H3FS8Y_J >= 9995 & H3FS8Y_J <= 9999)
replace H3FS9_J = . if (H3FS9_J >= 95 & H3FS9_J <= 99)
replace H3FS10_J = . if (H3FS10_J >= 95 & H3FS10_J <= 99)
replace H3FS11 = . if (H3FS11 == 95 | H3FS11 == 97 | H3FS11 == 98)
replace H3FS12 = . if (H3FS12 >= 5 & H3FS12 <= 9)
replace H3ED1 = . if (H3ED1 == 98 | H3ED1 == 99)
replace H3ED2 = . if (H3ED2 == 9)
replace H3ED3 = . if (H3ED3 == 8 | H3ED3 == 9)
replace H3ED7 = . if (H3ED7 == 9)
replace H3ED9 = . if (H3ED9 >= 6 & H3ED9 <= 8)
replace H3ED10 = . if (H3ED10 == 7)
replace H3ED11 = . if (H3ED11 >= 7 & H3ED11 <= 9)
replace H3ED12M = . if (H3ED12M >= 97 & H3ED12M <= 99)
replace H3ED12Y = . if (H3ED12Y >= 9996 & H3ED12Y <= 9999)
replace H3ED13M = . if (H3ED13M >= 96 & H3ED13M <= 99)
replace H3ED13Y = . if (H3ED13Y >= 9996 & H3ED13Y <= 9999)
replace H3ED14M = . if (H3ED14M >= 96 & H3ED14M <= 99)
replace H3ED14Y = . if (H3ED14Y >= 9996 & H3ED14Y <= 9999)
replace H3ED15M = . if (H3ED15M >= 96 & H3ED15M <= 99)
replace H3ED15Y = . if (H3ED15Y >= 9996 & H3ED15Y <= 9999)
replace H3ED16 = "" if (H3ED16 == "9999997" | H3ED16 == "9999999")
replace H3ED17 = "" if (H3ED17 == "9999997" | H3ED17 == "9999999")
replace H3ED18M = . if (H3ED18M == 97)
replace H3ED18Y = . if (H3ED18Y == 9997)
replace H3ED19 = "" if (H3ED19 == "9999997" | H3ED19 == "9999999")
replace H3ED20 = "" if (H3ED20 == "9999997" | H3ED20 == "9999999")
replace H3ED21M = . if (H3ED21M == 97)
replace H3ED21Y = . if (H3ED21Y == 9997)
replace H3ED22 = "" if (H3ED22 == "9999997" | H3ED22 == "9999999")
replace H3ED23 = . if (H3ED23 == 8 | H3ED23 == 9)
replace H3ED24M = . if (H3ED24M == 97 | H3ED24M == 98)
replace H3ED24Y = . if (H3ED24Y == 9997 | H3ED24Y == 9998)
replace H3ED25 = . if (H3ED25 == 7 | H3ED25 == 9)
replace H3ED26 = . if (H3ED26 >= 7 & H3ED26 <= 9)
replace H3ED27 = . if (H3ED27 >= 97 & H3ED27 <= 99)
replace H3ED28 = . if (H3ED28 == 7 | H3ED28 == 8)
replace H3ED29 = "" if (H3ED29 == "9999997" | H3ED29 == "9999999")
replace H3ED30 = "" if (H3ED30 == "9999997" | H3ED30 == "9999999")
replace H3ED31 = . if (H3ED31 == 8 | H3ED31 == 9)
replace H3ED32 = . if (H3ED32 == 97 | H3ED32 == 98)
replace H3ED33 = . if (H3ED33 == 8 | H3ED33 == 9)
replace H3ED34 = . if (H3ED34 == 7 | H3ED34 == 9)
replace H3ED35 = . if (H3ED35 == 7 | H3ED35 == 9)
replace H3ED36 = . if (H3ED36 == 7 | H3ED36 == 9)
replace H3ED37 = . if (H3ED37 == 7 | H3ED37 == 9)
replace H3ED38 = . if (H3ED38 == 7 | H3ED38 == 9)
replace H3ED39 = . if (H3ED39 == 7 | H3ED39 == 9)
replace H3ED40 = . if (H3ED40 == 7 | H3ED40 == 9)
replace H3ED41 = . if (H3ED41 == 7 | H3ED41 == 9)
replace H3ED42 = . if (H3ED42 == 7 | H3ED42 == 9)
replace H3ED43 = . if (H3ED43 == 8 | H3ED43 == 9)
replace H3ED44 = . if (H3ED44 == 97)
replace H3ED45_A = . if (H3ED45_A >= 96 & H3ED45_A <= 98)
replace H3ED46_A = . if (H3ED46_A >= 96 & H3ED46_A <= 99)
replace H3ED47_A = . if (H3ED47_A == 7 | H3ED47_A == 8)
replace H3ED48_A = . if (H3ED48_A == 7 | H3ED48_A == 8)
replace H3ED49MA = . if (H3ED49MA >= 96 & H3ED49MA <= 98)
replace H3ED49YA = . if (H3ED49YA >= 9996 & H3ED49YA <= 9998)
replace H3ED45_B = . if (H3ED45_B >= 96 & H3ED45_B <= 99)
replace H3ED46_B = . if (H3ED46_B >= 96 & H3ED46_B <= 99)
replace H3ED47_B = . if (H3ED47_B == 7 | H3ED47_B == 9)
replace H3ED48_B = . if (H3ED48_B == 7 | H3ED48_B == 9)
replace H3ED49MB = . if (H3ED49MB >= 97 & H3ED49MB <= 99)
replace H3ED49YB = . if (H3ED49YB >= 9997 & H3ED49YB <= 9999)
replace H3ED45_C = . if (H3ED45_C >= 96 & H3ED45_C <= 99)
replace H3ED46_C = . if (H3ED46_C >= 96 & H3ED46_C <= 99)
replace H3ED47_C = . if (H3ED47_C == 7 | H3ED47_C == 9)
replace H3ED48_C = . if (H3ED48_C == 7 | H3ED48_C == 9)
replace H3ED49MC = . if (H3ED49MC == 97 | H3ED49MC == 98)
replace H3ED49YC = . if (H3ED49YC == 9997)
replace H3ED45_D = . if (H3ED45_D >= 97 & H3ED45_D <= 99)
replace H3ED46_D = . if (H3ED46_D >= 97 & H3ED46_D <= 99)
replace H3ED47_D = . if (H3ED47_D == 7 | H3ED47_D == 9)
replace H3ED48_D = . if (H3ED48_D == 7 | H3ED48_D == 9)
replace H3ED49MD = . if (H3ED49MD == 97)
replace H3ED49YD = . if (H3ED49YD == 9997)
replace H3ED45_E = . if (H3ED45_E == 97 | H3ED45_E == 99)
replace H3ED46_E = . if (H3ED46_E == 97 | H3ED46_E == 99)
replace H3ED47_E = . if (H3ED47_E == 7 | H3ED47_E == 9)
replace H3ED48_E = . if (H3ED48_E == 7 | H3ED48_E == 9)
replace H3ED49ME = . if (H3ED49ME == 97)
replace H3ED49YE = . if (H3ED49YE == 9997)
replace H3ED45_F = . if (H3ED45_F == 97 | H3ED45_F == 99)
replace H3ED46_F = . if (H3ED46_F == 97 | H3ED46_F == 99)
replace H3ED47_F = . if (H3ED47_F == 7 | H3ED47_F == 9)
replace H3ED48_F = . if (H3ED48_F == 7 | H3ED48_F == 9)
replace H3ED49MF = . if (H3ED49MF == 97)
replace H3ED49YF = . if (H3ED49YF == 9997)
replace H3ED45_G = . if (H3ED45_G == 97 | H3ED45_G == 99)
replace H3ED46_G = . if (H3ED46_G == 97 | H3ED46_G == 99)
replace H3ED47_G = . if (H3ED47_G == 7 | H3ED47_G == 9)
replace H3ED48_G = . if (H3ED48_G == 7 | H3ED48_G == 9)
replace H3ED49MG = . if (H3ED49MG == 97)
replace H3ED49YG = . if (H3ED49YG == 9997)
replace H3ED45_H = . if (H3ED45_H == 97 | H3ED45_H == 99)
replace H3ED46_H = . if (H3ED46_H == 97 | H3ED46_H == 99)
replace H3ED47_H = . if (H3ED47_H == 7 | H3ED47_H == 9)
replace H3ED48_H = . if (H3ED48_H == 7 | H3ED48_H == 9)
replace H3ED49MH = . if (H3ED49MH == 97)
replace H3ED49YH = . if (H3ED49YH == 9997)
replace H3ED45_I = . if (H3ED45_I == 97 | H3ED45_I == 99)
replace H3ED46_I = . if (H3ED46_I == 97 | H3ED46_I == 99)
replace H3ED47_I = . if (H3ED47_I == 7 | H3ED47_I == 9)
replace H3ED48_I = . if (H3ED48_I == 7 | H3ED48_I == 9)
replace H3ED49MI = . if (H3ED49MI == 97)
replace H3ED49YI = . if (H3ED49YI == 9997)
replace H3ED45_J = . if (H3ED45_J == 97 | H3ED45_J == 99)
replace H3ED46_J = . if (H3ED46_J == 97 | H3ED46_J == 99)
replace H3ED47_J = . if (H3ED47_J == 7 | H3ED47_J == 9)
replace H3ED48_J = . if (H3ED48_J == 7 | H3ED48_J == 9)
replace H3ED49MJ = . if (H3ED49MJ == 97)
replace H3ED49YJ = . if (H3ED49YJ == 9997)
replace H3ED45_K = . if (H3ED45_K == 97 | H3ED45_K == 99)
replace H3ED46_K = . if (H3ED46_K == 97 | H3ED46_K == 99)
replace H3ED47_K = . if (H3ED47_K == 7 | H3ED47_K == 9)
replace H3ED48_K = . if (H3ED48_K == 7 | H3ED48_K == 9)
replace H3ED49MK = . if (H3ED49MK == 97)
replace H3ED49YK = . if (H3ED49YK == 9997)
replace H3ED45_L = . if (H3ED45_L == 97 | H3ED45_L == 99)
replace H3ED46_L = . if (H3ED46_L == 97 | H3ED46_L == 99)
replace H3ED47_L = . if (H3ED47_L == 7 | H3ED47_L == 9)
replace H3ED48_L = . if (H3ED48_L == 7 | H3ED48_L == 9)
replace H3ED49ML = . if (H3ED49ML == 97)
replace H3ED49YL = . if (H3ED49YL == 9997)
replace H3ED45_M = . if (H3ED45_M == 97 | H3ED45_M == 99)
replace H3ED46_M = . if (H3ED46_M == 97 | H3ED46_M == 99)
replace H3ED47_M = . if (H3ED47_M == 7 | H3ED47_M == 9)
replace H3ED48_M = . if (H3ED48_M == 7 | H3ED48_M == 9)
replace H3ED49MM = . if (H3ED49MM == 97)
replace H3ED49YM = . if (H3ED49YM == 9997)
replace H3ED45_N = . if (H3ED45_N == 97 | H3ED45_N == 99)
replace H3ED46_N = . if (H3ED46_N == 97 | H3ED46_N == 99)
replace H3ED47_N = . if (H3ED47_N == 7 | H3ED47_N == 9)
replace H3ED48_N = . if (H3ED48_N == 7 | H3ED48_N == 9)
replace H3ED49MN = . if (H3ED49MN == 97)
replace H3ED49YN = . if (H3ED49YN == 9997)
replace H3ED45_O = . if (H3ED45_O == 97 | H3ED45_O == 99)
replace H3ED46_O = . if (H3ED46_O == 97 | H3ED46_O == 99)
replace H3ED47_O = . if (H3ED47_O == 7 | H3ED47_O == 9)
replace H3ED48_O = . if (H3ED48_O == 7 | H3ED48_O == 9)
replace H3ED49MO = . if (H3ED49MO == 97)
replace H3ED49YO = . if (H3ED49YO == 9997)
replace H3LM1 = . if (H3LM1 == 8)
replace H3LM2 = . if (H3LM2 == 7 | H3LM2 == 8)
replace H3LM3 = . if (H3LM3 >= 6 & H3LM3 <= 8)
replace H3LM4M = . if (H3LM4M == 97 | H3LM4M == 98)
replace H3LM4Y = . if (H3LM4Y == 9997 | H3LM4Y == 9998)
replace H3LM5 = . if (H3LM5 == 7)
replace H3LM6M = . if (H3LM6M == 97)
replace H3LM6Y = . if (H3LM6Y == 9997)
replace H3LM7 = . if (H3LM7 == 7)
replace H3LM8 = . if (H3LM8 >= 7 & H3LM8 <= 9)
replace H3LM9 = . if (H3LM9 >= 96 & H3LM9 <= 98)
replace H3LM11A = "" if (H3LM11A == "9999997" | H3LM11A == "9999998" | H3LM11A == "9999999")
replace H3LM11B = "" if (H3LM11B == "9999997" | H3LM11B == "9999998" | H3LM11B == "9999999")
replace H3LM12 = . if (H3LM12 >= 6 & H3LM12 <= 8)
replace H3LM13M = . if (H3LM13M >= 96 & H3LM13M <= 99)
replace H3LM13Y = . if (H3LM13Y >= 9996 & H3LM13Y <= 9999)
replace H3LM14 = . if (H3LM14 == 97)
replace H3LM15M = . if (H3LM15M == 97)
replace H3LM15Y = . if (H3LM15Y >= 9996 & H3LM15Y <= 9999)
replace H3LM16 = . if (H3LM16 >= 97 & H3LM16 <= 99)
replace H3LM17 = . if (H3LM17 >= 96 & H3LM17 <= 99)
replace H3LM18 = . if (H3LM18 >= 996.00 & H3LM18 <= 998.00)
replace H3LM19 = . if (H3LM19 >= 996.00 & H3LM19 <= 998.00)
replace H3LM20 = . if (H3LM20 >= 99996.00 & H3LM20 <= 99999.00)
replace H3LM21 = . if (H3LM21 >= 99996.00 & H3LM21 <= 99999.00)
replace H3LM22 = . if (H3LM22 >= 99996.0 & H3LM22 <= 99999.0)
replace H3LM23 = . if (H3LM23 >= 99996.00 & H3LM23 <= 99999.00)
replace H3LM24 = . if (H3LM24 == 999997 | H3LM24 == 999998)
replace H3LM26B = "" if (H3LM26B == "9999997" | H3LM26B == "9999998" | H3LM26B == "9999999")
replace H3LM26C = "" if (H3LM26C == "9999997" | H3LM26C == "9999998" | H3LM26C == "9999999")
replace H3LM27 = . if (H3LM27 == 97 | H3LM27 == 99)
replace H3LM28 = . if (H3LM28 == 96 | H3LM28 == 97 | H3LM28 == 99)
replace H3LM29 = . if (H3LM29 >= 96 & H3LM29 <= 99)
replace H3LM30 = . if (H3LM30 >= 996.00 & H3LM30 <= 998.00)
replace H3LM31 = . if (H3LM31 >= 996.00 & H3LM31 <= 998.00)
replace H3LM32 = . if (H3LM32 >= 99996.00 & H3LM32 <= 99999.00)
replace H3LM33 = . if (H3LM33 >= 99996.00 & H3LM33 <= 99999.00)
replace H3LM34 = . if (H3LM34 >= 99996 & H3LM34 <= 99999)
replace H3LM35 = . if (H3LM35 >= 99996.00 & H3LM35 <= 99999.00)
replace H3LM36 = . if (H3LM36 == 99997)
replace H3LM37 = . if (H3LM37 == 6 | H3LM37 == 8 | H3LM37 == 9)
replace H3LM38 = . if (H3LM38 == 8 | H3LM38 == 9)
replace H3LM39 = . if (H3LM39 == 8 | H3LM39 == 9)
replace H3LM40M = . if (H3LM40M == 97)
replace H3LM40Y = . if (H3LM40Y == 9997)
replace H3LM41 = . if (H3LM41 == 97)
replace H3LM42 = . if (H3LM42 == 997 | H3LM42 == 999)
replace H3LM43 = . if (H3LM43 == 8 | H3LM43 == 9)
replace H3LM44A = . if (H3LM44A == 7)
replace H3LM44B = . if (H3LM44B == 7)
replace H3LM44C = . if (H3LM44C == 7)
replace H3LM44D = . if (H3LM44D == 7)
replace H3LM44E = . if (H3LM44E == 7)
replace H3LM45 = . if (H3LM45 == 97 | H3LM45 == 99)
replace H3LM46M = . if (H3LM46M == 97 | H3LM46M == 99)
replace H3LM46Y = . if (H3LM46Y == 9997 | H3LM46Y == 9999)
replace H3LM47 = . if (H3LM47 == 97 | H3LM47 == 99)
replace H3LM48M = . if (H3LM48M == 97)
replace H3LM48Y = . if (H3LM48Y == 9997)
replace H3LM49 = . if (H3LM49 == 97)
replace H3LM50M = . if (H3LM50M >= 97 & H3LM50M <= 99)
replace H3LM50Y = . if (H3LM50Y == 9997 | H3LM50Y == 9999)
replace H3LM51 = . if (H3LM51 == 97 | H3LM51 == 99)
replace H3LM52M = . if (H3LM52M == 97)
replace H3LM52Y = . if (H3LM52Y == 9997)
replace H3LM53 = . if (H3LM53 == 997)
replace H3LM54M = . if (H3LM54M == 97)
replace H3LM54Y = . if (H3LM54Y == 9997)
replace H3LM55 = . if (H3LM55 >= 6 & H3LM55 <= 8)
replace H3LM56 = . if (H3LM56 == 7)
replace H3LM57 = . if (H3LM57 == 7 | H3LM57 == 8)
replace H3LM58 = . if (H3LM58 >= 7 & H3LM58 <= 9)
replace H3LM59 = . if (H3LM59 >= 6 & H3LM59 <= 8)
replace H3LM60 = . if (H3LM60 == 7)
replace H3LM61 = . if (H3LM61 == 7 | H3LM61 == 8)
replace H3LM62 = . if (H3LM62 >= 7 & H3LM62 <= 9)
replace H3LM63 = . if (H3LM63 >= 6 & H3LM63 <= 8)
replace H3LM64 = . if (H3LM64 == 7 | H3LM64 == 9)
replace H3LM65 = . if (H3LM65 == 7 | H3LM65 == 8)
replace H3LM66 = . if (H3LM66 >= 7 & H3LM66 <= 9)
replace H3LM67 = . if (H3LM67 >= 6 & H3LM67 <= 9)
replace H3LM68 = . if (H3LM68 >= 6 & H3LM68 <= 9)
replace H3LM69 = . if (H3LM69 >= 6 & H3LM69 <= 9)
replace H3LM70 = . if (H3LM70 >= 6 & H3LM70 <= 9)
replace H3LM71 = . if (H3LM71 >= 6 & H3LM71 <= 9)
replace H3LM72 = . if (H3LM72 >= 6 & H3LM72 <= 9)
replace H3LM73 = . if (H3LM73 >= 6 & H3LM73 <= 9)
replace H3LM74 = . if (H3LM74 >= 6 & H3LM74 <= 9)
replace H3LM75 = . if (H3LM75 >= 6 & H3LM75 <= 9)
replace H3LM76 = . if (H3LM76 >= 6 & H3LM76 <= 9)
replace H3LM77 = . if (H3LM77 >= 6 & H3LM77 <= 9)
replace H3LM78 = . if (H3LM78 >= 6 & H3LM78 <= 9)
replace H3LM79 = . if (H3LM79 >= 6 & H3LM79 <= 9)
replace H3LM80 = . if (H3LM80 >= 6 & H3LM80 <= 9)
replace H3LM81 = . if (H3LM81 >= 6 & H3LM81 <= 9)
replace H3LM82 = . if (H3LM82 >= 6 & H3LM82 <= 9)
replace H3GH2 = . if (H3GH2 == 98 | H3GH2 == 99)
replace H3GH3 = . if (H3GH3 == 8 | H3GH3 == 9)
replace H3GH4A = . if (H3GH4A >= 6 & H3GH4A <= 9)
replace H3GH4B = . if (H3GH4B >= 6 & H3GH4B <= 9)
replace H3GH4C = . if (H3GH4C >= 6 & H3GH4C <= 9)
replace H3GH4D = . if (H3GH4D >= 6 & H3GH4D <= 9)
replace H3GH4E = . if (H3GH4E >= 6 & H3GH4E <= 9)
replace H3GH4F = . if (H3GH4F >= 6 & H3GH4F <= 9)
replace H3GH4G = . if (H3GH4G >= 6 & H3GH4G <= 9)
replace H3GH4H = . if (H3GH4H >= 6 & H3GH4H <= 9)
replace H3GH4I = . if (H3GH4I >= 6 & H3GH4I <= 9)
replace H3GH5 = . if (H3GH5 == 98)
replace H3GH6 = . if (H3GH6 == 6 | H3GH6 == 8 | H3GH6 == 9)
replace H3GH7 = . if (H3GH7 == 6 | H3GH7 == 8 | H3GH7 == 9)
replace H3GH8 = . if (H3GH8 == 6 | H3GH8 == 8 | H3GH8 == 9)
replace H3GH9A = . if (H3GH9A >= 6 & H3GH9A <= 9)
replace H3GH9B = . if (H3GH9B >= 6 & H3GH9B <= 9)
replace H3GH9C = . if (H3GH9C >= 6 & H3GH9C <= 9)
replace H3GH9D = . if (H3GH9D >= 6 & H3GH9D <= 9)
replace H3GH9E = . if (H3GH9E >= 6 & H3GH9E <= 9)
replace H3GH10 = . if (H3GH10 == 6 | H3GH10 == 8 | H3GH10 == 9)
replace H3GH11H = . if (H3GH11H >= 96 & H3GH11H <= 99)
replace H3GH11M = . if (H3GH11M >= 96 & H3GH11M <= 99)
replace H3GH12H = . if (H3GH12H >= 96 & H3GH12H <= 99)
replace H3GH12M = . if (H3GH12M >= 96 & H3GH12M <= 99)
replace H3GH13H = . if (H3GH13H >= 96 & H3GH13H <= 99)
replace H3GH13M = . if (H3GH13M >= 96 & H3GH13M <= 99)
replace H3GH14H = . if (H3GH14H >= 96 & H3GH14H <= 99)
replace H3GH14M = . if (H3GH14M >= 96 & H3GH14M <= 99)
replace H3GH15 = . if (H3GH15 == 8 | H3GH15 == 9)
replace H3GH16 = . if (H3GH16 == 8 | H3GH16 == 9)
replace H3GH17 = . if (H3GH17 == 6 | H3GH17 == 8)
replace H3GH18 = . if (H3GH18 == 98 | H3GH18 == 99)
replace H3GH19 = . if (H3GH19 == 98 | H3GH19 == 99)
replace H3GH20 = . if (H3GH20 == 8)
replace H3HS1 = . if (H3HS1 == 98 | H3HS1 == 99)
replace H3HS2 = . if (H3HS2 == 8 | H3HS2 == 9)
replace H3HS3 = . if (H3HS3 == 7 | H3HS3 == 8)
replace H3HS4A = . if (H3HS4A == 7)
replace H3HS4B = . if (H3HS4B == 7)
replace H3HS4C = . if (H3HS4C == 7)
replace H3HS4D = . if (H3HS4D == 7)
replace H3HS4E = . if (H3HS4E == 7)
replace H3HS4F = . if (H3HS4F == 7)
replace H3HS5 = . if (H3HS5 == 96 | H3HS5 == 98 | H3HS5 == 99)
replace H3HS6 = . if (H3HS6 == 6 | H3HS6 == 8)
replace H3HS7A = . if (H3HS7A == 7)
replace H3HS7B = . if (H3HS7B == 7)
replace H3HS7C = . if (H3HS7C == 7)
replace H3HS7D = . if (H3HS7D == 7)
replace H3HS7E = . if (H3HS7E == 7)
replace H3HS7F = . if (H3HS7F == 7)
replace H3HS7G = . if (H3HS7G == 7)
replace H3HS7H = . if (H3HS7H == 7)
replace H3HS7I = . if (H3HS7I == 7)
replace H3HS8A = . if (H3HS8A == 7 | H3HS8A == 9)
replace H3HS8B = . if (H3HS8B == 7)
replace H3HS8C = . if (H3HS8C == 7)
replace H3HS8D = . if (H3HS8D == 7)
replace H3HS8E = . if (H3HS8E == 7)
replace H3HS8F = . if (H3HS8F == 7)
replace H3HS8G = . if (H3HS8G == 7)
replace H3HS8H = . if (H3HS8H == 7)
replace H3HS8I = . if (H3HS8I == 7)
replace H3HS8J = . if (H3HS8J == 7)
replace H3HS8K = . if (H3HS8K == 7)
replace H3HS8L = . if (H3HS8L == 7)
replace H3HS8M = . if (H3HS8M == 7)
replace H3HS8N = . if (H3HS8N == 7)
replace H3HS8O = . if (H3HS8O == 7)
replace H3HS9 = . if (H3HS9 == 7 | H3HS9 == 8)
replace H3HS10 = . if (H3HS10 == 96 | H3HS10 == 98 | H3HS10 == 99)
replace H3HS11 = . if (H3HS11 == 96 | H3HS11 == 98 | H3HS11 == 99)
replace H3HS12 = . if (H3HS12 == 96 | H3HS12 == 98 | H3HS12 == 99)
replace H3HS13 = . if (H3HS13 == 96 | H3HS13 == 98 | H3HS13 == 99)
replace H3HS14 = . if (H3HS14 >= 97 & H3HS14 <= 99)
replace H3HS15 = . if (H3HS15 >= 97 & H3HS15 <= 99)
replace H3HS16 = . if (H3HS16 >= 96 & H3HS16 <= 99)
replace H3HS17 = . if (H3HS17 >= 6 & H3HS17 <= 9)
replace H3HS18 = . if (H3HS18 == 7 | H3HS18 == 8)
replace H3HS19 = . if (H3HS19 >= 7 & H3HS19 <= 9)
replace H3HS20 = . if (H3HS20 >= 96 & H3HS20 <= 99)
replace H3HS21 = . if (H3HS21 == 8 | H3HS21 == 9)
replace H3HS22 = . if (H3HS22 == 8 | H3HS22 == 9)
replace H3HS23 = . if (H3HS23 == 8 | H3HS23 == 9)
replace H3ID1 = . if (H3ID1 >= 6 & H3ID1 <= 9)
replace H3ID2 = . if (H3ID2 >= 6 & H3ID2 <= 9)
replace H3ID3 = . if (H3ID3 >= 6 & H3ID3 <= 9)
replace H3ID4 = . if (H3ID4 >= 6 & H3ID4 <= 9)
replace H3ID5 = . if (H3ID5 >= 6 & H3ID5 <= 9)
replace H3ID6 = . if (H3ID6 >= 6 & H3ID6 <= 9)
replace H3ID7 = . if (H3ID7 >= 6 & H3ID7 <= 9)
replace H3ID8 = . if (H3ID8 >= 6 & H3ID8 <= 9)
replace H3ID9 = . if (H3ID9 >= 6 & H3ID9 <= 9)
replace H3ID10 = . if (H3ID10 >= 6 & H3ID10 <= 9)
replace H3ID11 = . if (H3ID11 >= 6 & H3ID11 <= 9)
replace H3ID12 = . if (H3ID12 >= 6 & H3ID12 <= 9)
replace H3ID13 = . if (H3ID13 == 8)
replace H3ID14 = . if (H3ID14 == 8 | H3ID14 == 9)
replace H3ID15 = . if (H3ID15 == 8 | H3ID15 == 9)
replace H3ID16 = . if (H3ID16 == 8 | H3ID16 == 9)
replace H3ID17 = . if (H3ID17 == 97 | H3ID17 == 98)
replace H3ID18 = . if (H3ID18 == 7)
replace H3ID19 = . if (H3ID19 == 8 | H3ID19 == 9)
replace H3ID20 = . if (H3ID20 >= 9996 & H3ID20 <= 9999)
replace H3ID21 = . if (H3ID21 == 8 | H3ID21 == 9)
replace H3ID22 = . if (H3ID22 == 8 | H3ID22 == 9)
replace H3ID23 = . if (H3ID23 == 8 | H3ID23 == 9)
replace H3ID24 = . if (H3ID24 == 8 | H3ID24 == 9)
replace H3ID25 = . if (H3ID25 == 6 | H3ID25 == 8)
replace H3ID26A = . if (H3ID26A >= 6 & H3ID26A <= 9)
replace H3ID26B = . if (H3ID26B >= 6 & H3ID26B <= 9)
replace H3ID26C = . if (H3ID26C >= 6 & H3ID26C <= 9)
replace H3ID26D = . if (H3ID26D >= 6 & H3ID26D <= 9)
replace H3ID26E = . if (H3ID26E >= 6 & H3ID26E <= 9)
replace H3ID26F = . if (H3ID26F >= 6 & H3ID26F <= 9)
replace H3ID26G = . if (H3ID26G >= 6 & H3ID26G <= 9)
replace H3ID26H = . if (H3ID26H >= 6 & H3ID26H <= 9)
replace H3ID26I = . if (H3ID26I >= 6 & H3ID26I <= 9)
replace H3ID26J = . if (H3ID26J >= 6 & H3ID26J <= 9)
replace H3ID26K = . if (H3ID26K >= 6 & H3ID26K <= 9)
replace H3ID26L = . if (H3ID26L >= 6 & H3ID26L <= 9)
replace H3ID26M = . if (H3ID26M >= 6 & H3ID26M <= 9)
replace H3ID26N = . if (H3ID26N >= 6 & H3ID26N <= 9)
replace H3ID26O = . if (H3ID26O >= 6 & H3ID26O <= 9)
replace H3ID26P = . if (H3ID26P >= 6 & H3ID26P <= 9)
replace H3ID26Q = . if (H3ID26Q >= 6 & H3ID26Q <= 9)
replace H3ID26R = . if (H3ID26R >= 6 & H3ID26R <= 9)
replace H3ID27 = . if (H3ID27 == 996 | H3ID27 == 998)
replace H3ID28 = . if (H3ID28 >= 96 & H3ID28 <= 99)
replace H3ID29 = . if (H3ID29 == 996 | H3ID29 == 998)
replace H3ID30 = . if (H3ID30 == 97 | H3ID30 == 98)
replace H3ID31 = . if (H3ID31 == 97 | H3ID31 == 98)
replace H3ID32 = . if (H3ID32 == 997 | H3ID32 == 998)
replace H3ID33 = . if (H3ID33 == 8)
replace H3ID34A = . if (H3ID34A == 6 | H3ID34A == 8 | H3ID34A == 9)
replace H3ID34B = . if (H3ID34B == 6 | H3ID34B == 8 | H3ID34B == 9)
replace H3ID34C = . if (H3ID34C == 6 | H3ID34C == 8 | H3ID34C == 9)
replace H3ID34D = . if (H3ID34D == 6 | H3ID34D == 8 | H3ID34D == 9)
replace H3ID34E = . if (H3ID34E == 6 | H3ID34E == 8 | H3ID34E == 9)
replace H3ID34F = . if (H3ID34F == 6 | H3ID34F == 8 | H3ID34F == 9)
replace H3ID34G = . if (H3ID34G == 6 | H3ID34G == 8 | H3ID34G == 9)
replace H3ID34H = . if (H3ID34H == 6 | H3ID34H == 8 | H3ID34H == 9)
replace H3ID34I = . if (H3ID34I == 6 | H3ID34I == 8 | H3ID34I == 9)
replace H3ID34J = . if (H3ID34J == 6 | H3ID34J == 8 | H3ID34J == 9)
replace H3ID34K = . if (H3ID34K == 6 | H3ID34K == 8 | H3ID34K == 9)
replace H3ID34L = . if (H3ID34L == 6 | H3ID34L == 8 | H3ID34L == 9)
replace H3ID34M = . if (H3ID34M == 6 | H3ID34M == 8 | H3ID34M == 9)
replace H3ID34N = . if (H3ID34N == 6 | H3ID34N == 8 | H3ID34N == 9)
replace H3ID34O = . if (H3ID34O == 6 | H3ID34O == 8 | H3ID34O == 9)
replace H3ID35 = . if (H3ID35 == 8 | H3ID35 == 9)
replace H3ID36 = . if (H3ID36 == 7 | H3ID36 == 9)
replace H3ID37 = . if (H3ID37 == 6 | H3ID37 == 7 | H3ID37 == 9)
replace H3ID38 = . if (H3ID38 == 6)
replace H3ID38 = . if (H3ID38 >= 96 & H3ID38 <= 99)
replace H3ID39 = . if (H3ID39 == 6)
replace H3ID39 = . if (H3ID39 >= 96 & H3ID39 <= 99)
replace H3ID40 = . if (H3ID40 == 8 | H3ID40 == 9)
replace H3SP1 = . if (H3SP1 == 6)
replace H3SP2 = . if (H3SP2 == 6 | H3SP2 == 8)
replace H3SP3 = . if (H3SP3 == 96 | H3SP3 == 98)
replace H3SP4 = . if (H3SP4 == 96 | H3SP4 == 98 | H3SP4 == 99)
replace H3SP5 = . if (H3SP5 == 6 | H3SP5 == 8 | H3SP5 == 9)
replace H3SP6 = . if (H3SP6 == 6 | H3SP6 == 8 | H3SP6 == 9)
replace H3SP7 = . if (H3SP7 == 6 | H3SP7 == 8 | H3SP7 == 9)
replace H3SP8 = . if (H3SP8 == 6 | H3SP8 == 8 | H3SP8 == 9)
replace H3SP9 = . if (H3SP9 == 6 | H3SP9 == 8 | H3SP9 == 9)
replace H3SP10 = . if (H3SP10 == 6 | H3SP10 == 8 | H3SP10 == 9)
replace H3SP11 = . if (H3SP11 == 6 | H3SP11 == 8 | H3SP11 == 9)
replace H3SP12 = . if (H3SP12 == 6 | H3SP12 == 8 | H3SP12 == 9)
replace H3SP13 = . if (H3SP13 == 6 | H3SP13 == 8 | H3SP13 == 9)
replace H3SP14 = . if (H3SP14 == 96 | H3SP14 == 98 | H3SP14 == 99)
replace H3SP15 = . if (H3SP15 == 96 | H3SP15 == 98 | H3SP15 == 99)
replace H3SP16 = . if (H3SP16 == 96 | H3SP16 == 98 | H3SP16 == 99)
replace H3SP17 = . if (H3SP17 == 96 | H3SP17 == 98 | H3SP17 == 99)
replace H3SP18 = . if (H3SP18 == 96 | H3SP18 == 98 | H3SP18 == 99)
replace H3SP19 = . if (H3SP19 == 96 | H3SP19 == 98 | H3SP19 == 99)
replace H3SP20 = . if (H3SP20 == 96 | H3SP20 == 98 | H3SP20 == 99)
replace H3SP21 = . if (H3SP21 == 96 | H3SP21 == 98 | H3SP21 == 99)
replace H3SP22 = . if (H3SP22 == 96 | H3SP22 == 98 | H3SP22 == 99)
replace H3SP23 = . if (H3SP23 == 96 | H3SP23 == 98 | H3SP23 == 99)
replace H3SP24 = . if (H3SP24 == 96 | H3SP24 == 98 | H3SP24 == 99)
replace H3SP25 = . if (H3SP25 == 96 | H3SP25 == 98 | H3SP25 == 99)
replace H3SP26 = . if (H3SP26 == 96 | H3SP26 == 98 | H3SP26 == 99)
replace H3SP27 = . if (H3SP27 == 96 | H3SP27 == 98 | H3SP27 == 99)
replace H3MN1 = . if (H3MN1 == 8)
replace H3MN2 = . if (H3MN2 >= 97 & H3MN2 <= 99)
replace H3MN3 = . if (H3MN3 == 7 | H3MN3 == 8)
replace H3MN4 = . if (H3MN4 == 7 | H3MN4 == 9)
replace H3MN5 = . if (H3MN5 == 97 | H3MN5 == 98)
replace H3MN6 = . if (H3MN6 >= 96 & H3MN6 <= 98)
replace H3MN7 = . if (H3MN7 >= 7 & H3MN7 <= 9)
replace H3MN8 = . if (H3MN8 >= 96 & H3MN8 <= 99)
replace H3MN9 = . if (H3MN9 >= 97 & H3MN9 <= 99)
replace H3MN10 = . if (H3MN10 >= 97 & H3MN10 <= 99)
replace H3MN11 = . if (H3MN11 == 6 | H3MN11 == 7)
replace H3MN12M = . if (H3MN12M >= 96 & H3MN12M <= 99)
replace H3MN12Y = . if (H3MN12Y >= 9996 & H3MN12Y <= 9999)
replace H3MN14 = . if (H3MN14 == 96 | H3MN14 == 98 | H3MN14 == 99)
replace H3MN15 = . if (H3MN15 == 6 | H3MN15 == 8 | H3MN15 == 9)
replace H3MN16 = . if (H3MN16 == 6 | H3MN16 == 8 | H3MN16 == 9)
replace H3MN17 = . if (H3MN17 == 98 | H3MN17 == 99)
replace H3MN18 = . if (H3MN18 == 6 | H3MN18 == 8 | H3MN18 == 9)
replace H3MN19 = . if (H3MN19 >= 5 & H3MN19 <= 9)
replace H3MN20M = . if (H3MN20M >= 95 & H3MN20M <= 99)
replace H3MN20Y = . if (H3MN20Y >= 9995 & H3MN20Y <= 9999)
replace H3MN21 = . if (H3MN21 == 95 | H3MN21 == 97 | H3MN21 == 98)
replace H3MR1 = . if (H3MR1 == 6 | H3MR1 == 8)
replace H3MR_M_A = . if (H3MR_M_A == 7)
replace H3MR2M_A = . if (H3MR2M_A >= 97 & H3MR2M_A <= 99)
replace H3MR2Y_A = . if (H3MR2Y_A >= 9997 & H3MR2Y_A <= 9999)
replace H3MR3_A = . if (H3MR3_A == 7 | H3MR3_A == 8)
replace H3MR4_A = . if (H3MR4_A == 7 | H3MR4_A == 9)
replace H3MR5M_A = . if (H3MR5M_A >= 97 & H3MR5M_A <= 99)
replace H3MR5Y_A = . if (H3MR5Y_A == 9997 | H3MR5Y_A == 9999)
replace H3MR6_A = . if (H3MR6_A == 7)
replace H3MR7M_A = . if (H3MR7M_A == 97 | H3MR7M_A == 98)
replace H3MR7Y_A = . if (H3MR7Y_A == 9997 | H3MR7Y_A == 9998)
replace H3MR_M_B = . if (H3MR_M_B == 7)
replace H3MR2M_B = . if (H3MR2M_B == 97)
replace H3MR2Y_B = . if (H3MR2Y_B == 9997)
replace H3MR3_B = . if (H3MR3_B == 7)
replace H3MR4_B = . if (H3MR4_B == 7)
replace H3MR5M_B = . if (H3MR5M_B == 97)
replace H3MR5Y_B = . if (H3MR5Y_B == 9997)
replace H3MR6_B = . if (H3MR6_B == 7)
replace H3MR7M_B = . if (H3MR7M_B == 97)
replace H3MR7Y_B = . if (H3MR7Y_B == 9997)
replace H3MR_M_C = . if (H3MR_M_C == 7)
replace H3MR2M_C = . if (H3MR2M_C == 97)
replace H3MR2Y_C = . if (H3MR2Y_C == 9997)
replace H3MR3_C = . if (H3MR3_C == 7)
replace H3MR4_C = . if (H3MR4_C == 7)
replace H3MR5M_C = . if (H3MR5M_C == 97)
replace H3MR5Y_C = . if (H3MR5Y_C == 9997)
replace H3MR6_C = . if (H3MR6_C == 7)
replace H3MR7M_C = . if (H3MR7M_C == 97)
replace H3MR7Y_C = . if (H3MR7Y_C == 9997)
replace H3MR8 = . if (H3MR8 >= 6 & H3MR8 <= 9)
replace H3MR9 = . if (H3MR9 >= 96 & H3MR9 <= 99)
replace H3MR_C_A = . if (H3MR_C_A == 97)
replace H3MR10MA = . if (H3MR10MA >= 96 & H3MR10MA <= 98)
replace H3MR10YA = . if (H3MR10YA >= 9996 & H3MR10YA <= 9998)
replace H3MR11_A = . if (H3MR11_A == 7)
replace H3MR12MA = . if (H3MR12MA == 97 | H3MR12MA == 98)
replace H3MR12YA = . if (H3MR12YA == 9997)
replace H3MR13_A = . if (H3MR13_A >= 7 & H3MR13_A <= 9)
replace H3MR14_A = . if (H3MR14_A == 6 | H3MR14_A == 7 | H3MR14_A == 9)
replace H3MR15MA = . if (H3MR15MA >= 96 & H3MR15MA <= 99)
replace H3MR15YA = . if (H3MR15YA >= 9996 & H3MR15YA <= 9999)
replace H3MR_C_B = . if (H3MR_C_B == 97)
replace H3MR10MB = . if (H3MR10MB == 97 | H3MR10MB == 98)
replace H3MR10YB = . if (H3MR10YB == 9997 | H3MR10YB == 9998)
replace H3MR11_B = . if (H3MR11_B == 7)
replace H3MR12MB = . if (H3MR12MB == 97)
replace H3MR12YB = . if (H3MR12YB == 9997)
replace H3MR13_B = . if (H3MR13_B == 7)
replace H3MR14_B = . if (H3MR14_B >= 6 & H3MR14_B <= 9)
replace H3MR15MB = . if (H3MR15MB == 97 | H3MR15MB == 98)
replace H3MR15YB = . if (H3MR15YB == 9997 | H3MR15YB == 9998)
replace H3MR_C_C = . if (H3MR_C_C == 97)
replace H3MR10MC = . if (H3MR10MC == 97 | H3MR10MC == 98)
replace H3MR10YC = . if (H3MR10YC == 9997)
replace H3MR11_C = . if (H3MR11_C == 7)
replace H3MR12MC = . if (H3MR12MC == 97)
replace H3MR12YC = . if (H3MR12YC == 9997)
replace H3MR13_C = . if (H3MR13_C == 7)
replace H3MR14_C = . if (H3MR14_C == 6 | H3MR14_C == 7 | H3MR14_C == 9)
replace H3MR15MC = . if (H3MR15MC == 97 | H3MR15MC == 98)
replace H3MR15YC = . if (H3MR15YC == 9997 | H3MR15YC == 9998)
replace H3MR_C_D = . if (H3MR_C_D == 97)
replace H3MR10MD = . if (H3MR10MD == 97)
replace H3MR10YD = . if (H3MR10YD == 9997)
replace H3MR11_D = . if (H3MR11_D == 7)
replace H3MR12MD = . if (H3MR12MD == 97)
replace H3MR12YD = . if (H3MR12YD == 9997)
replace H3MR13_D = . if (H3MR13_D == 7)
replace H3MR14_D = . if (H3MR14_D == 7 | H3MR14_D == 9)
replace H3MR15MD = . if (H3MR15MD == 97)
replace H3MR15YD = . if (H3MR15YD == 9997)
replace H3MR_C_E = . if (H3MR_C_E == 97)
replace H3MR10ME = . if (H3MR10ME == 96 | H3MR10ME == 97)
replace H3MR10YE = . if (H3MR10YE == 9996 | H3MR10YE == 9997)
replace H3MR11_E = . if (H3MR11_E == 7)
replace H3MR12ME = . if (H3MR12ME == 97)
replace H3MR12YE = . if (H3MR12YE == 9997)
replace H3MR13_E = . if (H3MR13_E == 6 | H3MR13_E == 7)
replace H3MR14_E = . if (H3MR14_E == 7 | H3MR14_E == 8)
replace H3MR15ME = . if (H3MR15ME == 97)
replace H3MR15YE = . if (H3MR15YE == 9997)
replace H3MR_C_F = . if (H3MR_C_F == 97)
replace H3MR10MF = . if (H3MR10MF == 97 | H3MR10MF == 98)
replace H3MR10YF = . if (H3MR10YF == 9997 | H3MR10YF == 9998)
replace H3MR11_F = . if (H3MR11_F == 7)
replace H3MR12MF = . if (H3MR12MF == 97)
replace H3MR12YF = . if (H3MR12YF == 9997)
replace H3MR13_F = . if (H3MR13_F == 7 | H3MR13_F == 9)
replace H3MR14_F = . if (H3MR14_F == 7)
replace H3MR15MF = . if (H3MR15MF == 97)
replace H3MR15YF = . if (H3MR15YF == 9997)
replace H3MR_C_G = . if (H3MR_C_G == 97)
replace H3MR10MG = . if (H3MR10MG == 97)
replace H3MR10YG = . if (H3MR10YG == 9997)
replace H3MR11_G = . if (H3MR11_G == 7)
replace H3MR12MG = . if (H3MR12MG == 97)
replace H3MR12YG = . if (H3MR12YG == 9997)
replace H3MR13_G = . if (H3MR13_G == 7)
replace H3MR14_G = . if (H3MR14_G == 7)
replace H3MR15MG = . if (H3MR15MG == 97)
replace H3MR15YG = . if (H3MR15YG == 9997)
replace H3MR_C_H = . if (H3MR_C_H == 97)
replace H3MR10MH = . if (H3MR10MH == 97)
replace H3MR10YH = . if (H3MR10YH == 9997)
replace H3MR11_H = . if (H3MR11_H == 7)
replace H3MR12MH = . if (H3MR12MH == 97)
replace H3MR12YH = . if (H3MR12YH == 9997)
replace H3MR13_H = . if (H3MR13_H == 7)
replace H3MR14_H = . if (H3MR14_H == 7)
replace H3MR15MH = . if (H3MR15MH == 97)
replace H3MR15YH = . if (H3MR15YH == 9997)
replace H3MR_C_I = . if (H3MR_C_I == 97)
replace H3MR10MI = . if (H3MR10MI == 97)
replace H3MR10YI = . if (H3MR10YI == 9997)
replace H3MR11_I = . if (H3MR11_I == 7)
replace H3MR12MI = . if (H3MR12MI == 97)
replace H3MR12YI = . if (H3MR12YI == 9997)
replace H3MR13_I = . if (H3MR13_I == 6 | H3MR13_I == 7)
replace H3MR14_I = . if (H3MR14_I == 7)
replace H3MR15MI = . if (H3MR15MI == 97)
replace H3MR15YI = . if (H3MR15YI == 9997)
replace H3MR_C_J = . if (H3MR_C_J == 97)
replace H3MR10MJ = . if (H3MR10MJ == 97)
replace H3MR10YJ = . if (H3MR10YJ == 9997)
replace H3MR11_J = . if (H3MR11_J == 7)
replace H3MR12MJ = . if (H3MR12MJ == 97)
replace H3MR12YJ = . if (H3MR12YJ == 9997)
replace H3MR13_J = . if (H3MR13_J == 7)
replace H3MR14_J = . if (H3MR14_J == 7)
replace H3MR15MJ = . if (H3MR15MJ == 97)
replace H3MR15YJ = . if (H3MR15YJ == 9997)
replace H3MR16A = . if (H3MR16A == 96 | H3MR16A == 98 | H3MR16A == 99)
replace H3MR16B = . if (H3MR16B == 96 | H3MR16B == 98 | H3MR16B == 99)
replace H3MR16C = . if (H3MR16C == 96 | H3MR16C == 98 | H3MR16C == 99)
replace H3MR16D = . if (H3MR16D == 96 | H3MR16D == 98 | H3MR16D == 99)
replace H3MR16E = . if (H3MR16E == 96 | H3MR16E == 98 | H3MR16E == 99)
replace H3MR17 = . if (H3MR17 >= 97 & H3MR17 <= 99)
replace H3MR18 = . if (H3MR18 >= 6 & H3MR18 <= 9)
replace H3MR19 = . if (H3MR19 >= 6 & H3MR19 <= 9)
replace H3MR20 = . if (H3MR20 >= 6 & H3MR20 <= 9)
replace H3MR21 = . if (H3MR21 >= 6 & H3MR21 <= 9)
replace H3MR22 = . if (H3MR22 == 96 | H3MR22 == 98 | H3MR22 == 99)
replace H3EC1A = . if (H3EC1A == 6 | H3EC1A == 8 | H3EC1A == 9)
replace H3EC1B = . if (H3EC1B == 6 | H3EC1B == 8 | H3EC1B == 9)
replace H3EC1C = . if (H3EC1C == 6 | H3EC1C == 8 | H3EC1C == 9)
replace H3EC1D = . if (H3EC1D == 6 | H3EC1D == 8 | H3EC1D == 9)
replace H3EC1E = . if (H3EC1E == 6 | H3EC1E == 8 | H3EC1E == 9)
replace H3EC1F = . if (H3EC1F == 6 | H3EC1F == 8 | H3EC1F == 9)
replace H3EC1G = . if (H3EC1G == 6 | H3EC1G == 8 | H3EC1G == 9)
replace H3EC1H = . if (H3EC1H == 6 | H3EC1H == 8 | H3EC1H == 9)
replace H3EC2 = . if (H3EC2 >= 999996 & H3EC2 <= 999999)
replace H3EC3 = . if (H3EC3 >= 96 & H3EC3 <= 99)
replace H3EC4 = . if (H3EC4 >= 999996 & H3EC4 <= 999999)
replace H3EC5 = . if (H3EC5 >= 96 & H3EC5 <= 99)
replace H3EC6 = . if (H3EC6 >= 999996 & H3EC6 <= 999999)
replace H3EC7 = . if (H3EC7 >= 96 & H3EC7 <= 99)
replace H3EC8 = . if (H3EC8 >= 999996 & H3EC8 <= 999999)
replace H3EC9 = . if (H3EC9 >= 96 & H3EC9 <= 99)
replace H3EC10 = . if (H3EC10 == 6 | H3EC10 == 8 | H3EC10 == 9)
replace H3EC11 = . if (H3EC11 == 6 | H3EC11 == 8 | H3EC11 == 9)
replace H3EC12 = . if (H3EC12 == 6 | H3EC12 == 8)
replace H3EC13 = . if (H3EC13 >= 6 & H3EC13 <= 9)
replace H3EC14 = . if (H3EC14 >= 6 & H3EC14 <= 9)
replace H3EC15 = . if (H3EC15 >= 6 & H3EC15 <= 9)
replace H3EC16 = . if (H3EC16 >= 6 & H3EC16 <= 9)
replace H3EC17 = . if (H3EC17 >= 6 & H3EC17 <= 9)
replace H3EC18 = . if (H3EC18 >= 6 & H3EC18 <= 9)
replace H3EC19 = . if (H3EC19 >= 6 & H3EC19 <= 9)
replace H3EC20 = . if (H3EC20 >= 6 & H3EC20 <= 9)
replace H3EC21 = . if (H3EC21 >= 6 & H3EC21 <= 9)
replace H3EC22 = . if (H3EC22 >= 6 & H3EC22 <= 9)
replace H3EC23 = . if (H3EC23 >= 6 & H3EC23 <= 9)
replace H3EC24 = . if (H3EC24 >= 6 & H3EC24 <= 9)
replace H3EC25 = . if (H3EC25 >= 6 & H3EC25 <= 9)
replace H3EC26 = . if (H3EC26 >= 6 & H3EC26 <= 9)
replace H3EC27 = . if (H3EC27 >= 6 & H3EC27 <= 9)
replace H3EC28 = . if (H3EC28 >= 7 & H3EC28 <= 9)
replace H3EC29A = . if (H3EC29A >= 6 & H3EC29A <= 9)
replace H3EC29B = . if (H3EC29B >= 6 & H3EC29B <= 9)
replace H3EC29C = . if (H3EC29C >= 6 & H3EC29C <= 9)
replace H3EC29D = . if (H3EC29D >= 6 & H3EC29D <= 9)
replace H3EC29E = . if (H3EC29E >= 6 & H3EC29E <= 9)
replace H3EC29F = . if (H3EC29F >= 6 & H3EC29F <= 9)
replace H3EC29G = . if (H3EC29G >= 6 & H3EC29G <= 9)
replace H3EC29H = . if (H3EC29H >= 6 & H3EC29H <= 9)
replace H3EC30A = . if (H3EC30A >= 6 & H3EC30A <= 9)
replace H3EC30B = . if (H3EC30B >= 6 & H3EC30B <= 9)
replace H3EC30C = . if (H3EC30C >= 6 & H3EC30C <= 9)
replace H3EC30D = . if (H3EC30D >= 6 & H3EC30D <= 9)
replace H3EC30E = . if (H3EC30E >= 6 & H3EC30E <= 9)
replace H3EC30F = . if (H3EC30F >= 6 & H3EC30F <= 9)
replace H3EC31 = . if (H3EC31 >= 6 & H3EC31 <= 9)
replace H3EC32A = . if (H3EC32A >= 6 & H3EC32A <= 9)
replace H3EC32B = . if (H3EC32B >= 6 & H3EC32B <= 9)
replace H3EC32C = . if (H3EC32C >= 6 & H3EC32C <= 9)
replace H3EC32D = . if (H3EC32D >= 6 & H3EC32D <= 9)
replace H3EC33 = . if (H3EC33 >= 6 & H3EC33 <= 9)
replace H3EC34 = . if (H3EC34 >= 6 & H3EC34 <= 9)
replace H3EC35 = . if (H3EC35 >= 6 & H3EC35 <= 9)
replace H3EC36A = . if (H3EC36A >= 6 & H3EC36A <= 9)
replace H3EC36B = . if (H3EC36B >= 6 & H3EC36B <= 9)
replace H3EC36C = . if (H3EC36C >= 6 & H3EC36C <= 9)
replace H3EC36D = . if (H3EC36D >= 6 & H3EC36D <= 9)
replace H3EC36E = . if (H3EC36E >= 6 & H3EC36E <= 9)
replace H3EC36F = . if (H3EC36F >= 6 & H3EC36F <= 9)
replace H3EC36G = . if (H3EC36G >= 6 & H3EC36G <= 9)
replace H3EC36H = . if (H3EC36H >= 6 & H3EC36H <= 9)
replace H3EC37A = . if (H3EC37A >= 6 & H3EC37A <= 9)
replace H3EC37B = . if (H3EC37B >= 6 & H3EC37B <= 9)
replace H3EC37C = . if (H3EC37C >= 6 & H3EC37C <= 9)
replace H3EC37D = . if (H3EC37D >= 6 & H3EC37D <= 9)
replace H3EC37E = . if (H3EC37E >= 6 & H3EC37E <= 9)
replace H3EC37F = . if (H3EC37F >= 6 & H3EC37F <= 9)
replace H3EC38 = . if (H3EC38 >= 5 & H3EC38 <= 9)
replace H3EC39 = . if (H3EC39 == 7 | H3EC39 == 8)
replace H3EC40 = . if (H3EC40 == 7 | H3EC40 == 8)
replace H3EC41 = . if (H3EC41 == 7 | H3EC41 == 8)
replace H3EC42 = . if (H3EC42 == 7 | H3EC42 == 8)
replace H3EC43 = . if (H3EC43 == 7 | H3EC43 == 8)
replace H3EC44 = . if (H3EC44 == 7 | H3EC44 == 8)
replace H3EC45 = . if (H3EC45 == 7 | H3EC45 == 8)
replace H3EC46 = . if (H3EC46 == 7 | H3EC46 == 8)
replace H3EC47 = . if (H3EC47 >= 6 & H3EC47 <= 8)
replace H3EC48 = . if (H3EC48 == 7 | H3EC48 == 8)
replace H3EC49 = . if (H3EC49 == 7 | H3EC49 == 8)
replace H3EC50 = . if (H3EC50 == 7 | H3EC50 == 8)
replace H3EC51 = . if (H3EC51 == 7 | H3EC51 == 8)
replace H3EC52 = . if (H3EC52 == 7 | H3EC52 == 8)
replace H3EC53 = . if (H3EC53 == 6 | H3EC53 == 8)
replace H3EC54 = . if (H3EC54 == 6 | H3EC54 == 8)
replace H3EC55 = . if (H3EC55 == 6 | H3EC55 == 8)
replace H3EC56 = . if (H3EC56 >= 96 & H3EC56 <= 99)
replace H3EC57 = . if (H3EC57 >= 96 & H3EC57 <= 99)
replace H3EC58 = . if (H3EC58 >= 96 & H3EC58 <= 99)
replace H3EC59 = . if (H3EC59 >= 96 & H3EC59 <= 99)
replace H3EC60 = . if (H3EC60 >= 96 & H3EC60 <= 99)
replace H3EC61 = . if (H3EC61 >= 96 & H3EC61 <= 99)
replace H3EC62 = . if (H3EC62 == 6 | H3EC62 == 8 | H3EC62 == 9)
replace H3EC63 = . if (H3EC63 >= 96 & H3EC63 <= 99)
replace H3SE1 = . if (H3SE1 == 6 | H3SE1 == 8 | H3SE1 == 9)
replace H3SE2 = . if (H3SE2 >= 96 & H3SE2 <= 98)
replace H3SE3 = . if (H3SE3 >= 96 & H3SE3 <= 99)
replace H3SE4 = . if (H3SE4 >= 96 & H3SE4 <= 99)
replace H3SE5 = . if (H3SE5 >= 6 & H3SE5 <= 9)
replace H3SE6 = . if (H3SE6 >= 996 & H3SE6 <= 999)
replace H3SE7 = . if (H3SE7 >= 6 & H3SE7 <= 9)
replace H3SE8 = . if (H3SE8 >= 6 & H3SE8 <= 9)
replace H3SE9 = . if (H3SE9 >= 6 & H3SE9 <= 9)
replace H3SE10 = . if (H3SE10 >= 6 & H3SE10 <= 9)
replace H3SE11 = . if (H3SE11 >= 6 & H3SE11 <= 9)
replace H3SE12 = . if (H3SE12 >= 6 & H3SE12 <= 9)
replace H3SE13 = . if (H3SE13 == 96 | H3SE13 == 98 | H3SE13 == 99)
replace H3SE14 = . if (H3SE14 == 7 | H3SE14 == 8)
replace H3SE15 = . if (H3SE15 == 6 | H3SE15 == 8 | H3SE15 == 9)
replace H3SE16 = . if (H3SE16 == 7)
replace H3SE17 = . if (H3SE17 == 6 | H3SE17 == 8 | H3SE17 == 9)
replace H3SE18 = . if (H3SE18 == 7)
replace H3SE19 = . if (H3SE19 == 6 | H3SE19 == 8 | H3SE19 == 9)
replace H3SE20 = . if (H3SE20 >= 7 & H3SE20 <= 9)
replace H3SE21A = . if (H3SE21A == 6 | H3SE21A == 8 | H3SE21A == 9)
replace H3SE21B = . if (H3SE21B == 6 | H3SE21B == 8 | H3SE21B == 9)
replace H3SE21C = . if (H3SE21C == 6 | H3SE21C == 8 | H3SE21C == 9)
replace H3SE21D = . if (H3SE21D == 6 | H3SE21D == 8 | H3SE21D == 9)
replace H3SE21E = . if (H3SE21E == 6 | H3SE21E == 8 | H3SE21E == 9)
replace H3SE21F = . if (H3SE21F == 6 | H3SE21F == 8 | H3SE21F == 9)
replace H3SE21G = . if (H3SE21G == 6 | H3SE21G == 8 | H3SE21G == 9)
replace H3SE21H = . if (H3SE21H == 6 | H3SE21H == 8 | H3SE21H == 9)
replace H3SE21I = . if (H3SE21I == 6 | H3SE21I == 8 | H3SE21I == 9)
replace H3SE21J = . if (H3SE21J == 6 | H3SE21J == 8 | H3SE21J == 9)
replace H3SE21K = . if (H3SE21K == 6 | H3SE21K == 8 | H3SE21K == 9)
replace H3SE21L = . if (H3SE21L == 6 | H3SE21L == 8 | H3SE21L == 9)
replace H3SE21M = . if (H3SE21M == 6 | H3SE21M == 8 | H3SE21M == 9)
replace H3SE21N = . if (H3SE21N == 6 | H3SE21N == 8 | H3SE21N == 9)
replace H3SE22A = . if (H3SE22A == 6 | H3SE22A == 8 | H3SE22A == 9)
replace H3SE22B = . if (H3SE22B == 6 | H3SE22B == 8 | H3SE22B == 9)
replace H3SE22C = . if (H3SE22C == 6 | H3SE22C == 8 | H3SE22C == 9)
replace H3SE22D = . if (H3SE22D == 6 | H3SE22D == 8 | H3SE22D == 9)
replace H3SE22E = . if (H3SE22E == 6 | H3SE22E == 8 | H3SE22E == 9)
replace H3SE22F = . if (H3SE22F == 6 | H3SE22F == 8 | H3SE22F == 9)
replace H3SE22G = . if (H3SE22G == 6 | H3SE22G == 8 | H3SE22G == 9)
replace H3SE22H = . if (H3SE22H == 6 | H3SE22H == 8 | H3SE22H == 9)
replace H3SE22I = . if (H3SE22I == 6 | H3SE22I == 8 | H3SE22I == 9)
replace H3SE22J = . if (H3SE22J == 6 | H3SE22J == 8 | H3SE22J == 9)
replace H3SE23A = . if (H3SE23A == 6 | H3SE23A == 8 | H3SE23A == 9)
replace H3SE23B = . if (H3SE23B == 6 | H3SE23B == 8 | H3SE23B == 9)
replace H3SE23C = . if (H3SE23C == 6 | H3SE23C == 8 | H3SE23C == 9)
replace H3SE23D = . if (H3SE23D == 6 | H3SE23D == 8 | H3SE23D == 9)
replace H3SE23E = . if (H3SE23E == 6 | H3SE23E == 8 | H3SE23E == 9)
replace H3SE23F = . if (H3SE23F == 6 | H3SE23F == 8 | H3SE23F == 9)
replace H3SE24A = . if (H3SE24A == 6 | H3SE24A == 8 | H3SE24A == 9)
replace H3SE24B = . if (H3SE24B == 6 | H3SE24B == 8 | H3SE24B == 9)
replace H3SE24C = . if (H3SE24C == 6 | H3SE24C == 8 | H3SE24C == 9)
replace H3SE24D = . if (H3SE24D == 6 | H3SE24D == 8 | H3SE24D == 9)
replace H3SE24E = . if (H3SE24E == 6 | H3SE24E == 8 | H3SE24E == 9)
replace H3SE24F = . if (H3SE24F == 6 | H3SE24F == 8 | H3SE24F == 9)
replace H3SE25 = . if (H3SE25 == 6 | H3SE25 == 8 | H3SE25 == 9)
replace H3SE26 = . if (H3SE26 >= 96 & H3SE26 <= 99)
replace H3SE27A = . if (H3SE27A >= 6 & H3SE27A <= 9)
replace H3SE27B = . if (H3SE27B >= 6 & H3SE27B <= 9)
replace H3SE27C = . if (H3SE27C >= 6 & H3SE27C <= 9)
replace H3SE27D = . if (H3SE27D >= 6 & H3SE27D <= 9)
replace H3SE27E = . if (H3SE27E >= 6 & H3SE27E <= 9)
replace H3SE28 = . if (H3SE28 >= 5 & H3SE28 <= 9)
replace H3SE29A = . if (H3SE29A == 6 | H3SE29A == 8 | H3SE29A == 9)
replace H3SE29B = . if (H3SE29B == 6 | H3SE29B == 8 | H3SE29B == 9)
replace H3SE29C = . if (H3SE29C == 6 | H3SE29C == 8 | H3SE29C == 9)
replace H3SE29D = . if (H3SE29D == 6 | H3SE29D == 8 | H3SE29D == 9)
replace H3SE29E = . if (H3SE29E == 6 | H3SE29E == 8 | H3SE29E == 9)
replace H3SE29F = . if (H3SE29F == 6 | H3SE29F == 8 | H3SE29F == 9)
replace H3SE29G = . if (H3SE29G == 6 | H3SE29G == 8 | H3SE29G == 9)
replace H3SE30A = . if (H3SE30A == 6 | H3SE30A == 8 | H3SE30A == 9)
replace H3SE30B = . if (H3SE30B == 6 | H3SE30B == 8 | H3SE30B == 9)
replace H3SE31 = . if (H3SE31 >= 6 & H3SE31 <= 9)
replace H3SE32 = . if (H3SE32 >= 96 & H3SE32 <= 99)
replace H3SE33 = . if (H3SE33 >= 96 & H3SE33 <= 99)
replace H3SE34 = . if (H3SE34 >= 96 & H3SE34 <= 99)
replace H3SE35 = . if (H3SE35 >= 96 & H3SE35 <= 99)
replace H3SE36 = . if (H3SE36 >= 96 & H3SE36 <= 99)
replace H3SE37 = . if (H3SE37 >= 96 & H3SE37 <= 99)
replace H3BM1 = . if (H3BM1 >= 95 & H3BM1 <= 99)
replace H3BM2 = . if (H3BM2 >= 95 & H3BM2 <= 99)
replace H3BM3 = . if (H3BM3 >= 95 & H3BM3 <= 99)
replace H3BM4 = . if (H3BM4 >= 95 & H3BM4 <= 99)
replace H3BM5 = . if (H3BM5 >= 95 & H3BM5 <= 99)
replace H3BM6 = . if (H3BM6 >= 95 & H3BM6 <= 99)
replace H3BM7 = . if (H3BM7 >= 95 & H3BM7 <= 99)
replace H3BM8 = . if (H3BM8 >= 95 & H3BM8 <= 99)
replace H3BM9 = . if (H3BM9 >= 95 & H3BM9 <= 99)
replace H3BM10 = . if (H3BM10 >= 95 & H3BM10 <= 99)
replace H3BM11 = . if (H3BM11 >= 95 & H3BM11 <= 99)
replace H3BM12 = . if (H3BM12 >= 95 & H3BM12 <= 99)
replace H3BM13 = . if (H3BM13 >= 95 & H3BM13 <= 99)
replace H3BM14 = . if (H3BM14 >= 95 & H3BM14 <= 99)
replace H3BM15 = . if (H3BM15 >= 95 & H3BM15 <= 99)
replace H3BM16 = . if (H3BM16 >= 95 & H3BM16 <= 99)
replace H3BM17 = . if (H3BM17 >= 95 & H3BM17 <= 99)
replace H3BM18 = . if (H3BM18 >= 95 & H3BM18 <= 99)
replace H3BM19 = . if (H3BM19 >= 95 & H3BM19 <= 99)
replace H3BM20 = . if (H3BM20 >= 95 & H3BM20 <= 99)
replace H3BM21 = . if (H3BM21 >= 95 & H3BM21 <= 99)
replace H3BM22 = . if (H3BM22 >= 95 & H3BM22 <= 99)
replace H3BM23 = . if (H3BM23 >= 95 & H3BM23 <= 99)
replace H3BM24 = . if (H3BM24 >= 95 & H3BM24 <= 99)
replace H3BM25 = . if (H3BM25 >= 95 & H3BM25 <= 99)
replace H3BM26 = . if (H3BM26 >= 95 & H3BM26 <= 99)
replace H3BM27 = . if (H3BM27 >= 95 & H3BM27 <= 99)
replace H3BM28 = . if (H3BM28 >= 95 & H3BM28 <= 99)
replace H3BM29 = . if (H3BM29 >= 95 & H3BM29 <= 99)
replace H3BM30 = . if (H3BM30 >= 95 & H3BM30 <= 99)
replace H3BM31 = . if (H3BM31 >= 95 & H3BM31 <= 99)
replace H3BM32 = . if (H3BM32 >= 95 & H3BM32 <= 99)
replace H3BM33 = . if (H3BM33 >= 95 & H3BM33 <= 99)
replace H3BM34 = . if (H3BM34 >= 95 & H3BM34 <= 99)
replace H3BM35 = . if (H3BM35 >= 95 & H3BM35 <= 99)
replace H3BM36 = . if (H3BM36 >= 95 & H3BM36 <= 99)
replace H3BM37 = . if (H3BM37 >= 95 & H3BM37 <= 99)
replace H3BM38 = . if (H3BM38 >= 95 & H3BM38 <= 99)
replace H3PR1 = . if (H3PR1 >= 5 & H3PR1 <= 9)
replace H3PR2 = . if (H3PR2 >= 5 & H3PR2 <= 9)
replace H3PR3 = . if (H3PR3 >= 5 & H3PR3 <= 9)
replace H3PR4 = . if (H3PR4 >= 5 & H3PR4 <= 9)
replace H3PR5 = . if (H3PR5 >= 5 & H3PR5 <= 9)
replace H3PR6 = . if (H3PR6 >= 5 & H3PR6 <= 9)
replace H3PR7 = . if (H3PR7 >= 5 & H3PR7 <= 9)
replace H3DS1 = . if (H3DS1 == 6 | H3DS1 == 8 | H3DS1 == 9)
replace H3DS2 = . if (H3DS2 == 6 | H3DS2 == 8 | H3DS2 == 9)
replace H3DS3 = . if (H3DS3 == 6 | H3DS3 == 8 | H3DS3 == 9)
replace H3DS4 = . if (H3DS4 == 6 | H3DS4 == 8 | H3DS4 == 9)
replace H3DS5 = . if (H3DS5 == 6 | H3DS5 == 8 | H3DS5 == 9)
replace H3DS6 = . if (H3DS6 == 6 | H3DS6 == 8 | H3DS6 == 9)
replace H3DS7 = . if (H3DS7 == 6 | H3DS7 == 8 | H3DS7 == 9)
replace H3DS8 = . if (H3DS8 == 6 | H3DS8 == 8 | H3DS8 == 9)
replace H3DS9 = . if (H3DS9 == 6 | H3DS9 == 8 | H3DS9 == 9)
replace H3DS10 = . if (H3DS10 == 6 | H3DS10 == 8 | H3DS10 == 9)
replace H3DS11 = . if (H3DS11 == 6 | H3DS11 == 8 | H3DS11 == 9)
replace H3DS12 = . if (H3DS12 == 6 | H3DS12 == 8 | H3DS12 == 9)
replace H3DS13 = . if (H3DS13 == 6 | H3DS13 == 8 | H3DS13 == 9)
replace H3DS14 = . if (H3DS14 == 6 | H3DS14 == 8 | H3DS14 == 9)
replace H3DS15 = . if (H3DS15 >= 96 & H3DS15 <= 99)
replace H3DS16 = . if (H3DS16 == 96 | H3DS16 == 98 | H3DS16 == 99)
replace H3DS17 = . if (H3DS17 == 996 | H3DS17 == 998 | H3DS17 == 999)
replace H3DS18A = . if (H3DS18A == 6 | H3DS18A == 8 | H3DS18A == 9)
replace H3DS18B = . if (H3DS18B == 6 | H3DS18B == 8 | H3DS18B == 9)
replace H3DS18C = . if (H3DS18C == 6 | H3DS18C == 8 | H3DS18C == 9)
replace H3DS18D = . if (H3DS18D == 6 | H3DS18D == 8 | H3DS18D == 9)
replace H3DS18E = . if (H3DS18E == 6 | H3DS18E == 8 | H3DS18E == 9)
replace H3DS18F = . if (H3DS18F == 6 | H3DS18F == 8 | H3DS18F == 9)
replace H3DS18G = . if (H3DS18G == 6 | H3DS18G == 8 | H3DS18G == 9)
replace H3DS18H = . if (H3DS18H == 6 | H3DS18H == 8 | H3DS18H == 9)
replace H3DS18I = . if (H3DS18I == 6 | H3DS18I == 8 | H3DS18I == 9)
replace H3CJ1 = . if (H3CJ1 == 6 | H3CJ1 == 8 | H3CJ1 == 9)
replace H3CJ2 = . if (H3CJ2 >= 96 & H3CJ2 <= 99)
replace H3CJ3 = . if (H3CJ3 >= 6 & H3CJ3 <= 9)
replace H3CJ4 = . if (H3CJ4 >= 96 & H3CJ4 <= 99)
replace H3CJ5 = . if (H3CJ5 >= 96 & H3CJ5 <= 99)
replace H3CJ6 = . if (H3CJ6 >= 6 & H3CJ6 <= 9)
replace H3CJ7 = . if (H3CJ7 >= 6 & H3CJ7 <= 9)
replace H3CJ8 = . if (H3CJ8 >= 6 & H3CJ8 <= 9)
replace H3CJ9 = . if (H3CJ9 >= 6 & H3CJ9 <= 9)
replace H3CJ10 = . if (H3CJ10 >= 6 & H3CJ10 <= 9)
replace H3CJ11 = . if (H3CJ11 >= 6 & H3CJ11 <= 9)
replace H3CJ12 = . if (H3CJ12 >= 6 & H3CJ12 <= 9)
replace H3CJ13 = . if (H3CJ13 >= 6 & H3CJ13 <= 9)
replace H3CJ14 = . if (H3CJ14 >= 6 & H3CJ14 <= 9)
replace H3CJ15 = . if (H3CJ15 >= 6 & H3CJ15 <= 9)
replace H3CJ16 = . if (H3CJ16 >= 6 & H3CJ16 <= 9)
replace H3CJ17 = . if (H3CJ17 >= 6 & H3CJ17 <= 9)
replace H3CJ18 = . if (H3CJ18 >= 6 & H3CJ18 <= 9)
replace H3CJ19 = . if (H3CJ19 >= 6 & H3CJ19 <= 9)
replace H3CJ20 = . if (H3CJ20 >= 6 & H3CJ20 <= 9)
replace H3CJ21 = . if (H3CJ21 >= 6 & H3CJ21 <= 9)
replace H3CJ22 = . if (H3CJ22 >= 6 & H3CJ22 <= 9)
replace H3CJ23 = . if (H3CJ23 >= 96 & H3CJ23 <= 98)
replace H3CJ24 = . if (H3CJ24 >= 96 & H3CJ24 <= 98)
replace H3CJ25M = . if (H3CJ25M >= 96 & H3CJ25M <= 99)
replace H3CJ25Y = . if (H3CJ25Y >= 9996 & H3CJ25Y <= 9999)
replace H3CJ26 = . if (H3CJ26 >= 6 & H3CJ26 <= 8)
replace H3CJ27 = . if (H3CJ27 >= 6 & H3CJ27 <= 8)
replace H3CJ28 = . if (H3CJ28 >= 6 & H3CJ28 <= 8)
replace H3CJ29 = . if (H3CJ29 >= 6 & H3CJ29 <= 8)
replace H3CJ30 = . if (H3CJ30 >= 6 & H3CJ30 <= 8)
replace H3CJ31 = . if (H3CJ31 >= 6 & H3CJ31 <= 8)
replace H3CJ32 = . if (H3CJ32 >= 6 & H3CJ32 <= 8)
replace H3CJ33 = . if (H3CJ33 >= 6 & H3CJ33 <= 8)
replace H3CJ34 = . if (H3CJ34 >= 6 & H3CJ34 <= 8)
replace H3CJ35 = . if (H3CJ35 >= 6 & H3CJ35 <= 8)
replace H3CJ36 = . if (H3CJ36 >= 6 & H3CJ36 <= 8)
replace H3CJ37 = . if (H3CJ37 >= 6 & H3CJ37 <= 8)
replace H3CJ38 = . if (H3CJ38 >= 6 & H3CJ38 <= 8)
replace H3CJ39 = . if (H3CJ39 >= 6 & H3CJ39 <= 8)
replace H3CJ40 = . if (H3CJ40 >= 6 & H3CJ40 <= 8)
replace H3CJ41 = . if (H3CJ41 >= 6 & H3CJ41 <= 8)
replace H3CJ42 = . if (H3CJ42 >= 6 & H3CJ42 <= 9)
replace H3CJ43A = . if (H3CJ43A >= 97 & H3CJ43A <= 99)
replace H3CJ43B = . if (H3CJ43B == 97 | H3CJ43B == 98)
replace H3CJ44 = . if (H3CJ44 == 7 | H3CJ44 == 8)
replace H3CJ45 = . if (H3CJ45 == 7)
replace H3CJ46 = . if (H3CJ46 == 7)
replace H3CJ47 = . if (H3CJ47 == 7)
replace H3CJ48 = . if (H3CJ48 == 7)
replace H3CJ49 = . if (H3CJ49 == 7)
replace H3CJ50 = . if (H3CJ50 == 7)
replace H3CJ51 = . if (H3CJ51 == 7)
replace H3CJ52 = . if (H3CJ52 == 7)
replace H3CJ53 = . if (H3CJ53 == 7)
replace H3CJ54 = . if (H3CJ54 == 7)
replace H3CJ55 = . if (H3CJ55 == 7)
replace H3CJ56 = . if (H3CJ56 == 7)
replace H3CJ57 = . if (H3CJ57 == 7)
replace H3CJ58 = . if (H3CJ58 == 7)
replace H3CJ59 = . if (H3CJ59 == 7)
replace H3CJ60 = . if (H3CJ60 == 7)
replace H3CJ61 = . if (H3CJ61 == 7)
replace H3CJ62 = . if (H3CJ62 >= 7 & H3CJ62 <= 9)
replace H3CJ63A = . if (H3CJ63A == 97)
replace H3CJ63B = . if (H3CJ63B == 97)
replace H3CJ64A = . if (H3CJ64A == 97)
replace H3CJ64B = . if (H3CJ64B == 97)
replace H3CJ65 = . if (H3CJ65 == 7 | H3CJ65 == 9)
replace H3CJ66 = . if (H3CJ66 == 7 | H3CJ66 == 9)
replace H3CJ67 = . if (H3CJ67 == 7 | H3CJ67 == 9)
replace H3CJ68 = . if (H3CJ68 >= 996 & H3CJ68 <= 999)
replace H3CJ69 = . if (H3CJ69 == 6 | H3CJ69 == 7 | H3CJ69 == 9)
replace H3CJ70 = . if (H3CJ70 == 6 | H3CJ70 == 7 | H3CJ70 == 9)
replace H3CJ71 = . if (H3CJ71 == 6 | H3CJ71 == 7 | H3CJ71 == 9)
replace H3CJ72 = . if (H3CJ72 == 6 | H3CJ72 == 7 | H3CJ72 == 9)
replace H3CJ73 = . if (H3CJ73 == 6 | H3CJ73 == 7 | H3CJ73 == 9)
replace H3CJ74 = . if (H3CJ74 == 6 | H3CJ74 == 7 | H3CJ74 == 9)
replace H3CJ75 = . if (H3CJ75 == 6 | H3CJ75 == 7 | H3CJ75 == 9)
replace H3CJ76 = . if (H3CJ76 == 6 | H3CJ76 == 7 | H3CJ76 == 9)
replace H3CJ77 = . if (H3CJ77 == 6 | H3CJ77 == 7 | H3CJ77 == 9)
replace H3CJ78 = . if (H3CJ78 == 6 | H3CJ78 == 7 | H3CJ78 == 9)
replace H3CJ79 = . if (H3CJ79 == 6 | H3CJ79 == 7 | H3CJ79 == 9)
replace H3CJ80 = . if (H3CJ80 == 6 | H3CJ80 == 7 | H3CJ80 == 9)
replace H3CJ81 = . if (H3CJ81 == 6 | H3CJ81 == 7 | H3CJ81 == 9)
replace H3CJ82 = . if (H3CJ82 == 6 | H3CJ82 == 7 | H3CJ82 == 9)
replace H3CJ83 = . if (H3CJ83 == 6 | H3CJ83 == 7 | H3CJ83 == 9)
replace H3CJ84 = . if (H3CJ84 == 6 | H3CJ84 == 7 | H3CJ84 == 9)
replace H3CJ85 = . if (H3CJ85 == 6 | H3CJ85 == 7 | H3CJ85 == 9)
replace H3CJ86 = . if (H3CJ86 >= 6 & H3CJ86 <= 8)
replace H3CJ87 = . if (H3CJ87 >= 96 & H3CJ87 <= 98)
replace H3CJ88 = . if (H3CJ88 >= 96 & H3CJ88 <= 99)
replace H3CJ89M = . if (H3CJ89M >= 96 & H3CJ89M <= 99)
replace H3CJ89Y = . if (H3CJ89Y >= 9996 & H3CJ89Y <= 9999)
replace H3CJ90 = . if (H3CJ90 == 6 | H3CJ90 == 7)
replace H3CJ91 = . if (H3CJ91 == 6 | H3CJ91 == 7)
replace H3CJ92 = . if (H3CJ92 == 6 | H3CJ92 == 7)
replace H3CJ93 = . if (H3CJ93 == 6 | H3CJ93 == 7)
replace H3CJ94 = . if (H3CJ94 == 6 | H3CJ94 == 7)
replace H3CJ95 = . if (H3CJ95 == 6 | H3CJ95 == 7)
replace H3CJ96 = . if (H3CJ96 == 6 | H3CJ96 == 7)
replace H3CJ97 = . if (H3CJ97 == 6 | H3CJ97 == 7)
replace H3CJ98 = . if (H3CJ98 == 6 | H3CJ98 == 7)
replace H3CJ99 = . if (H3CJ99 == 6 | H3CJ99 == 7)
replace H3CJ100 = . if (H3CJ100 == 6 | H3CJ100 == 7)
replace H3CJ101 = . if (H3CJ101 == 6 | H3CJ101 == 7)
replace H3CJ102 = . if (H3CJ102 == 6 | H3CJ102 == 7)
replace H3CJ103 = . if (H3CJ103 == 6 | H3CJ103 == 7)
replace H3CJ104 = . if (H3CJ104 == 6 | H3CJ104 == 7)
replace H3CJ105 = . if (H3CJ105 == 6 | H3CJ105 == 7)
replace H3CJ106 = . if (H3CJ106 == 6 | H3CJ106 == 7)
replace H3CJ107 = . if (H3CJ107 >= 6 & H3CJ107 <= 9)
replace H3CJ108A = . if (H3CJ108A >= 97 & H3CJ108A <= 99)
replace H3CJ108B = . if (H3CJ108B >= 997 & H3CJ108B <= 999)
replace H3CJ109A = . if (H3CJ109A >= 97 & H3CJ109A <= 99)
replace H3CJ109B = . if (H3CJ109B >= 97 & H3CJ109B <= 99)
replace H3CJ110 = . if (H3CJ110 >= 6 & H3CJ110 <= 9)
replace H3CJ111 = . if (H3CJ111 == 7)
replace H3CJ112M = . if (H3CJ112M >= 97 & H3CJ112M <= 99)
replace H3CJ112Y = . if (H3CJ112Y >= 9997 & H3CJ112Y <= 9999)
replace H3CJ113 = . if (H3CJ113 >= 6 & H3CJ113 <= 8)
replace H3CJ114 = . if (H3CJ114 >= 6 & H3CJ114 <= 8)
replace H3CJ115 = . if (H3CJ115 >= 6 & H3CJ115 <= 8)
replace H3CJ116 = . if (H3CJ116 >= 6 & H3CJ116 <= 8)
replace H3CJ117 = . if (H3CJ117 >= 6 & H3CJ117 <= 8)
replace H3CJ118 = . if (H3CJ118 >= 6 & H3CJ118 <= 8)
replace H3CJ119 = . if (H3CJ119 >= 6 & H3CJ119 <= 8)
replace H3CJ120 = . if (H3CJ120 >= 6 & H3CJ120 <= 8)
replace H3CJ121 = . if (H3CJ121 >= 6 & H3CJ121 <= 8)
replace H3CJ122 = . if (H3CJ122 >= 6 & H3CJ122 <= 8)
replace H3CJ123 = . if (H3CJ123 >= 6 & H3CJ123 <= 8)
replace H3CJ124 = . if (H3CJ124 >= 6 & H3CJ124 <= 8)
replace H3CJ125 = . if (H3CJ125 >= 6 & H3CJ125 <= 8)
replace H3CJ126 = . if (H3CJ126 >= 6 & H3CJ126 <= 8)
replace H3CJ127 = . if (H3CJ127 >= 6 & H3CJ127 <= 8)
replace H3CJ128 = . if (H3CJ128 >= 6 & H3CJ128 <= 8)
replace H3CJ129 = . if (H3CJ129 >= 6 & H3CJ129 <= 8)
replace H3CJ130 = . if (H3CJ130 == 7)
replace H3CJ131A = . if (H3CJ131A == 97)
replace H3CJ131B = . if (H3CJ131B == 97)
replace H3CJ132A = . if (H3CJ132A == 97)
replace H3CJ132B = . if (H3CJ132B == 97)
replace H3CJ133 = . if (H3CJ133 == 7)
replace H3CJ134 = . if (H3CJ134 == 7)
replace H3CJ135 = . if (H3CJ135 == 7)
replace H3CJ136 = . if (H3CJ136 == 7)
replace H3CJ137 = . if (H3CJ137 == 7)
replace H3CJ138 = . if (H3CJ138 == 7)
replace H3CJ139 = . if (H3CJ139 == 7)
replace H3CJ140 = . if (H3CJ140 == 7)
replace H3CJ141 = . if (H3CJ141 == 7)
replace H3CJ142 = . if (H3CJ142 == 7)
replace H3CJ143 = . if (H3CJ143 == 7)
replace H3CJ144 = . if (H3CJ144 == 7)
replace H3CJ145 = . if (H3CJ145 == 7)
replace H3CJ146 = . if (H3CJ146 == 7)
replace H3CJ147 = . if (H3CJ147 == 7)
replace H3CJ148 = . if (H3CJ148 == 7)
replace H3CJ149 = . if (H3CJ149 == 7)
replace H3CJ150 = . if (H3CJ150 == 7)
replace H3CJ151 = . if (H3CJ151 == 7)
replace H3CJ152 = . if (H3CJ152 == 7)
replace H3CJ153 = . if (H3CJ153 == 7)
replace H3CJ154 = . if (H3CJ154 == 7)
replace H3CJ155 = . if (H3CJ155 == 7)
replace H3CJ156A = . if (H3CJ156A == 97 | H3CJ156A == 98)
replace H3CJ156B = . if (H3CJ156B == 97 | H3CJ156B == 98)
replace H3CJ157A = . if (H3CJ157A == 97 | H3CJ157A == 98)
replace H3CJ157B = . if (H3CJ157B == 97 | H3CJ157B == 98)
replace H3CJ158 = . if (H3CJ158 == 7)
replace H3CJ159 = . if (H3CJ159 == 7)
replace H3CJ160 = . if (H3CJ160 >= 6 & H3CJ160 <= 9)
replace H3TO1 = . if (H3TO1 >= 6 & H3TO1 <= 9)
replace H3TO2 = . if (H3TO2 == 7)
replace H3TO3 = . if (H3TO3 >= 96 & H3TO3 <= 99)
replace H3TO4 = . if (H3TO4 >= 6 & H3TO4 <= 9)
replace H3TO5 = . if (H3TO5 >= 96 & H3TO5 <= 99)
replace H3TO6 = . if (H3TO6 >= 6 & H3TO6 <= 8)
replace H3TO7 = . if (H3TO7 >= 96 & H3TO7 <= 99)
replace H3TO8 = . if (H3TO8 >= 96 & H3TO8 <= 99)
replace H3TO9 = . if (H3TO9 >= 96 & H3TO9 <= 99)
replace H3TO10 = . if (H3TO10 >= 996 & H3TO10 <= 999)
replace H3TO11 = . if (H3TO11 >= 6 & H3TO11 <= 9)
replace H3TO12 = . if (H3TO12 >= 6 & H3TO12 <= 9)
replace H3TO13 = . if (H3TO13 >= 6 & H3TO13 <= 9)
replace H3TO14 = . if (H3TO14 >= 6 & H3TO14 <= 9)
replace H3TO15 = . if (H3TO15 >= 6 & H3TO15 <= 9)
replace H3TO16 = . if (H3TO16 >= 6 & H3TO16 <= 9)
replace H3TO17 = . if (H3TO17 >= 6 & H3TO17 <= 9)
replace H3TO18 = . if (H3TO18 >= 6 & H3TO18 <= 9)
replace H3TO19 = . if (H3TO19 >= 6 & H3TO19 <= 9)
replace H3TO20 = . if (H3TO20 >= 6 & H3TO20 <= 9)
replace H3TO21 = . if (H3TO21 >= 6 & H3TO21 <= 9)
replace H3TO22 = . if (H3TO22 >= 6 & H3TO22 <= 9)
replace H3TO23 = . if (H3TO23 >= 6 & H3TO23 <= 9)
replace H3TO24 = . if (H3TO24 >= 6 & H3TO24 <= 9)
replace H3TO25A = . if (H3TO25A >= 6 & H3TO25A <= 9)
replace H3TO25B = . if (H3TO25B >= 6 & H3TO25B <= 9)
replace H3TO25C = . if (H3TO25C >= 6 & H3TO25C <= 9)
replace H3TO25D = . if (H3TO25D >= 6 & H3TO25D <= 9)
replace H3TO25E = . if (H3TO25E >= 6 & H3TO25E <= 9)
replace H3TO25F = . if (H3TO25F >= 6 & H3TO25F <= 9)
replace H3TO25G = . if (H3TO25G >= 6 & H3TO25G <= 9)
replace H3TO25H = . if (H3TO25H >= 6 & H3TO25H <= 9)
replace H3TO25I = . if (H3TO25I >= 6 & H3TO25I <= 9)
replace H3TO26 = . if (H3TO26 >= 5 & H3TO26 <= 9)
replace H3TO27 = . if (H3TO27 == 96 | H3TO27 == 98 | H3TO27 == 99)
replace H3TO28 = . if (H3TO28 == 96 | H3TO28 == 98 | H3TO28 == 99)
replace H3TO29 = . if (H3TO29 == 96 | H3TO29 == 98 | H3TO29 == 99)
replace H3TO30 = . if (H3TO30 == 96 | H3TO30 == 98 | H3TO30 == 99)
replace H3TO31 = . if (H3TO31 == 96 | H3TO31 == 98 | H3TO31 == 99)
replace H3TO32 = . if (H3TO32 == 96 | H3TO32 == 98 | H3TO32 == 99)
replace H3TO33 = . if (H3TO33 == 96 | H3TO33 == 98 | H3TO33 == 99)
replace H3TO34 = . if (H3TO34 == 96 | H3TO34 == 98 | H3TO34 == 99)
replace H3TO35 = . if (H3TO35 == 96 | H3TO35 == 98 | H3TO35 == 99)
replace H3TO36 = . if (H3TO36 == 96 | H3TO36 == 98 | H3TO36 == 99)
replace H3TO37 = . if (H3TO37 == 6 | H3TO37 == 8 | H3TO37 == 9)
replace H3TO38 = . if (H3TO38 >= 96 & H3TO38 <= 99)
replace H3TO39 = . if (H3TO39 >= 96 & H3TO39 <= 99)
replace H3TO40 = . if (H3TO40 >= 96 & H3TO40 <= 99)
replace H3TO41 = . if (H3TO41 >= 96 & H3TO41 <= 99)
replace H3TO42 = . if (H3TO42 >= 96 & H3TO42 <= 99)
replace H3TO43 = . if (H3TO43 >= 96 & H3TO43 <= 99)
replace H3TO44 = . if (H3TO44 >= 96 & H3TO44 <= 99)
replace H3TO45 = . if (H3TO45 >= 6 & H3TO45 <= 9)
replace H3TO46 = . if (H3TO46 >= 6 & H3TO46 <= 9)
replace H3TO47 = . if (H3TO47 >= 6 & H3TO47 <= 9)
replace H3TO48A = . if (H3TO48A >= 6 & H3TO48A <= 9)
replace H3TO48B = . if (H3TO48B >= 6 & H3TO48B <= 9)
replace H3TO48C = . if (H3TO48C >= 6 & H3TO48C <= 9)
replace H3TO48D = . if (H3TO48D >= 6 & H3TO48D <= 9)
replace H3TO48E = . if (H3TO48E >= 6 & H3TO48E <= 9)
replace H3TO49 = . if (H3TO49 >= 6 & H3TO49 <= 9)
replace H3TO50 = . if (H3TO50 >= 95 & H3TO50 <= 99)
replace H3TO51 = . if (H3TO51 >= 95 & H3TO51 <= 99)
replace H3TO52 = . if (H3TO52 >= 95 & H3TO52 <= 99)
replace H3TO53 = . if (H3TO53 >= 95 & H3TO53 <= 99)
replace H3TO54 = . if (H3TO54 >= 95 & H3TO54 <= 99)
replace H3TO55 = . if (H3TO55 >= 95 & H3TO55 <= 99)
replace H3TO56 = . if (H3TO56 >= 95 & H3TO56 <= 99)
replace H3TO57 = . if (H3TO57 >= 95 & H3TO57 <= 99)
replace H3TO58 = . if (H3TO58 >= 95 & H3TO58 <= 99)
replace H3TO59 = . if (H3TO59 >= 95 & H3TO59 <= 99)
replace H3TO60 = . if (H3TO60 >= 95 & H3TO60 <= 99)
replace H3TO61 = . if (H3TO61 >= 95 & H3TO61 <= 99)
replace H3TO62 = . if (H3TO62 >= 95 & H3TO62 <= 99)
replace H3TO63 = . if (H3TO63 >= 95 & H3TO63 <= 99)
replace H3TO64 = . if (H3TO64 >= 95 & H3TO64 <= 99)
replace H3TO65 = . if (H3TO65 >= 95 & H3TO65 <= 99)
replace H3TO66 = . if (H3TO66 >= 95 & H3TO66 <= 99)
replace H3TO67 = . if (H3TO67 >= 95 & H3TO67 <= 99)
replace H3TO68 = . if (H3TO68 >= 95 & H3TO68 <= 99)
replace H3TO69 = . if (H3TO69 >= 95 & H3TO69 <= 99)
replace H3TO70 = . if (H3TO70 >= 95 & H3TO70 <= 99)
replace H3TO71 = . if (H3TO71 >= 95 & H3TO71 <= 99)
replace H3TO72 = . if (H3TO72 >= 95 & H3TO72 <= 99)
replace H3TO73 = . if (H3TO73 >= 95 & H3TO73 <= 99)
replace H3TO74 = . if (H3TO74 >= 95 & H3TO74 <= 99)
replace H3TO75 = . if (H3TO75 >= 95 & H3TO75 <= 99)
replace H3TO76 = . if (H3TO76 >= 95 & H3TO76 <= 99)
replace H3TO77 = . if (H3TO77 >= 95 & H3TO77 <= 99)
replace H3TO78 = . if (H3TO78 >= 95 & H3TO78 <= 99)
replace H3TO79 = . if (H3TO79 >= 95 & H3TO79 <= 99)
replace H3TO80 = . if (H3TO80 >= 95 & H3TO80 <= 99)
replace H3TO81 = . if (H3TO81 >= 95 & H3TO81 <= 99)
replace H3TO82 = . if (H3TO82 >= 95 & H3TO82 <= 99)
replace H3TO83 = . if (H3TO83 >= 95 & H3TO83 <= 99)
replace H3TO84 = . if (H3TO84 >= 95 & H3TO84 <= 99)
replace H3TO85 = . if (H3TO85 >= 95 & H3TO85 <= 99)
replace H3TO86 = . if (H3TO86 >= 95 & H3TO86 <= 99)
replace H3TO87 = . if (H3TO87 >= 95 & H3TO87 <= 99)
replace H3TO88 = . if (H3TO88 >= 95 & H3TO88 <= 99)
replace H3TO89 = . if (H3TO89 >= 95 & H3TO89 <= 99)
replace H3TO90 = . if (H3TO90 >= 95 & H3TO90 <= 99)
replace H3TO91 = . if (H3TO91 >= 95 & H3TO91 <= 99)
replace H3TO92 = . if (H3TO92 >= 95 & H3TO92 <= 99)
replace H3TO93 = . if (H3TO93 >= 95 & H3TO93 <= 99)
replace H3TO94 = . if (H3TO94 >= 6 & H3TO94 <= 9)
replace H3TO95 = . if (H3TO95 >= 6 & H3TO95 <= 9)
replace H3TO96 = . if (H3TO96 >= 6 & H3TO96 <= 9)
replace H3TO97 = . if (H3TO97 >= 6 & H3TO97 <= 9)
replace H3TO98 = . if (H3TO98 >= 6 & H3TO98 <= 9)
replace H3TO99 = . if (H3TO99 >= 6 & H3TO99 <= 9)
replace H3TO100 = . if (H3TO100 >= 6 & H3TO100 <= 9)
replace H3TO101 = . if (H3TO101 >= 6 & H3TO101 <= 9)
replace H3TO102 = . if (H3TO102 >= 6 & H3TO102 <= 9)
replace H3TO103 = . if (H3TO103 >= 6 & H3TO103 <= 9)
replace H3TO104 = . if (H3TO104 >= 6 & H3TO104 <= 9)
replace H3TO105A = . if (H3TO105A >= 6 & H3TO105A <= 9)
replace H3TO105B = . if (H3TO105B >= 6 & H3TO105B <= 9)
replace H3TO105C = . if (H3TO105C >= 6 & H3TO105C <= 9)
replace H3TO105D = . if (H3TO105D >= 6 & H3TO105D <= 9)
replace H3TO105E = . if (H3TO105E >= 6 & H3TO105E <= 9)
replace H3TO106 = . if (H3TO106 >= 6 & H3TO106 <= 9)
replace H3TO107 = . if (H3TO107 >= 6 & H3TO107 <= 9)
replace H3TO108 = . if (H3TO108 >= 6 & H3TO108 <= 9)
replace H3TO109 = . if (H3TO109 == 7 | H3TO109 == 9)
replace H3TO110 = . if (H3TO110 >= 9996 & H3TO110 <= 9999)
replace H3TO111 = . if (H3TO111 == 6 | H3TO111 == 8 | H3TO111 == 9)
replace H3TO112 = . if (H3TO112 == 7)
replace H3TO113 = . if (H3TO113 >= 996 & H3TO113 <= 998)
replace H3TO114 = . if (H3TO114 == 6 | H3TO114 == 8 | H3TO114 == 9)
replace H3TO115 = . if (H3TO115 == 7 | H3TO115 == 9)
replace H3TO116 = . if (H3TO116 == 997 | H3TO116 == 998)
replace H3TO117 = . if (H3TO117 == 6 | H3TO117 == 8 | H3TO117 == 9)
replace H3TO118 = . if (H3TO118 == 7)
replace H3TO119 = . if (H3TO119 == 997 | H3TO119 == 998)
replace H3TO120 = . if (H3TO120 == 6 | H3TO120 == 8 | H3TO120 == 9)
replace H3TO121 = . if (H3TO121 >= 6 & H3TO121 <= 8)
replace H3TO122 = . if (H3TO122 == 997)
replace H3TO123 = . if (H3TO123 >= 6 & H3TO123 <= 9)
replace H3TO124 = . if (H3TO124 >= 6 & H3TO124 <= 9)
replace H3TO125 = . if (H3TO125 >= 6 & H3TO125 <= 9)
replace H3TO126 = . if (H3TO126 >= 6 & H3TO126 <= 9)
replace H3TO127 = . if (H3TO127 >= 6 & H3TO127 <= 9)
replace H3TO128 = . if (H3TO128 >= 6 & H3TO128 <= 9)
replace H3TO129 = . if (H3TO129 >= 6 & H3TO129 <= 9)
replace H3TO130 = . if (H3TO130 >= 6 & H3TO130 <= 9)
replace H3TO131 = . if (H3TO131 == 7)
replace H3TO132 = . if (H3TO132 == 7)
replace H3TO133 = . if (H3TO133 >= 6 & H3TO133 <= 9)
replace H3TO134 = . if (H3TO134 == 7)
replace H3TO135 = . if (H3TO135 >= 6 & H3TO135 <= 9)
replace H3TO136 = . if (H3TO136 == 7)
replace H3MA1 = . if (H3MA1 >= 96 & H3MA1 <= 99)
replace H3MA2 = . if (H3MA2 >= 96 & H3MA2 <= 99)
replace H3MA3 = . if (H3MA3 >= 96 & H3MA3 <= 99)
replace H3MA4 = . if (H3MA4 >= 96 & H3MA4 <= 99)
replace H3MA5 = . if (H3MA5 >= 96 & H3MA5 <= 99)
replace H3MA6 = . if (H3MA6 >= 96 & H3MA6 <= 99)
replace H3MAC7 = . if (H3MAC7 >= 95 & H3MAC7 <= 99)
replace H3MAC8 = . if (H3MAC8 >= 95 & H3MAC8 <= 99)
replace H3MAC9 = . if (H3MAC9 >= 95 & H3MAC9 <= 99)
replace H3MAC10 = . if (H3MAC10 >= 95 & H3MAC10 <= 99)
replace H3CC1 = . if (H3CC1 == 6 | H3CC1 == 8 | H3CC1 == 9)
replace H3CC2A = . if (H3CC2A == 7 | H3CC2A == 9)
replace H3CC2B = . if (H3CC2B == 7 | H3CC2B == 9)
replace H3CC2C = . if (H3CC2C == 7 | H3CC2C == 9)
replace H3CC3 = . if (H3CC3 == 6 | H3CC3 == 8 | H3CC3 == 9)
replace H3CC4A = . if (H3CC4A == 7 | H3CC4A == 9)
replace H3CC4B = . if (H3CC4B == 7 | H3CC4B == 9)
replace H3CC4C = . if (H3CC4C == 7 | H3CC4C == 9)
replace H3CC4D = . if (H3CC4D == 7 | H3CC4D == 9)
replace H3CC4E = . if (H3CC4E == 7 | H3CC4E == 9)
replace H3CC4F = . if (H3CC4F == 7 | H3CC4F == 9)
replace H3CC4G = . if (H3CC4G == 7 | H3CC4G == 9)
replace H3CC4H = . if (H3CC4H == 7 | H3CC4H == 9)
replace H3CC4I = . if (H3CC4I == 7 | H3CC4I == 9)
replace H3CC5 = . if (H3CC5 >= 6 & H3CC5 <= 9)
replace H3CC6 = . if (H3CC6 >= 6 & H3CC6 <= 9)
replace H3CC7 = . if (H3CC7 >= 6 & H3CC7 <= 9)
replace H3CC8 = . if (H3CC8 >= 6 & H3CC8 <= 9)
replace H3CC9A = . if (H3CC9A >= 6 & H3CC9A <= 9)
replace H3CC9B = . if (H3CC9B >= 6 & H3CC9B <= 9)
replace H3CC9C = . if (H3CC9C >= 6 & H3CC9C <= 9)
replace H3CC9D = . if (H3CC9D >= 6 & H3CC9D <= 9)
replace H3CC9E = . if (H3CC9E >= 6 & H3CC9E <= 9)
replace H3CC9F = . if (H3CC9F >= 6 & H3CC9F <= 9)
replace H3CC10 = . if (H3CC10 == 96 | H3CC10 == 98 | H3CC10 == 99)
replace H3CC11 = . if (H3CC11 == 96 | H3CC11 == 98 | H3CC11 == 99)
replace H3CC12 = . if (H3CC12 == 96 | H3CC12 == 98 | H3CC12 == 99)
replace H3CC13 = . if (H3CC13 == 96 | H3CC13 == 98 | H3CC13 == 99)
replace H3CC14 = . if (H3CC14 == 6 | H3CC14 == 8 | H3CC14 == 9)
replace H3CC15 = . if (H3CC15 >= 96 & H3CC15 <= 99)
replace H3RE1 = . if (H3RE1 == 96 | H3RE1 == 98 | H3RE1 == 99)
replace H3RE2 = . if (H3RE2 == 97)
replace H3RE3 = . if (H3RE3 >= 96 & H3RE3 <= 99)
replace H3RE4 = . if (H3RE4 >= 6 & H3RE4 <= 9)
replace H3RE5 = . if (H3RE5 == 7)
replace H3RE6 = . if (H3RE6 >= 96 & H3RE6 <= 99)
replace H3RE7 = . if (H3RE7 >= 96 & H3RE7 <= 99)
replace H3RE8 = . if (H3RE8 >= 96 & H3RE8 <= 99)
replace H3RE9 = . if (H3RE9 >= 96 & H3RE9 <= 99)
replace H3RE10 = . if (H3RE10 == 97)
replace H3RE11 = . if (H3RE11 == 7 | H3RE11 == 8)
replace H3RE12 = . if (H3RE12 == 7 | H3RE12 == 8)
replace H3RE13 = . if (H3RE13 == 7 | H3RE13 == 8)
replace H3RE14 = . if (H3RE14 == 7 | H3RE14 == 8)
replace H3RE15 = . if (H3RE15 == 7 | H3RE15 == 8)
replace H3RE16 = . if (H3RE16 == 97)
replace H3RE17 = . if (H3RE17 == 97)
replace H3RE18 = . if (H3RE18 >= 7 & H3RE18 <= 9)
replace H3RE19 = . if (H3RE19 == 7 | H3RE19 == 8)
replace H3RE20 = . if (H3RE20 == 97)
replace H3RE21 = . if (H3RE21 == 96 | H3RE21 == 97)
replace H3RE22 = . if (H3RE22 == 97 | H3RE22 == 99)
replace H3RE23 = . if (H3RE23 == 7)
replace H3RE24 = . if (H3RE24 == 96 | H3RE24 == 98 | H3RE24 == 99)
replace H3RE25 = . if (H3RE25 == 96 | H3RE25 == 98 | H3RE25 == 99)
replace H3RE26 = . if (H3RE26 == 96 | H3RE26 == 98 | H3RE26 == 99)
replace H3RE27 = . if (H3RE27 >= 96 & H3RE27 <= 99)
replace H3RE28 = . if (H3RE28 >= 6 & H3RE28 <= 9)
replace H3RE29 = . if (H3RE29 == 7)
replace H3RE30 = . if (H3RE30 == 6 | H3RE30 == 8 | H3RE30 == 9)
replace H3RE31 = . if (H3RE31 == 96 | H3RE31 == 98 | H3RE31 == 99)
replace H3RE32 = . if (H3RE32 == 96 | H3RE32 == 98 | H3RE32 == 99)
replace H3RE33 = . if (H3RE33 == 6 | H3RE33 == 8 | H3RE33 == 9)
replace H3RE34 = . if (H3RE34 == 6 | H3RE34 == 8 | H3RE34 == 9)
replace H3RE35 = . if (H3RE35 >= 96 & H3RE35 <= 98)
replace H3RE36 = . if (H3RE36 == 6 | H3RE36 == 8 | H3RE36 == 9)
replace H3RE37 = . if (H3RE37 == 96 | H3RE37 == 98 | H3RE37 == 99)
replace H3RE38 = . if (H3RE38 == 96 | H3RE38 == 98 | H3RE38 == 99)
replace H3RE39 = . if (H3RE39 == 96 | H3RE39 == 98 | H3RE39 == 99)
replace H3RE40 = . if (H3RE40 >= 6 & H3RE40 <= 9)
replace H3RE41 = . if (H3RE41 >= 6 & H3RE41 <= 9)
replace H3RE42 = . if (H3RE42 >= 6 & H3RE42 <= 9)
replace H3GM1 = . if (H3GM1 == 6 | H3GM1 == 8 | H3GM1 == 9)
replace H3GM2 = . if (H3GM2 == 6 | H3GM2 == 8 | H3GM2 == 9)
replace H3GM3 = . if (H3GM3 == 6 | H3GM3 == 8 | H3GM3 == 9)
replace H3GM4 = . if (H3GM4 >= 96 & H3GM4 <= 99)
replace H3GM5 = . if (H3GM5 == 7 | H3GM5 == 8)
replace H3GM6 = . if (H3GM6 == 7 | H3GM6 == 8)
replace H3GM7 = . if (H3GM7 == 7 | H3GM7 == 8)
replace H3GM8 = . if (H3GM8 == 7 | H3GM8 == 8)
replace H3DA1 = . if (H3DA1 == 96 | H3DA1 == 98)
replace H3DA2 = . if (H3DA2 == 96 | H3DA2 == 98)
replace H3DA3 = . if (H3DA3 == 96 | H3DA3 == 98)
replace H3DA4 = . if (H3DA4 == 996 | H3DA4 == 998 | H3DA4 == 999)
replace H3DA5 = . if (H3DA5 == 996 | H3DA5 == 998 | H3DA5 == 999)
replace H3DA6 = . if (H3DA6 == 96 | H3DA6 == 98)
replace H3DA7 = . if (H3DA7 == 996 | H3DA7 == 998 | H3DA7 == 999)
replace H3DA8 = . if (H3DA8 == 96 | H3DA8 == 98)
replace H3DA9 = . if (H3DA9 == 96 | H3DA9 == 98)
replace H3DA10 = . if (H3DA10 == 96 | H3DA10 == 98)
replace H3DA11 = . if (H3DA11 == 96 | H3DA11 == 98)
replace H3DA12 = . if (H3DA12 == 96 | H3DA12 == 98)
replace H3DA13 = . if (H3DA13 == 96 | H3DA13 == 98)
replace H3DA14 = . if (H3DA14 == 96 | H3DA14 == 98)
replace H3DA15 = . if (H3DA15 == 96 | H3DA15 == 98)
replace H3DA16 = . if (H3DA16 == 6 | H3DA16 == 8 | H3DA16 == 9)
replace H3DA17 = . if (H3DA17 >= 6 & H3DA17 <= 9)
replace H3DA18 = . if (H3DA18 == 96 | H3DA18 == 98 | H3DA18 == 99)
replace H3DA19 = . if (H3DA19 == 96 | H3DA19 == 98 | H3DA19 == 99)
replace H3DA20 = . if (H3DA20 >= 996 & H3DA20 <= 999)
replace H3DA21 = . if (H3DA21 >= 996 & H3DA21 <= 999)
replace H3DA22 = . if (H3DA22 >= 6 & H3DA22 <= 8)
replace H3DA23 = . if (H3DA23 == 7 | H3DA23 == 9)
replace H3DA24 = . if (H3DA24 == 97)
replace H3DA25 = . if (H3DA25 == 7 | H3DA25 == 9)
replace H3DA26 = . if (H3DA26 == 97)
replace H3DA27 = . if (H3DA27 == 97)
replace H3DA28 = . if (H3DA28 == 6 | H3DA28 == 8 | H3DA28 == 9)
replace H3DA29A = . if (H3DA29A >= 6 & H3DA29A <= 9)
replace H3DA29B = . if (H3DA29B >= 6 & H3DA29B <= 9)
replace H3DA29C = . if (H3DA29C >= 6 & H3DA29C <= 9)
replace H3DA29D = . if (H3DA29D >= 6 & H3DA29D <= 9)
replace H3DA29E = . if (H3DA29E >= 6 & H3DA29E <= 9)
replace H3DA29F = . if (H3DA29F >= 6 & H3DA29F <= 9)
replace H3DA30 = . if (H3DA30 >= 996 & H3DA30 <= 999)
replace H3DA31 = . if (H3DA31 >= 996 & H3DA31 <= 999)
replace H3DA32 = . if (H3DA32 >= 996 & H3DA32 <= 999)
replace H3DA33 = . if (H3DA33 >= 96 & H3DA33 <= 99)
replace H3DA34 = . if (H3DA34 >= 96 & H3DA34 <= 99)
replace H3DA35 = . if (H3DA35 >= 996 & H3DA35 <= 999)
replace H3DA36 = . if (H3DA36 == 6 | H3DA36 == 8 | H3DA36 == 9)
replace H3DA37 = . if (H3DA37 >= 996 & H3DA37 <= 999)
replace H3DA38A = . if (H3DA38A >= 6 & H3DA38A <= 9)
replace H3DA38B = . if (H3DA38B >= 6 & H3DA38B <= 9)
replace H3DA38C = . if (H3DA38C >= 6 & H3DA38C <= 9)
replace H3DA38D = . if (H3DA38D >= 6 & H3DA38D <= 9)
replace H3DA38E = . if (H3DA38E >= 6 & H3DA38E <= 9)
replace H3DA38F = . if (H3DA38F >= 6 & H3DA38F <= 9)
replace H3DA39 = . if (H3DA39 >= 996 & H3DA39 <= 999)
replace H3DA40 = . if (H3DA40 >= 96 & H3DA40 <= 99)
replace H3DA41 = . if (H3DA41 >= 96 & H3DA41 <= 99)
replace H3DA42 = . if (H3DA42 >= 996 & H3DA42 <= 999)
replace H3DA43F = . if (H3DA43F == 96 | H3DA43F == 98)
replace H3DA43I = . if (H3DA43I == 96 | H3DA43I == 98)
replace H3DA44 = . if (H3DA44 == 996 | H3DA44 == 998 | H3DA44 == 999)
replace H3DA45 = . if (H3DA45 >= 96 & H3DA45 <= 99)
replace H3WGT = . if (H3WGT == 996.0)
replace H3HGT_F = . if (H3HGT_F == 96 | H3HGT_F == 98)
replace H3HGT_I = . if (H3HGT_I == 96 | H3HGT_I == 98)
replace H3HGT_PI = . if (H3HGT_PI == 6.000 | H3HGT_PI == 8.000)
replace CH = . if (CH == 6)
replace GC = . if (GC == 6)
replace TRICH = . if (TRICH == 6)
replace H3RPART = . if (H3RPART >= 96 & H3RPART <= 99)
replace H3IR11 = . if (H3IR11 == 7)
replace H3IR20 = . if (H3IR20 == 5)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

