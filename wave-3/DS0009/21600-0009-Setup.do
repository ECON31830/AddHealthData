/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0009: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |                USE SAMPLE (SECTION 17: RELATIONSHIPS))
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0009-statasetup.do)
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
format H3TR1 %1.0f
format H3TR2 %1.0f
format H3TR3 %1.0f
format H3TR4 %1.0f
format H3TR5 %2.0f
format PAGE %2.0f
format H3TR6 %1.0f
format H3TR7 %1.0f
format H3TR8 %1.0f
format H3TR9 %1.0f
format H3TR10 %2.0f
format H3TR11 %1.0f
format H3TR12 %1.0f
format H3TR13 %1.0f
format H3TR14 %1.0f
format SXORDER %2.0f
format CP %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave III: In-Home Questionnaire, Public Use Sample (Section 17: Relationships)"

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
label define H3TR1     0 "(0) No, this isn't a current relationship"
                       1 "(1) Yes, this is a current relationship"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TR2     0 "(0) No, this relationship didn't last three months"
                       1 "(1) Yes, this relationship lasted three months"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TR3     1 "(1) Male" 2 "(2) Female" ;
label define H3TR4     1 "(1) Older" 2 "(2) Younger" 3 "(3) Same age" ;
label define H3TR5     97 "(97) Legitimate skip" ;
label define H3TR6     1 "(1) American Indian/Native American"
                       2 "(2) Asian/Pacific Islander"
                       3 "(3) Black/African-American" 4 "(4) White"
                       5 "(5) Other" 6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TR7     0 "(0) No, this person isn't Hispanic"
                       1 "(1) Yes, this person is Hispanic" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TR8     0 "(0) No, we haven't had sexual relations"
                       1 "(1) Yes, we have had sexual relations"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TR9
                       0 "(0) No/this relationship didn't include pregnancy (skip to Q"
                       1 "(1) Yes, this relationship included a pregnancy"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TR10    1 "(1) 1 pregnancy" 2 "(2) 2 pregnancies"
                       3 "(3) 3 pregnancies" 4 "(4) 4 pregnancies"
                       5 "(5) 5 pregnancies" 6 "(6) 6 pregnancies"
                       7 "(7) 7 pregnancies" 8 "(8) 8 pregnancies"
                       9 "(9) 9 pregnancies" 10 "(10) 10 pregnancies"
                       97 "(97) Legitimate skip" ;
label define H3TR11    0 "(0) You have never lived together"
                       1 "(1) You live together at the present time"
                       2 "(2) You lived together in past/but don't live together now"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TR12    0 "(0) You have never been married"
                       1 "(1) You are currently married"
                       2 "(2) You were once married, but aren't married now"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3TR13    0 "(0) No, we didn't adopt a child"
                       1 "(1) Yes, we did adopt a child" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3TR14    0 "(0) No" 1 "(1) Yes"
                       5 "(5) Question not asked of this respondent"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define SXORDER   1 "(1) Partner you had sex with most recently"
                       2 "(2) Next partner you had sex with"
                       3 "(3) Following partner you had sex with" ;
label define CP
                       1 "(1) Couple questions asked; asked to recruit this partner"
                       2 "(2) Couple questions asked; not asked to recruit this partne"
                       3 "(3) Couple questions asked" ;


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
replace H3TR1 = . if (H3TR1 == 6 | H3TR1 == 8 | H3TR1 == 9)
replace H3TR2 = . if (H3TR2 == 6 | H3TR2 == 8 | H3TR2 == 9)
replace H3TR5 = . if (H3TR5 == 97)
replace H3TR6 = . if (H3TR6 == 6 | H3TR6 == 8 | H3TR6 == 9)
replace H3TR7 = . if (H3TR7 == 6 | H3TR7 == 8 | H3TR7 == 9)
replace H3TR8 = . if (H3TR8 == 6 | H3TR8 == 8 | H3TR8 == 9)
replace H3TR9 = . if (H3TR9 == 6 | H3TR9 == 8 | H3TR9 == 9)
replace H3TR10 = . if (H3TR10 == 97)
replace H3TR11 = . if (H3TR11 == 6 | H3TR11 == 8 | H3TR11 == 9)
replace H3TR12 = . if (H3TR12 == 6 | H3TR12 == 8 | H3TR12 == 9)
replace H3TR13 = . if (H3TR13 == 6 | H3TR13 == 8 | H3TR13 == 9)
replace H3TR14 = . if (H3TR14 >= 5 & H3TR14 <= 9)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

