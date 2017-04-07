/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |       (DATASET 0024: WAVE IV: IN-HOME QUESTIONNAIRE, PUBLIC USE
 |                  SAMPLE (SECTION 16C: RELATIONSHIPS))
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0024-statasetup.do)
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
format H4TR25 %1.0f
format H4TR26 %1.0f
format H4TR27Y %4.0f
format H4TR28Y %4.0f
format TSDURATN %3.0f
format H4TR29 %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave IV: In-Home Questionnaire, Public Use Sample (Section 16C: Relationships)"

#delimit ;
label define H4TR25    1 "(1) Marriage" 2 "(2) Cohabitation"
                       3 "(3) Pregnancy" 4 "(4) Current dating"
                       5 "(5) Most recent" ;
label define H4TR26    1 "(1) 1st" 2 "(2) 2nd" 3 "(3) 3rd" 8 "(8) All" ;
label define H4TR27Y   9996 "(9996) Refused" 9998 "(9998) Don't know" ;
label define H4TR28Y   9917 "(9917) Relationship not ended"
                       9996 "(9996) Refused" 9998 "(9998) Don't know" ;
label define TSDURATN  998 "(998) Don't know" ;
label define H4TR29    1 "(1) Divorce" 2 "(2) Annulment" 3 "(3) Spouse died"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;


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
replace H4TR27Y = . if (H4TR27Y == 9996 | H4TR27Y == 9998)
replace H4TR28Y = . if (H4TR28Y == 9917 | H4TR28Y == 9996 | H4TR28Y == 9998)
replace TSDURATN = . if (TSDURATN == 998)
replace H4TR29 = . if (H4TR29 == 6 | H4TR29 == 7 | H4TR29 == 8)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

