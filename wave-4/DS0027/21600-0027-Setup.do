/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |       (DATASET 0027: WAVE IV: IN-HOME QUESTIONNAIRE, PUBLIC USE
 |             SAMPLE (SECTION 20A: CHILDREN AND PARENTING))
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0027-statasetup.do)
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
format H4KK1 %2.0f
format H4KK2 %1.0f
format H4KK3 %1.0f
format H4KK4Y %4.0f
format H4KK5 %1.0f
format H4KK6A %1.0f
format H4KK6B %1.0f
format H4KK6C %1.0f
format H4KK6D %1.0f
format H4KK6E %1.0f
format H4KK6F %1.0f
format H4KK6G %1.0f
format H4KK6H %1.0f
format H4KK6I %1.0f
format H4KK6J %1.0f
format H4KK7 %2.0f
format H4KK8 %1.0f
format H4KK9 %2.0f
format H4KK10 %1.0f
format H4KK11 %1.0f
format H4KK12 %2.0f
format H4KK13A %1.0f
format H4KK13B %1.0f
format H4KK13C %1.0f
format H4KK13D %1.0f
format H4KK13E %1.0f
format H4KK13F %1.0f
format H4KK13G %1.0f
format H4KK13H %1.0f
format H4KK13I %1.0f
format H4KK13J %1.0f
format H4KK13K %1.0f
format H4KK13L %1.0f
format H4KK13M %1.0f
format H4KK13N %1.0f
format H4KK13O %1.0f
format H4KK13P %1.0f
format H4KK13Q %1.0f
format H4KK13R %1.0f
format H4KK13S %1.0f
format H4KK13T %1.0f
format H4KK13U %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave IV: In-Home Questionnaire, Public Use Sample (Section 20A: Children and Parenting)"

#delimit ;
label define H4KK1     16 "(16) 16 years or older" 96 "(96) Refused"
                       98 "(98) Don't know" ;
label define H4KK2     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H4KK3     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK4Y    9996 "(9996) Refused" 9997 "(9997) Legitimate skip"
                       9998 "(9998) Don't know" ;
label define H4KK5     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK6A    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK6B    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK6C    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK6D    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK6E    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK6F    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK6G    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK6H    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK6I    0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK6J    0 "(0) Not selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK7     1 "(1) Within 1 mile" 2 "(2) 1-10 miles"
                       3 "(3) 11-50 miles" 4 "(4) 51-100 miles"
                       5 "(5) 101-200 miles" 6 "(6) 200+ miles"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4KK8     1 "(1) None or almost none of the time"
                       2 "(2) Some of the time" 3 "(3) Most of the time"
                       4 "(4) All or almost all of the time" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK9     1 "(1) Within 1 mile" 2 "(2) 1-10 miles"
                       3 "(3) 11-50 miles" 4 "(4) 51-100 miles"
                       5 "(5) 101-200 miles" 6 "(6) 200+ miles"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H4KK10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK11    0 "(0) Never" 1 "(1) Once or a few times"
                       2 "(2) 1 to 3 times a month" 3 "(3) Once a week"
                       4 "(4) Daily or almost daily" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK12    1 "(1) Excellent" 2 "(2) Very good" 3 "(3) Good"
                       4 "(4) Fair" 5 "(5) Poor" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H4KK13A   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13B   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13C   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13D   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13E   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13F   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13G   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13H   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13I   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13J   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13K   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13L   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13M   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13N   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13O   0 "(0) Not selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13P   0 "(0) Not selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13Q   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13R   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13S   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13T   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H4KK13U   0 "(0) Not selected" 1 "(1) Selected" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;


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
replace H4KK1 = . if (H4KK1 == 96 | H4KK1 == 98)
replace H4KK2 = . if (H4KK2 == 6 | H4KK2 == 8)
replace H4KK3 = . if (H4KK3 == 6 | H4KK3 == 7 | H4KK3 == 8)
replace H4KK4Y = . if (H4KK4Y == 9996 | H4KK4Y == 9997 | H4KK4Y == 9998)
replace H4KK5 = . if (H4KK5 == 6 | H4KK5 == 7 | H4KK5 == 8)
replace H4KK6A = . if (H4KK6A == 6 | H4KK6A == 7 | H4KK6A == 8)
replace H4KK6B = . if (H4KK6B == 6 | H4KK6B == 7 | H4KK6B == 8)
replace H4KK6C = . if (H4KK6C == 6 | H4KK6C == 7 | H4KK6C == 8)
replace H4KK6D = . if (H4KK6D == 6 | H4KK6D == 7 | H4KK6D == 8)
replace H4KK6E = . if (H4KK6E == 6 | H4KK6E == 7 | H4KK6E == 8)
replace H4KK6F = . if (H4KK6F == 6 | H4KK6F == 7 | H4KK6F == 8)
replace H4KK6G = . if (H4KK6G == 6 | H4KK6G == 7 | H4KK6G == 8)
replace H4KK6H = . if (H4KK6H == 6 | H4KK6H == 7 | H4KK6H == 8)
replace H4KK6I = . if (H4KK6I == 6 | H4KK6I == 7 | H4KK6I == 8)
replace H4KK6J = . if (H4KK6J == 6 | H4KK6J == 7 | H4KK6J == 8)
replace H4KK7 = . if (H4KK7 == 96 | H4KK7 == 97 | H4KK7 == 98)
replace H4KK8 = . if (H4KK8 == 6 | H4KK8 == 7 | H4KK8 == 8)
replace H4KK9 = . if (H4KK9 == 96 | H4KK9 == 97 | H4KK9 == 98)
replace H4KK10 = . if (H4KK10 == 6 | H4KK10 == 7 | H4KK10 == 8)
replace H4KK11 = . if (H4KK11 == 6 | H4KK11 == 7 | H4KK11 == 8)
replace H4KK12 = . if (H4KK12 == 96 | H4KK12 == 97 | H4KK12 == 98)
replace H4KK13A = . if (H4KK13A == 6 | H4KK13A == 7 | H4KK13A == 8)
replace H4KK13B = . if (H4KK13B == 6 | H4KK13B == 7 | H4KK13B == 8)
replace H4KK13C = . if (H4KK13C == 6 | H4KK13C == 7 | H4KK13C == 8)
replace H4KK13D = . if (H4KK13D == 6 | H4KK13D == 7 | H4KK13D == 8)
replace H4KK13E = . if (H4KK13E == 6 | H4KK13E == 7 | H4KK13E == 8)
replace H4KK13F = . if (H4KK13F == 6 | H4KK13F == 7 | H4KK13F == 8)
replace H4KK13G = . if (H4KK13G == 6 | H4KK13G == 7 | H4KK13G == 8)
replace H4KK13H = . if (H4KK13H == 6 | H4KK13H == 7 | H4KK13H == 8)
replace H4KK13I = . if (H4KK13I == 6 | H4KK13I == 7 | H4KK13I == 8)
replace H4KK13J = . if (H4KK13J == 6 | H4KK13J == 7 | H4KK13J == 8)
replace H4KK13K = . if (H4KK13K == 6 | H4KK13K == 7 | H4KK13K == 8)
replace H4KK13L = . if (H4KK13L == 6 | H4KK13L == 7 | H4KK13L == 8)
replace H4KK13M = . if (H4KK13M == 6 | H4KK13M == 7 | H4KK13M == 8)
replace H4KK13N = . if (H4KK13N == 6 | H4KK13N == 7 | H4KK13N == 8)
replace H4KK13O = . if (H4KK13O == 6 | H4KK13O == 7 | H4KK13O == 8)
replace H4KK13P = . if (H4KK13P == 6 | H4KK13P == 7 | H4KK13P == 8)
replace H4KK13Q = . if (H4KK13Q == 6 | H4KK13Q == 7 | H4KK13Q == 8)
replace H4KK13R = . if (H4KK13R == 6 | H4KK13R == 7 | H4KK13R == 8)
replace H4KK13S = . if (H4KK13S == 6 | H4KK13S == 7 | H4KK13S == 8)
replace H4KK13T = . if (H4KK13T == 6 | H4KK13T == 7 | H4KK13T == 8)
replace H4KK13U = . if (H4KK13U == 6 | H4KK13U == 7 | H4KK13U == 8)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

