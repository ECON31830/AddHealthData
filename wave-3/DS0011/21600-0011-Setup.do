/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0011: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |           USE SAMPLE (SECTION 19: RELATIONSHIPS IN DETAIL))
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0011-statasetup.do)
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

format RRELNO %2.0f
format H3RD1 %2.0f
format H3RD2 %2.0f
format H3RD3 %1.0f
format H3RD4 %2.0f
format H3RD5 %2.0f
format H3RD6M %2.0f
format H3RD6Y %4.0f
format H3RD7 %1.0f
format H3RD8 %2.0f
format H3RD9 %2.0f
format H3RD10M %2.0f
format H3RD10Y %4.0f
format H3RD11 %1.0f
format H3RD12M %2.0f
format H3RD12Y %4.0f
format H3RD13 %1.0f
format H3RD14A %2.0f
format H3RD14B %1.0f
format H3RD15A %2.0f
format H3RD15B %1.0f
format H3RD16A %2.0f
format H3RD16B %1.0f
format H3RD16T1 %2.0f
format H3RD16T2 %1.0f
format H3RD17A %2.0f
format H3RD17B %1.0f
format H3RD18A %2.0f
format H3RD18B %1.0f
format H3RD19A %2.0f
format H3RD19B %1.0f
format H3RD20M %2.0f
format H3RD20Y %4.0f
format H3RD21 %2.0f
format H3RD22 %1.0f
format H3RD23A %1.0f
format H3RD23B %1.0f
format H3RD23C %1.0f
format H3RD23D %1.0f
format H3RD23E %1.0f
format H3RD24 %1.0f
format H3RD25A %1.0f
format H3RD25B %1.0f
format H3RD25C %1.0f
format H3RD25D %1.0f
format H3RD25E %1.0f
format H3RD26 %1.0f
format H3RD27 %1.0f
format H3RD28 %1.0f
format H3RD29 %1.0f
format H3RD30 %1.0f
format H3RD31 %1.0f
format H3RD32 %1.0f
format H3RD33 %1.0f
format H3RD34 %1.0f
format H3RD35 %1.0f
format H3RD36 %1.0f
format H3RD37 %1.0f
format H3RD38 %2.0f
format H3RD39 %2.0f
format H3RD40 %2.0f
format H3RD41 %1.0f
format H3RD42 %2.0f
format H3RD43 %1.0f
format H3RD44 %1.0f
format H3RD45A %1.0f
format H3RD45B %1.0f
format H3RD45C %1.0f
format H3RD45D %1.0f
format H3RD45E %1.0f
format H3RD45F %1.0f
format H3RD45G %1.0f
format H3RD45H %1.0f
format H3RD45I %1.0f
format H3RD45J %1.0f
format H3RD45K %1.0f
format H3RD45L %1.0f
format H3RD45M %1.0f
format H3RD46 %1.0f
format H3RD47M %2.0f
format H3RD47Y %4.0f
format H3RD48A %3.0f
format H3RD48B %1.0f
format H3RD49 %1.0f
format H3RD50A %1.0f
format H3RD50B %1.0f
format H3RD50C %1.0f
format H3RD50D %1.0f
format H3RD50E %1.0f
format H3RD50F %1.0f
format H3RD50G %1.0f
format H3RD50H %1.0f
format H3RD50I %1.0f
format H3RD50J %1.0f
format H3RD50K %1.0f
format H3RD50L %1.0f
format H3RD50M %1.0f
format H3RD51 %1.0f
format H3RD52M %2.0f
format H3RD52Y %4.0f
format H3RD53 %1.0f
format H3RD54A %1.0f
format H3RD54B %1.0f
format H3RD54C %1.0f
format H3RD54D %1.0f
format H3RD54E %1.0f
format H3RD54F %1.0f
format H3RD54G %1.0f
format H3RD54H %1.0f
format H3RD54I %1.0f
format H3RD54J %1.0f
format H3RD54K %1.0f
format H3RD54L %1.0f
format H3RD54M %1.0f
format H3RD55 %1.0f
format H3RD56 %2.0f
format H3RD57 %1.0f
format H3RD58 %1.0f
format H3RD59 %2.0f
format H3RD60 %1.0f
format H3RD61 %1.0f
format H3RD62M %2.0f
format H3RD62Y %4.0f
format H3RD63A %3.0f
format H3RD63B %1.0f
format H3RD64 %1.0f
format H3RD65 %1.0f
format H3RD66M %2.0f
format H3RD66Y %4.0f
format H3RD67 %1.0f
format H3RD68 %2.0f
format H3RD69 %1.0f
format H3RD70 %1.0f
format H3RD71 %2.0f
format H3RD72 %1.0f
format H3RD73 %1.0f
format H3RD74M %2.0f
format H3RD74Y %4.0f
format H3RD75A %3.0f
format H3RD75B %1.0f
format H3RD76 %1.0f
format H3RD77 %1.0f
format H3RD78M %2.0f
format H3RD78Y %4.0f
format H3RD79 %1.0f
format H3RD80 %2.0f
format H3RD81 %1.0f
format H3RD82 %1.0f
format H3RD83 %2.0f
format H3RD84 %1.0f
format H3RD85 %1.0f
format H3RD86M %2.0f
format H3RD86Y %4.0f
format H3RD87A %2.0f
format H3RD87B %1.0f
format H3RD88 %1.0f
format H3RD89 %1.0f
format H3RD90M %2.0f
format H3RD90Y %4.0f
format H3RD91 %1.0f
format H3RD92 %2.0f
format H3RD93 %1.0f
format H3RD94 %1.0f
format H3RD95 %2.0f
format H3RD96 %1.0f
format H3RD97 %1.0f
format H3RD98M %2.0f
format H3RD98Y %4.0f
format H3RD99A %2.0f
format H3RD99B %1.0f
format H3RD100 %1.0f
format H3RD101 %1.0f
format H3RD102M %2.0f
format H3RD102Y %4.0f
format H3RD103 %1.0f
format H3RD104 %2.0f
format H3RD105 %1.0f
format H3RD106 %2.0f
format H3RD107 %1.0f
format H3RD108 %1.0f
format H3RD109 %2.0f
format H3RD110 %2.0f
format H3RD111 %2.0f
format H3RD112 %2.0f
format H3RD113 %2.0f
format H3RD114 %2.0f
format H3RD115 %2.0f
format H3RD116 %2.0f
format H3RD117 %1.0f
format H3RD118 %1.0f
format H3RD119 %2.0f
format H3RD120 %1.0f
format H3RD121 %1.0f
format H3RD122 %2.0f
format H3RD123A %2.0f
format H3RD123B %2.0f
format H3RD124 %1.0f
format H3RD125 %1.0f
format H3RD126 %1.0f
format H3RD127 %1.0f
format H3RD128 %1.0f
format H3RD129 %1.0f
format H3RD130 %1.0f
format H3RD131 %1.0f
format H3RD132 %1.0f
format H3RD133 %1.0f
format E_SUBSEC %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave III: In-Home Questionnaire, Public Use Sample (Section 19: Relationships in Detail)"

#delimit ;
label define RRELNO    1 "(1) 1st relationship listed"
                       2 "(2) 2nd relationship listed"
                       3 "(3) 3rd relationship listed"
                       4 "(4) 4th relationship listed"
                       5 "(5) 5th relationship listed"
                       6 "(6) 6th relationship listed"
                       7 "(7) 7th relationship listed"
                       8 "(8) 8th relationship listed"
                       9 "(9) 9th relationship listed"
                       10 "(10) 10th relationship listed" ;
label define H3RD1     0 "(0) 0 years"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD2     0 "(0) 0 years"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD3     0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD4     95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD5     95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD6M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD6Y    9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3RD7     1 "(1) Winter (December, January, February)"
                       2 "(2) Spring (March, April, May)"
                       3 "(3) Summer (June, July, August)"
                       4 "(4) Fall (September, October, November)"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD8     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD9     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD10M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD10Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3RD11    1 "(1) Winter (December, January, February)"
                       2 "(2) Spring (March, April, May)"
                       3 "(3) Summer (June, July, August)"
                       4 "(4) Fall (September, October, November)"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3RD12M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD12Y   9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3RD13    0 "(0) No (skip to Q.15)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD14A   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD14B   1 "(1) Years" 2 "(2) Months" 3 "(3) Days"
                       7 "(7) Legitimate skip" ;
label define H3RD15A   95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD15B   1 "(1) Minutes" 2 "(2) Hours" 3 "(3) Days"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD16A   95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD16B   1 "(1) Minutes" 2 "(2) Hours" 3 "(3) Days"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD16T1  95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD16T2  1 "(1) Minutes" 2 "(2) Hours" 3 "(3) Days"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD17A   95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD17B   1 "(1) Years" 2 "(2) Months" 3 "(3) Days"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD18A   96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD18B   1 "(1) Years" 2 "(2) Months" 3 "(3) Days"
                       7 "(7) Legitimate skip" ;
label define H3RD19A   95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD19B   1 "(1) Years" 2 "(2) Months" 3 "(3) Days"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD20M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD20Y   9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3RD21
                       1 "(1) You or <PARTNER> moved away for school/job/service"
                       2 "(2) You or <PARTNER> started a relationship with someone els"
                       3 "(3) You and/or <PARTNER> tired of other/out of love/grew apa"
                       4 "(4) You and/or <PARTNER> was abusive"
                       5 "(5) Relationship had too much conflict, not getting along"
                       6 "(6) You and/or<PARTNER> found something unacceptable about o"
                       7 "(7) Unplanned pregnancy"
                       8 "(8) One partner wanted relation more serious/committed than"
                       9 "(9) One partner wanted the relationship to be less committed"
                       10 "(10) One partner lied/was unfaithful"
                       11 "(11) <PARTNER> died"
                       12 "(12) One partner was sent to jail/prison"
                       13 "(13) Other"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD22    0 "(0) No (skip to Q.24)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD23A   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD23B   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD23C   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD23D   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD23E   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD24    0 "(0) No (skip to Q.26)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD25A   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD25B   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3RD25C   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3RD25D   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3RD25E   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3RD26    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD27    1 "(1) Dating <PARTNER> exclusively"
                       2 "(2) Dating <PARTNER> frequently, but not exclusively"
                       3 "(3) Dating <PARTNER> once in awhile"
                       4 "(4) Only having sex with <PARTNER>" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD28    0 "(0) No (skip to Q.30)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD29    0 "(0) Never" 1 "(1) One or two nights"
                       2 "(2) Three or four nights"
                       3 "(3) Five to seven nights"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD30    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD31    0 "(0) No (skip to Q.33)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H3RD32    0 "(0) Never" 1 "(1) One or two nights"
                       2 "(2) Three or four nights"
                       3 "(3) Five to seven nights"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3RD33    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H3RD34    0 "(0) No (skip to Q.37)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD35    0 "(0) Never" 1 "(1) One or two nights"
                       2 "(2) Three or four nights"
                       3 "(3) Five to seven nights"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD36    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD37    0 "(0) None" 1 "(1) One or two meals"
                       2 "(2) Three or seven meals"
                       3 "(3) More than seven meals"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD38    0 "(0) None" 1 "(1) Protestant" 2 "(2) Catholic"
                       3 "(3) Other Christian" 4 "(4) Jewish"
                       5 "(5) Buddhist" 6 "(6) Hindu" 7 "(7) Moslem"
                       8 "(8) Other"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD39    0 "(0) Never" 1 "(1) Less than once a year"
                       2 "(2) Once or twice a year"
                       3 "(3) Several times a year" 4 "(4) Once a month"
                       5 "(5) Two or three times a month"
                       6 "(6) Nearly every week" 7 "(7) Once a week"
                       8 "(8) Several times a week" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD40    0 "(0) Never went to school" 1 "(1) 8th grade or less"
                       2 "(2) >8th grade/didn't graduate high school"
                       3 "(3) Business/trade/voc. school instead high school"
                       4 "(4) High school graduate" 5 "(5) Completed GED"
                       6 "(6) Business/trade/voc. school after high school"
                       7 "(7) College/didn't graduate"
                       8 "(8) Graduated from a two-year college"
                       9 "(9) Graduated from a four-year college/university"
                       10 "(10) Professional training beyond 4-year college/university"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD41    0 "(0) No (skip to Q.58)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD42    1 "(1) One day or less" 2 "(2) Two to seven days"
                       3 "(3) One or two weeks" 4 "(4) Two to four weeks"
                       5 "(5) One to five months"
                       6 "(6) Six months to a year" 7 "(7) A year or more"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD43    1 "(1) One occasion"
                       2 "(2) More than one occasion (skip to Q.48)"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD44    0 "(0) No (skip to Q.46)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3RD45A   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD45B   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD45C   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD45D   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD45E   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD45F   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD45G   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD45H   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD45I   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD45J   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD45K   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD45L   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD45M   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD46    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD47M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD47Y   9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3RD48A   995 "(995) Question not asked of this respondent"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H3RD48B   1 "(1) Times per day" 2 "(2) Times per week"
                       3 "(3) Times per month" 4 "(4) Times per year"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD49    0 "(0) No (skip to Q.51)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50A   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50B   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50C   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50D   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50E   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50F   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50G   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50H   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50I   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50J   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50K   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50L   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD50M   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD51    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD52M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD52Y   9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3RD53    0 "(0) No (skip to Q.55)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54A   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54B   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54C   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54D   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54E   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54F   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54G   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54H   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54I   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54J   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54K   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54L   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD54M   0 "(0) Not marked" 1 "(1) Marked"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD55    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD56    1 "(1) Like very much" 2 "(2) Like somewhat"
                       3 "(3) Neither like nor dislike"
                       4 "(4) Dislike somewhat" 5 "(5) Dislike very much"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD57    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD58    0 "(0) No (skip to Q.70)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD59    1 "(1) One day or less" 2 "(2) Two to seven days"
                       3 "(3) One or two weeks" 4 "(4) Two to four weeks"
                       5 "(5) One to five months"
                       6 "(6) Six months to a year" 7 "(7) A year or more"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD60    1 "(1) One occasion"
                       2 "(2) More than one occasion (skip to Q.63)"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD61    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3RD62M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD62Y   9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3RD63A   995 "(995) Question not asked of this respondent"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H3RD63B   1 "(1) Times per day" 2 "(2) Times per week"
                       3 "(3) Times per month" 4 "(4) Times per year"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD64    0 "(0) No (skip to Q.66)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD65    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3RD66M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD66Y   9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3RD67    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD68    1 "(1) Like very much" 2 "(2) Like somewhat"
                       3 "(3) Neither like nor dislike"
                       4 "(4) Dislike somewhat" 5 "(5) Dislike very much"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD69    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD70    0 "(0) No (skip to Q.82)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD71    1 "(1) One day or less" 2 "(2) Two to seven days"
                       3 "(3) One or two weeks" 4 "(4) Two to four weeks"
                       5 "(5) One to five months"
                       6 "(6) Six months to a year" 7 "(7) A year or more"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD72    1 "(1) One occasion"
                       2 "(2) More than one occasion (skip to Q.75)"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD73    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip" ;
label define H3RD74M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD74Y   9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3RD75A   995 "(995) Question not asked of this respondent"
                       996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" 999 "(999) Not applicable" ;
label define H3RD75B   1 "(1) Times per day" 2 "(2) Times per week"
                       3 "(3) Times per month" 4 "(4) Times per year"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD76    0 "(0) No (skip to Q.80)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD77    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3RD78M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3RD78Y   9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3RD79    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3RD80    1 "(1) Like very much" 2 "(2) Like somewhat"
                       3 "(3) Neither like nor dislike"
                       4 "(4) Dislike somewhat" 5 "(5) Dislike very much"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD81    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD82    0 "(0) No (skip to Q.94)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD83    1 "(1) One day or less" 2 "(2) Two to seven days"
                       3 "(3) One or two weeks" 4 "(4) Two to four weeks"
                       5 "(5) One to five months"
                       6 "(6) Six months to a year" 7 "(7) A year or more"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD84    1 "(1) One occasion"
                       2 "(2) More than one occasion (skip to Q.87)"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD85    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3RD86M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD86Y   9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3RD87A   95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3RD87B   1 "(1) Times per day" 2 "(2) Times per week"
                       3 "(3) Times per month" 4 "(4) Times per year"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD88    0 "(0) No (skip to Q.92)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3RD89    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3RD90M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3RD90Y   9995 "(9995) Question not asked of this respondent"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3RD91    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD92    1 "(1) Like very much" 2 "(2) Like somewhat"
                       3 "(3) Neither like nor dislike"
                       4 "(4) Dislike somewhat" 5 "(5) Dislike very much"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD93    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3RD94    0 "(0) No (skip to Q.106)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3RD95    1 "(1) One day or less" 2 "(2) Two to seven days"
                       3 "(3) One or two weeks" 4 "(4) Two to four weeks"
                       5 "(5) One to five months"
                       6 "(6) Six months to a year" 7 "(7) A year or more"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD96    1 "(1) One occasion"
                       2 "(2) More than one occasion (skip to Q.99)"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD97    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD98M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD98Y   9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" 9999 "(9999) Not applicable" ;
label define H3RD99A   95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD99B   1 "(1) Times per day" 2 "(2) Times per week"
                       3 "(3) Times per month" 4 "(4) Times per year"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD100   0 "(0) No (skip to Q.104)" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD101   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD102M  1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3RD102Y  9995 "(9995) Question not asked of this respondent"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H3RD103   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" ;
label define H3RD104   1 "(1) Like very much" 2 "(2) Like somewhat"
                       3 "(3) Neither like nor dislike"
                       4 "(4) Dislike somewhat" 5 "(5) Dislike very much"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3RD105   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3RD106   1 "(1) I always do" 2 "(2) I usually do"
                       3 "(3) We each initiate equally often"
                       4 "(4) <PARTNER> usually does"
                       5 "(5) <PARTNER> always does"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD107   0 "(0) Never/hardly ever"
                       1 "(1) Less than half the time"
                       2 "(2) About half the time"
                       3 "(3) More than half the time"
                       4 "(4) Most of the time/every time"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD108   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD109   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 to 5 times" 4 "(4) 6 to 10 times"
                       5 "(5) 11 to 20 times"
                       6 "(6) More than 20 times (If LONG=1, add:)"
                       7 "(7) Hasn't happened in past year/but did happen before then"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD110   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 to 5 times" 4 "(4) 6 to 10 times"
                       5 "(5) 11 to 20 times"
                       6 "(6) More than 20 times (If LONG=1, add:)"
                       7 "(7) Hasn't happened in past year/but did happen before then"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD111   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 to 5 times" 4 "(4) 6 to 10 times"
                       5 "(5) 11 to 20 times"
                       6 "(6) More than 20 times (If LONG=1, add:)"
                       7 "(7) Hasn't happened in past year/but did happen before then"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD112   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 to 5 times" 4 "(4) 6 to 10 times"
                       5 "(5) 11 to 20 times"
                       6 "(6) More than 20 times (If LONG=1, add:)"
                       7 "(7) Hasn't happened in past year/but did happen before then"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD113   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 to 5 times" 4 "(4) 6 to 10 times"
                       5 "(5) 11 to 20 times"
                       6 "(6) More than 20 times (If LONG=1, add:)"
                       7 "(7) Hasn't happened in past year/but did happen before then"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD114   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 to 5 times" 4 "(4) 6 to 10 times"
                       5 "(5) 11 to 20 times"
                       6 "(6) More than 20 times (If LONG=1, add:)"
                       7 "(7) Hasn't happened in past year/but did happen before then"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD115   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 to 5 times" 4 "(4) 6 to 10 times"
                       5 "(5) 11 to 20 times"
                       6 "(6) More than 20 times (If LONG=1, add:)"
                       7 "(7) Hasn't happened in past year/but did happen before then"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD116   0 "(0) Never" 1 "(1) Once" 2 "(2) Twice"
                       3 "(3) 3 to 5 times" 4 "(4) 6 to 10 times"
                       5 "(5) 11 to 20 times"
                       6 "(6) More than 20 times (If LONG=1, add:)"
                       7 "(7) Hasn't happened in past year/but did happen before then"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD117   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD118   0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD119   1 "(1) Very satisfied" 2 "(2) Somewhat satisfied"
                       3 "(3) Neither dissatisfied or satisfied"
                       4 "(4) Somewhat dissatisfied"
                       5 "(5) Very dissatisfied"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD120   0 "(0) A lot" 1 "(1) Somewhat" 2 "(2) A little"
                       3 "(3) Not at all"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD121   0 "(0) A lot" 1 "(1) Somewhat" 2 "(2) A little"
                       3 "(3) Not at all"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD122   1 "(1) I am getting a much better deal than <PARTNER>"
                       2 "(2) I am getting a somewhat better deal"
                       3 "(3) We are both getting an equally good or equally bad deal"
                       4 "(4) <PARTNER> is getting a somewhat better deal"
                       5 "(5) <PARTNER> is getting a much better deal"
                       95 "(95) Question not asked of this respondent"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD123A  95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3RD123B  1 "(1) Years" 2 "(2) Months"
                       95 "(95) Question not asked of this respondent"
                       97 "(97) Legitimate skip" ;
label define H3RD124   1 "(1) Divorced" 2 "(2) Marriage annulled"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       9 "(9) Not applicable" ;
label define H3RD125   0 "(0) Never/hardly ever"
                       1 "(1) Less than half the time"
                       2 "(2) About half the time"
                       3 "(3) More than half the time"
                       4 "(4) Most of the time/every time"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD126   0 "(0) Never/hardly ever"
                       1 "(1) Less than half the time"
                       2 "(2) About half the time"
                       3 "(3) More than half the time"
                       4 "(4) Most of the time/every time"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD127   0 "(0) Never/hardly ever"
                       1 "(1) Less than half the time"
                       2 "(2) About half the time"
                       3 "(3) More than half the time"
                       4 "(4) Most of the time/every time"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD128   0 "(0) Never/hardly ever"
                       1 "(1) Less than half the time"
                       2 "(2) About half the time"
                       3 "(3) More than half the time"
                       4 "(4) Most of the time/every time"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD129   0 "(0) Never/hardly ever"
                       1 "(1) Less than half the time"
                       2 "(2) About half the time"
                       3 "(3) More than half the time"
                       4 "(4) Most of the time/every time"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD130   0 "(0) Never/hardly ever"
                       1 "(1) Less than half the time"
                       2 "(2) About half the time"
                       3 "(3) More than half the time"
                       4 "(4) Most of the time/every time"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD131   0 "(0) Never/hardly ever"
                       1 "(1) Less than half the time"
                       2 "(2) About half the time"
                       3 "(3) More than half the time"
                       4 "(4) Most of the time/every time"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD132   0 "(0) Never/hardly ever"
                       1 "(1) Less than half the time"
                       2 "(2) About half the time"
                       3 "(3) More than half the time"
                       4 "(4) Most of the time/every time"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3RD133   0 "(0) Never/hardly ever"
                       1 "(1) Less than half the time"
                       2 "(2) About half the time"
                       3 "(3) More than half the time"
                       4 "(4) Most of the time/every time"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define E_SUBSEC  1 "(1) Couples Sample/Morris Sample/Udry Sample"
                       2 "(2) Couples Sample/Morris Sample"
                       3 "(3) Couples Sample/Udry Sample"
                       4 "(4) Morris Sample/Udry Sample"
                       5 "(5) Couples Sample" 6 "(6) Morris Sample"
                       7 "(7) Udry Sample" ;


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
replace H3RD1 = . if (H3RD1 >= 95 & H3RD1 <= 99)
replace H3RD2 = . if (H3RD2 >= 95 & H3RD2 <= 99)
replace H3RD3 = . if (H3RD3 >= 5 & H3RD3 <= 9)
replace H3RD4 = . if (H3RD4 >= 95 & H3RD4 <= 99)
replace H3RD5 = . if (H3RD5 >= 95 & H3RD5 <= 99)
replace H3RD6M = . if (H3RD6M >= 95 & H3RD6M <= 99)
replace H3RD6Y = . if (H3RD6Y >= 9995 & H3RD6Y <= 9999)
replace H3RD7 = . if (H3RD7 >= 5 & H3RD7 <= 8)
replace H3RD8 = . if (H3RD8 >= 96 & H3RD8 <= 99)
replace H3RD9 = . if (H3RD9 >= 96 & H3RD9 <= 99)
replace H3RD10M = . if (H3RD10M >= 96 & H3RD10M <= 99)
replace H3RD10Y = . if (H3RD10Y >= 9996 & H3RD10Y <= 9999)
replace H3RD11 = . if (H3RD11 == 7 | H3RD11 == 8)
replace H3RD12M = . if (H3RD12M >= 96 & H3RD12M <= 99)
replace H3RD12Y = . if (H3RD12Y >= 9996 & H3RD12Y <= 9999)
replace H3RD13 = . if (H3RD13 >= 6 & H3RD13 <= 9)
replace H3RD14A = . if (H3RD14A >= 96 & H3RD14A <= 99)
replace H3RD14B = . if (H3RD14B == 7)
replace H3RD15A = . if (H3RD15A >= 95 & H3RD15A <= 99)
replace H3RD15B = . if (H3RD15B == 5 | H3RD15B == 7)
replace H3RD16A = . if (H3RD16A >= 95 & H3RD16A <= 99)
replace H3RD16B = . if (H3RD16B == 5 | H3RD16B == 7)
replace H3RD16T1 = . if (H3RD16T1 >= 95 & H3RD16T1 <= 99)
replace H3RD16T2 = . if (H3RD16T2 == 5 | H3RD16T2 == 7)
replace H3RD17A = . if (H3RD17A >= 95 & H3RD17A <= 99)
replace H3RD17B = . if (H3RD17B == 5 | H3RD17B == 7)
replace H3RD18A = . if (H3RD18A >= 96 & H3RD18A <= 99)
replace H3RD18B = . if (H3RD18B == 7)
replace H3RD19A = . if (H3RD19A >= 95 & H3RD19A <= 99)
replace H3RD19B = . if (H3RD19B == 5 | H3RD19B == 7)
replace H3RD20M = . if (H3RD20M >= 95 & H3RD20M <= 99)
replace H3RD20Y = . if (H3RD20Y >= 9995 & H3RD20Y <= 9999)
replace H3RD21 = . if (H3RD21 >= 95 & H3RD21 <= 99)
replace H3RD22 = . if (H3RD22 >= 5 & H3RD22 <= 9)
replace H3RD23A = . if (H3RD23A == 5 | H3RD23A == 7)
replace H3RD23B = . if (H3RD23B == 5 | H3RD23B == 7)
replace H3RD23C = . if (H3RD23C == 5 | H3RD23C == 7)
replace H3RD23D = . if (H3RD23D == 5 | H3RD23D == 7)
replace H3RD23E = . if (H3RD23E == 5 | H3RD23E == 7)
replace H3RD24 = . if (H3RD24 >= 5 & H3RD24 <= 9)
replace H3RD25A = . if (H3RD25A == 5 | H3RD25A == 7)
replace H3RD25B = . if (H3RD25B == 5 | H3RD25B == 7 | H3RD25B == 9)
replace H3RD25C = . if (H3RD25C == 5 | H3RD25C == 7 | H3RD25C == 9)
replace H3RD25D = . if (H3RD25D == 5 | H3RD25D == 7 | H3RD25D == 9)
replace H3RD25E = . if (H3RD25E == 5 | H3RD25E == 7 | H3RD25E == 9)
replace H3RD26 = . if (H3RD26 >= 6 & H3RD26 <= 9)
replace H3RD27 = . if (H3RD27 >= 6 & H3RD27 <= 9)
replace H3RD28 = . if (H3RD28 >= 5 & H3RD28 <= 9)
replace H3RD29 = . if (H3RD29 == 5)
replace H3RD29 = . if (H3RD29 >= 7 & H3RD29 <= 9)
replace H3RD30 = . if (H3RD30 >= 5 & H3RD30 <= 9)
replace H3RD31 = . if (H3RD31 >= 5 & H3RD31 <= 7)
replace H3RD32 = . if (H3RD32 == 5 | H3RD32 == 7 | H3RD32 == 8)
replace H3RD33 = . if (H3RD33 >= 5 & H3RD33 <= 7)
replace H3RD34 = . if (H3RD34 >= 5 & H3RD34 <= 9)
replace H3RD35 = . if (H3RD35 >= 5 & H3RD35 <= 9)
replace H3RD36 = . if (H3RD36 >= 5 & H3RD36 <= 9)
replace H3RD37 = . if (H3RD37 >= 5 & H3RD37 <= 9)
replace H3RD38 = . if (H3RD38 >= 95 & H3RD38 <= 99)
replace H3RD39 = . if (H3RD39 == 96 | H3RD39 == 98 | H3RD39 == 99)
replace H3RD40 = . if (H3RD40 == 96 | H3RD40 == 98 | H3RD40 == 99)
replace H3RD41 = . if (H3RD41 >= 5 & H3RD41 <= 9)
replace H3RD42 = . if (H3RD42 >= 95 & H3RD42 <= 99)
replace H3RD43 = . if (H3RD43 >= 5 & H3RD43 <= 9)
replace H3RD44 = . if (H3RD44 == 5 | H3RD44 == 7 | H3RD44 == 8)
replace H3RD45A = . if (H3RD45A >= 5 & H3RD45A <= 8)
replace H3RD45B = . if (H3RD45B >= 5 & H3RD45B <= 8)
replace H3RD45C = . if (H3RD45C >= 5 & H3RD45C <= 8)
replace H3RD45D = . if (H3RD45D >= 5 & H3RD45D <= 8)
replace H3RD45E = . if (H3RD45E >= 5 & H3RD45E <= 8)
replace H3RD45F = . if (H3RD45F >= 5 & H3RD45F <= 8)
replace H3RD45G = . if (H3RD45G >= 5 & H3RD45G <= 8)
replace H3RD45H = . if (H3RD45H >= 5 & H3RD45H <= 8)
replace H3RD45I = . if (H3RD45I >= 5 & H3RD45I <= 8)
replace H3RD45J = . if (H3RD45J >= 5 & H3RD45J <= 8)
replace H3RD45K = . if (H3RD45K >= 5 & H3RD45K <= 8)
replace H3RD45L = . if (H3RD45L >= 5 & H3RD45L <= 8)
replace H3RD45M = . if (H3RD45M >= 5 & H3RD45M <= 8)
replace H3RD46 = . if (H3RD46 >= 5 & H3RD46 <= 9)
replace H3RD47M = . if (H3RD47M >= 95 & H3RD47M <= 99)
replace H3RD47Y = . if (H3RD47Y >= 9995 & H3RD47Y <= 9999)
replace H3RD48A = . if (H3RD48A >= 995 & H3RD48A <= 999)
replace H3RD48B = . if (H3RD48B == 5 | H3RD48B == 7)
replace H3RD49 = . if (H3RD49 >= 5 & H3RD49 <= 9)
replace H3RD50A = . if (H3RD50A >= 5 & H3RD50A <= 9)
replace H3RD50B = . if (H3RD50B >= 5 & H3RD50B <= 9)
replace H3RD50C = . if (H3RD50C >= 5 & H3RD50C <= 9)
replace H3RD50D = . if (H3RD50D >= 5 & H3RD50D <= 9)
replace H3RD50E = . if (H3RD50E >= 5 & H3RD50E <= 9)
replace H3RD50F = . if (H3RD50F >= 5 & H3RD50F <= 9)
replace H3RD50G = . if (H3RD50G >= 5 & H3RD50G <= 9)
replace H3RD50H = . if (H3RD50H >= 5 & H3RD50H <= 9)
replace H3RD50I = . if (H3RD50I >= 5 & H3RD50I <= 9)
replace H3RD50J = . if (H3RD50J >= 5 & H3RD50J <= 9)
replace H3RD50K = . if (H3RD50K >= 5 & H3RD50K <= 9)
replace H3RD50L = . if (H3RD50L >= 5 & H3RD50L <= 9)
replace H3RD50M = . if (H3RD50M >= 5 & H3RD50M <= 9)
replace H3RD51 = . if (H3RD51 >= 5 & H3RD51 <= 9)
replace H3RD52M = . if (H3RD52M >= 95 & H3RD52M <= 99)
replace H3RD52Y = . if (H3RD52Y >= 9995 & H3RD52Y <= 9999)
replace H3RD53 = . if (H3RD53 >= 5 & H3RD53 <= 9)
replace H3RD54A = . if (H3RD54A >= 5 & H3RD54A <= 9)
replace H3RD54B = . if (H3RD54B >= 5 & H3RD54B <= 9)
replace H3RD54C = . if (H3RD54C >= 5 & H3RD54C <= 9)
replace H3RD54D = . if (H3RD54D >= 5 & H3RD54D <= 9)
replace H3RD54E = . if (H3RD54E >= 5 & H3RD54E <= 9)
replace H3RD54F = . if (H3RD54F >= 5 & H3RD54F <= 9)
replace H3RD54G = . if (H3RD54G >= 5 & H3RD54G <= 9)
replace H3RD54H = . if (H3RD54H >= 5 & H3RD54H <= 9)
replace H3RD54I = . if (H3RD54I >= 5 & H3RD54I <= 9)
replace H3RD54J = . if (H3RD54J >= 5 & H3RD54J <= 9)
replace H3RD54K = . if (H3RD54K >= 5 & H3RD54K <= 9)
replace H3RD54L = . if (H3RD54L >= 5 & H3RD54L <= 9)
replace H3RD54M = . if (H3RD54M >= 5 & H3RD54M <= 9)
replace H3RD55 = . if (H3RD55 >= 5 & H3RD55 <= 9)
replace H3RD56 = . if (H3RD56 >= 95 & H3RD56 <= 99)
replace H3RD57 = . if (H3RD57 >= 5 & H3RD57 <= 9)
replace H3RD58 = . if (H3RD58 == 6 | H3RD58 == 8 | H3RD58 == 9)
replace H3RD59 = . if (H3RD59 >= 96 & H3RD59 <= 99)
replace H3RD60 = . if (H3RD60 >= 5 & H3RD60 <= 9)
replace H3RD61 = . if (H3RD61 >= 5 & H3RD61 <= 9)
replace H3RD62M = . if (H3RD62M >= 95 & H3RD62M <= 99)
replace H3RD62Y = . if (H3RD62Y >= 9995 & H3RD62Y <= 9999)
replace H3RD63A = . if (H3RD63A >= 995 & H3RD63A <= 999)
replace H3RD63B = . if (H3RD63B == 5 | H3RD63B == 7)
replace H3RD64 = . if (H3RD64 >= 5 & H3RD64 <= 9)
replace H3RD65 = . if (H3RD65 >= 5 & H3RD65 <= 8)
replace H3RD66M = . if (H3RD66M >= 95 & H3RD66M <= 99)
replace H3RD66Y = . if (H3RD66Y >= 9995 & H3RD66Y <= 9999)
replace H3RD67 = . if (H3RD67 == 5 | H3RD67 == 7)
replace H3RD68 = . if (H3RD68 >= 95 & H3RD68 <= 99)
replace H3RD69 = . if (H3RD69 >= 5 & H3RD69 <= 9)
replace H3RD70 = . if (H3RD70 == 6 | H3RD70 == 8 | H3RD70 == 9)
replace H3RD71 = . if (H3RD71 >= 96 & H3RD71 <= 99)
replace H3RD72 = . if (H3RD72 >= 5 & H3RD72 <= 9)
replace H3RD73 = . if (H3RD73 >= 5 & H3RD73 <= 7)
replace H3RD74M = . if (H3RD74M >= 95 & H3RD74M <= 99)
replace H3RD74Y = . if (H3RD74Y >= 9995 & H3RD74Y <= 9999)
replace H3RD75A = . if (H3RD75A >= 995 & H3RD75A <= 999)
replace H3RD75B = . if (H3RD75B == 5 | H3RD75B == 7)
replace H3RD76 = . if (H3RD76 >= 5 & H3RD76 <= 9)
replace H3RD77 = . if (H3RD77 == 5 | H3RD77 == 7 | H3RD77 == 8)
replace H3RD78M = . if (H3RD78M == 95 | H3RD78M == 97 | H3RD78M == 98)
replace H3RD78Y = . if (H3RD78Y == 9995 | H3RD78Y == 9997 | H3RD78Y == 9998)
replace H3RD79 = . if (H3RD79 == 5 | H3RD79 == 7 | H3RD79 == 8)
replace H3RD80 = . if (H3RD80 >= 95 & H3RD80 <= 99)
replace H3RD81 = . if (H3RD81 >= 5 & H3RD81 <= 9)
replace H3RD82 = . if (H3RD82 >= 5 & H3RD82 <= 9)
replace H3RD83 = . if (H3RD83 >= 95 & H3RD83 <= 99)
replace H3RD84 = . if (H3RD84 >= 5 & H3RD84 <= 9)
replace H3RD85 = . if (H3RD85 == 5 | H3RD85 == 7 | H3RD85 == 8)
replace H3RD86M = . if (H3RD86M >= 95 & H3RD86M <= 99)
replace H3RD86Y = . if (H3RD86Y >= 9995 & H3RD86Y <= 9999)
replace H3RD87A = . if (H3RD87A == 95 | H3RD87A == 97 | H3RD87A == 98)
replace H3RD87B = . if (H3RD87B == 5 | H3RD87B == 7)
replace H3RD88 = . if (H3RD88 == 5 | H3RD88 == 7 | H3RD88 == 8)
replace H3RD89 = . if (H3RD89 == 5 | H3RD89 == 7 | H3RD89 == 8)
replace H3RD90M = . if (H3RD90M == 95 | H3RD90M == 97 | H3RD90M == 98)
replace H3RD90Y = . if (H3RD90Y == 9995 | H3RD90Y == 9997 | H3RD90Y == 9998)
replace H3RD91 = . if (H3RD91 == 5 | H3RD91 == 7)
replace H3RD92 = . if (H3RD92 >= 95 & H3RD92 <= 99)
replace H3RD93 = . if (H3RD93 == 5 | H3RD93 == 7 | H3RD93 == 8)
replace H3RD94 = . if (H3RD94 >= 5 & H3RD94 <= 9)
replace H3RD95 = . if (H3RD95 >= 95 & H3RD95 <= 99)
replace H3RD96 = . if (H3RD96 >= 5 & H3RD96 <= 9)
replace H3RD97 = . if (H3RD97 == 5 | H3RD97 == 7)
replace H3RD98M = . if (H3RD98M >= 95 & H3RD98M <= 99)
replace H3RD98Y = . if (H3RD98Y >= 9995 & H3RD98Y <= 9999)
replace H3RD99A = . if (H3RD99A == 95)
replace H3RD99A = . if (H3RD99A >= 97 & H3RD99A <= 99)
replace H3RD99B = . if (H3RD99B == 5 | H3RD99B == 7)
replace H3RD100 = . if (H3RD100 == 5 | H3RD100 == 7)
replace H3RD101 = . if (H3RD101 == 5 | H3RD101 == 7)
replace H3RD102M = . if (H3RD102M >= 95 & H3RD102M <= 98)
replace H3RD102Y = . if (H3RD102Y >= 9995 & H3RD102Y <= 9998)
replace H3RD103 = . if (H3RD103 == 5 | H3RD103 == 7)
replace H3RD104 = . if (H3RD104 >= 95 & H3RD104 <= 99)
replace H3RD105 = . if (H3RD105 == 5 | H3RD105 == 7 | H3RD105 == 8)
replace H3RD106 = . if (H3RD106 >= 95 & H3RD106 <= 99)
replace H3RD107 = . if (H3RD107 >= 5 & H3RD107 <= 9)
replace H3RD108 = . if (H3RD108 >= 5 & H3RD108 <= 9)
replace H3RD109 = . if (H3RD109 >= 95 & H3RD109 <= 99)
replace H3RD110 = . if (H3RD110 >= 95 & H3RD110 <= 99)
replace H3RD111 = . if (H3RD111 >= 95 & H3RD111 <= 99)
replace H3RD112 = . if (H3RD112 >= 95 & H3RD112 <= 99)
replace H3RD113 = . if (H3RD113 >= 95 & H3RD113 <= 99)
replace H3RD114 = . if (H3RD114 >= 95 & H3RD114 <= 99)
replace H3RD115 = . if (H3RD115 >= 95 & H3RD115 <= 99)
replace H3RD116 = . if (H3RD116 >= 95 & H3RD116 <= 99)
replace H3RD117 = . if (H3RD117 >= 5 & H3RD117 <= 9)
replace H3RD118 = . if (H3RD118 >= 5 & H3RD118 <= 9)
replace H3RD119 = . if (H3RD119 >= 95 & H3RD119 <= 99)
replace H3RD120 = . if (H3RD120 >= 5 & H3RD120 <= 9)
replace H3RD121 = . if (H3RD121 >= 5 & H3RD121 <= 9)
replace H3RD122 = . if (H3RD122 >= 95 & H3RD122 <= 99)
replace H3RD123A = . if (H3RD123A >= 95 & H3RD123A <= 99)
replace H3RD123B = . if (H3RD123B == 95 | H3RD123B == 97)
replace H3RD124 = . if (H3RD124 == 9)
replace H3RD124 = . if (H3RD124 >= 5 & H3RD124 <= 7)
replace H3RD125 = . if (H3RD125 >= 5 & H3RD125 <= 9)
replace H3RD126 = . if (H3RD126 >= 5 & H3RD126 <= 9)
replace H3RD127 = . if (H3RD127 >= 5 & H3RD127 <= 9)
replace H3RD128 = . if (H3RD128 >= 5 & H3RD128 <= 9)
replace H3RD129 = . if (H3RD129 >= 5 & H3RD129 <= 9)
replace H3RD130 = . if (H3RD130 >= 5 & H3RD130 <= 9)
replace H3RD131 = . if (H3RD131 >= 5 & H3RD131 <= 9)
replace H3RD132 = . if (H3RD132 >= 5 & H3RD132 <= 9)
replace H3RD133 = . if (H3RD133 >= 5 & H3RD133 <= 9)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

