/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |       (DATASET 0023: WAVE IV: IN-HOME QUESTIONNAIRE, PUBLIC USE
 |                  SAMPLE (SECTION 16B: RELATIONSHIPS))
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0023-statasetup.do)
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
format H4TR13 %1.0f
format H4TR14 %1.0f
format H4TR15 %1.0f
format H4TR16 %1.0f
format H4TR17 %2.0f
format H4TR18 %2.0f
format H4TR19 %1.0f
format H4TR20 %2.0f
format H4TR21 %1.0f
format H4TR22 %2.0f
format H4TR23 %1.0f
format H4TR24 %2.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave IV: In-Home Questionnaire, Public Use Sample (Section 16B: Relationships)"

#delimit ;
label define H4TR13    1 "(1) Marriage" 2 "(2) Cohabitation"
                       3 "(3) Pregnancy" 4 "(4) Current dating"
                       5 "(5) Most recent" ;
label define H4TR14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4TR15    1 "(1) 1 time" 2 "(2) 2 or more times" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4TR16    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H4TR17    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TR18    8 "(8) 8 or more" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4TR19    1 "(1) Male" 2 "(2) Female" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4TR20    60 "(60) 60 years or older" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4TR21    1 "(1) Younger" 2 "(2) Older" 3 "(3) Same age"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H4TR22    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4TR23    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4TR24    1 "(1) White" 2 "(2) Black or African-American"
                       3 "(3) American Indian or Native American"
                       4 "(4) Asian or Pacific Islander" 5 "(5) Other"
                       96 "(96) Refused" 98 "(98) Don't know" ;


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
replace H4TR14 = . if (H4TR14 == 6 | H4TR14 == 7 | H4TR14 == 8)
replace H4TR15 = . if (H4TR15 == 6 | H4TR15 == 7)
replace H4TR16 = . if (H4TR16 == 6 | H4TR16 == 7)
replace H4TR17 = . if (H4TR17 == 96 | H4TR17 == 97 | H4TR17 == 98)
replace H4TR18 = . if (H4TR18 == 96 | H4TR18 == 97 | H4TR18 == 98)
replace H4TR19 = . if (H4TR19 == 6 | H4TR19 == 8)
replace H4TR20 = . if (H4TR20 == 96 | H4TR20 == 98)
replace H4TR21 = . if (H4TR21 == 6 | H4TR21 == 7 | H4TR21 == 8)
replace H4TR22 = . if (H4TR22 == 96 | H4TR22 == 97 | H4TR22 == 98)
replace H4TR23 = . if (H4TR23 == 6 | H4TR23 == 8)
replace H4TR24 = . if (H4TR24 == 96 | H4TR24 == 98)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

