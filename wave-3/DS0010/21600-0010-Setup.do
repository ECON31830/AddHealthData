/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0010: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |                 USE SAMPLE (SECTION 18: PREGNANCIES))
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0010-statasetup.do)
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
format H3TP1 %1.0f
format H3TP2M %2.0f
format H3TP2Y %4.0f
format H3TP3 %2.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave III: In-Home Questionnaire, Public Use Sample (Section 18: Pregnancies)"

#delimit ;
label define H3TP1     1 "(1) Miscarriage" 2 "(2) Abortion"
                       3 "(3) Single, stillbirth" 4 "(4) Live birth"
                       5 "(5) Pregnancy not yet ended"
                       6 "(6) Multiple, no live birth"
                       7 "(7) Multiple, involving both a live birth and another outcom" ;
label define H3TP2M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December" ;
label define H3TP3     1 "(1) 1 live birth" 2 "(2) 2 live births"
                       3 "(3) 3 live births" 97 "(97) Legitimate skip" ;


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
replace H3TP3 = . if (H3TP3 == 97)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

