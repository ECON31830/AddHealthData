/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |       (DATASET 0026: WAVE IV: IN-HOME QUESTIONNAIRE, PUBLIC USE
 |                   SAMPLE (SECTION 19: LIVE BIRTHS))
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0026-statasetup.do)
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

format PTNR_ID %2.0f
format PRGNO %2.0f
format LBNO %1.0f
format H4LB1 %1.0f
format H4LB2Y %4.0f
format H4LB3 %1.0f
format H4LB4 %1.0f
format H4LB5 %2.0f
format H4LB6P %2.0f
format H4LB6O %2.0f
format H4LB7 %1.0f
format H4LB8 %1.0f
format H4LB9W %2.0f
format H4LB9D %3.0f
format H4LB10 %1.0f
format H4LB11Y %4.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave IV: In-Home Questionnaire, Public Use Sample (Section 19: Live Births)"

#delimit ;
label define H4LB1     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4LB2Y    9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H4LB3     1 "(1) Boy" 2 "(2) Girl" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4LB4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4LB5     1 "(1) Put up for adoption"
                       2 "(2) Died in the hospital"
                       3 "(3) Went to live with {initials}"
                       4 "(4) Went to live with another relative"
                       5 "(5) Still in the hospital" 6 "(6) Other"
                       97 "(97) Legitimate skip" ;
label define H4LB6P    13 "(13) 13 or more pounds" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4LB6O    96 "(96) Refused" 98 "(98) Don't know" ;
label define H4LB7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4LB8     1 "(1) Before due date" 2 "(2) After due date"
                       3 "(3) On due date" 6 "(6) Refused" 8 "(8) Don't know" ;
label define H4LB9W    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4LB9D    996 "(996) Refused" 997 "(997) Legitimate skip"
                       998 "(998) Don't know" ;
label define H4LB10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4LB11Y   1995 "(1995) 1994-1996" 2007 "(2007) 2006-2008"
                       9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;


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
replace H4LB1 = . if (H4LB1 == 6 | H4LB1 == 7 | H4LB1 == 8)
replace H4LB2Y = . if (H4LB2Y == 9996 | H4LB2Y == 9997 | H4LB2Y == 9998)
replace H4LB3 = . if (H4LB3 == 6 | H4LB3 == 8)
replace H4LB4 = . if (H4LB4 == 6 | H4LB4 == 8)
replace H4LB5 = . if (H4LB5 == 97)
replace H4LB6P = . if (H4LB6P == 96 | H4LB6P == 98)
replace H4LB6O = . if (H4LB6O == 96 | H4LB6O == 98)
replace H4LB7 = . if (H4LB7 == 6 | H4LB7 == 7 | H4LB7 == 8)
replace H4LB8 = . if (H4LB8 == 6 | H4LB8 == 8)
replace H4LB9W = . if (H4LB9W == 96 | H4LB9W == 97 | H4LB9W == 98)
replace H4LB9D = . if (H4LB9D == 996 | H4LB9D == 997 | H4LB9D == 998)
replace H4LB10 = . if (H4LB10 == 6 | H4LB10 == 7 | H4LB10 == 8)
replace H4LB11Y = . if (H4LB11Y == 9996 | H4LB11Y == 9997 | H4LB11Y == 9998)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

