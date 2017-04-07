/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |       (DATASET 0025: WAVE IV: IN-HOME QUESTIONNAIRE, PUBLIC USE
 |                 SAMPLE (SECTION 18: PREGNANCY TABLE))
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0025-statasetup.do)
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
format H4PG1 %2.0f
format H4PG2Y %4.0f
format H4PG3Y %4.0f
format H4PG5 %2.0f
format H4PG6 %1.0f
format H4PG7 %1.0f
format H4PG8 %1.0f
format H4PG9 %1.0f
format H4PG10 %1.0f
format H4PG11 %2.0f
format H4PG12 %1.0f
format H4PG13 %2.0f
format H4PG14 %2.0f
format H4PG15 %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave IV: In-Home Questionnaire, Public Use Sample (Section 18: Pregnancy Table)"

#delimit ;
label define H4PG1     1 "(1) Abortion" 2 "(2) Ectopic or tubal pregnancy"
                       3 "(3) Miscarriage" 4 "(4) Stillbirth"
                       5 "(5) Live birth by Cesarean section"
                       6 "(6) Live birth by vaginal delivery"
                       7 "(7) Pregnancy has not ended (currently pregnant)"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H4PG2Y    9994 "(9994) 1995 and before"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H4PG3Y    9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H4PG5     96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4PG6     1 "(1) Fraternal" 2 "(2) Identical" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4PG7     0 "(0) No" 1 "(1) Yes"
                       2 "(2) Pregnancy result of artificial insemination/sperm donor"
                       6 "(6) Refused" 8 "(8) Don't know" ;
label define H4PG8     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4PG9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4PG10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4PG11    1 "(1) We (do/did not) see or talk to each other"
                       2 "(2) We hardly ever (see/saw) or (talk/talked) to each other"
                       3 "(3) We (are/were) just friends"
                       4 "(4) We (are/were) involved in an on-again/off-again relation"
                       5 "(5) We (are/were) romantically involved on a steady basis"
                       95 "(95) Not asked in pretest" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4PG12    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4PG13    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4PG14    0 "(0) None"
                       1 "(1) A few cigarettes, but not every week"
                       2 "(2) A few cigarettes a week, but not every day"
                       3 "(3) 10 or fewer a day" 4 "(4) 11 to 20 a day"
                       5 "(5) 21 to 30 a day" 6 "(6) 31 or more a day"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4PG15    0 "(0) Never" 1 "(1) Once a month or less"
                       2 "(2) 2 or 3 days a month" 3 "(3) 1 or 2 days a week"
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
replace H4PG1 = . if (H4PG1 == 96 | H4PG1 == 98)
replace H4PG2Y = . if (H4PG2Y == 9994 | H4PG2Y == 9997 | H4PG2Y == 9998)
replace H4PG3Y = . if (H4PG3Y == 9996 | H4PG3Y == 9997 | H4PG3Y == 9998)
replace H4PG5 = . if (H4PG5 == 96 | H4PG5 == 97 | H4PG5 == 98)
replace H4PG6 = . if (H4PG6 == 6 | H4PG6 == 7 | H4PG6 == 8)
replace H4PG7 = . if (H4PG7 == 6 | H4PG7 == 8)
replace H4PG8 = . if (H4PG8 == 6 | H4PG8 == 7 | H4PG8 == 8)
replace H4PG9 = . if (H4PG9 == 6 | H4PG9 == 7 | H4PG9 == 8)
replace H4PG10 = . if (H4PG10 == 6 | H4PG10 == 7 | H4PG10 == 8)
replace H4PG11 = . if (H4PG11 >= 95 & H4PG11 <= 98)
replace H4PG12 = . if (H4PG12 == 6 | H4PG12 == 7 | H4PG12 == 8)
replace H4PG13 = . if (H4PG13 == 96 | H4PG13 == 97 | H4PG13 == 98)
replace H4PG14 = . if (H4PG14 == 96 | H4PG14 == 97 | H4PG14 == 98)
replace H4PG15 = . if (H4PG15 == 6 | H4PG15 == 7 | H4PG15 == 8)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

