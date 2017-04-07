/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0014: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |                 USE SAMPLE (SECTION 24: LIVE BIRTHS))
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0014-statasetup.do)
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
format RPREGNO %1.0f
format BIRTHNO %1.0f
format H3LB1 %1.0f
format H3LB2 %2.0f
format H3LB3 %1.0f
format H3LB4 %1.0f
format H3LB5A %2.0f
format H3LB5B %2.0f
format H3LB6 %2.0f
format H3LB7 %1.0f
format H3LB8 %2.0f
format H3LB9 %1.0f
format H3LB10 %1.0f
format H3LB11 %1.0f
format H3LB12M %2.0f
format H3LB12Y %4.0f
format H3LB13 %1.0f
format H3LB14 %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave III: In-Home Questionnaire, Public Use Sample (Section 24: Live Births)"

#delimit ;
label define BIRTHNO   1 "(1) 1st birth listed" 2 "(2) 2nd birth listed" ;
label define H3LB1     0 "(0) No" 1 "(1) Yes (skip to Q.3)" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3LB2     2 "(2) Put up for adoption"
                       3 "(3) Died in the hospital"
                       4 "(4) Went to live with <PARTNER>"
                       5 "(5) Went to live with another relative"
                       6 "(6) Still in the hospital" 7 "(7) Other"
                       97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3LB3     1 "(1) Boy" 2 "(2) Girl" 6 "(6) Refused (skip to Q.5)"
                       8 "(8) Don't know (skip to Q.5)"
                       9 "(9) Not applicable" ;
label define H3LB4     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3LB5A    1 "(1) 1 pound" 2 "(2) 2 pounds" 3 "(3) 3 pounds"
                       4 "(4) 4 pounds" 5 "(5) 5 pounds" 6 "(6) 6 pounds"
                       7 "(7) 7 pounds" 8 "(8) 8 pounds" 9 "(9) 9 pounds"
                       10 "(10) 10 pounds" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3LB5B    96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3LB6     96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3LB7     0 "(0) No (skip to Q.9)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3LB8     97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3LB9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3LB10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3LB11    0 "(0) No" 1 "(1) Yes (skip to Q.13)" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3LB12M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" ;
label define H3LB12Y   1993 "(1993) 1993" 1996 "(1996) 1996"
                       1997 "(1997) 1997" 1998 "(1998) 1998"
                       1999 "(1999) 1999" 2000 "(2000) 2000"
                       2001 "(2001) 2001" 9997 "(9997) Legitimate skip" ;
label define H3LB13    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3LB14    0 "(0) No" 1 "(1) Yes"
                       2 "(2) Partly-child has hyphenated/combination name"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;


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
replace H3LB1 = . if (H3LB1 == 6 | H3LB1 == 8 | H3LB1 == 9)
replace H3LB2 = . if (H3LB2 == 97 | H3LB2 == 99)
replace H3LB3 = . if (H3LB3 == 6 | H3LB3 == 8 | H3LB3 == 9)
replace H3LB4 = . if (H3LB4 == 7)
replace H3LB5A = . if (H3LB5A == 96 | H3LB5A == 98 | H3LB5A == 99)
replace H3LB5B = . if (H3LB5B == 96 | H3LB5B == 98 | H3LB5B == 99)
replace H3LB6 = . if (H3LB6 == 96 | H3LB6 == 98 | H3LB6 == 99)
replace H3LB7 = . if (H3LB7 == 6 | H3LB7 == 8 | H3LB7 == 9)
replace H3LB8 = . if (H3LB8 == 97 | H3LB8 == 98)
replace H3LB9 = . if (H3LB9 == 6 | H3LB9 == 8 | H3LB9 == 9)
replace H3LB10 = . if (H3LB10 == 6 | H3LB10 == 8 | H3LB10 == 9)
replace H3LB11 = . if (H3LB11 >= 6 & H3LB11 <= 9)
replace H3LB12M = . if (H3LB12M == 97)
replace H3LB12Y = . if (H3LB12Y == 9997)
replace H3LB13 = . if (H3LB13 == 6 | H3LB13 == 8 | H3LB13 == 9)
replace H3LB14 = . if (H3LB14 == 6 | H3LB14 == 8 | H3LB14 == 9)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

