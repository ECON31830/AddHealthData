/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0015: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |            USE SAMPLE (SECTION 25: CHILDREN AND PARENTING))
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0015-statasetup.do)
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
format H3KK1 %2.0f
format H3KK2 %1.0f
format H3KK3 %1.0f
format H3KK4M %2.0f
format H3KK4Y %4.0f
format H3KK5 %1.0f
format H3KK6 %1.0f
format H3KK7M %2.0f
format H3KK7Y %4.0f
format H3KK8 %2.0f
format H3KK9 %1.0f
format H3KK10 %1.0f
format H3KK11A %1.0f
format H3KK11B %1.0f
format H3KK11C %1.0f
format H3KK11D %1.0f
format H3KK11E %1.0f
format H3KK11F %1.0f
format H3KK11G %1.0f
format H3KK11H %1.0f
format H3KK11I %1.0f
format H3KK11J %1.0f
format H3KK11K %1.0f
format H3KK11L %1.0f
format H3KK11M %1.0f
format H3KK11N %1.0f
format H3KK11O %1.0f
format H3KK11P %1.0f
format H3KK11Q %1.0f
format H3KK12 %1.0f
format H3KK13 %1.0f
format H3KK14 %1.0f
format H3KK15 %1.0f
format H3KK16 %1.0f
format H3KK17 %1.0f
format H3KK18 %2.0f
format H3KK19 %1.0f
format H3KK20 %1.0f
format H3KK21 %1.0f
format H3KK22M %2.0f
format H3KK22Y %4.0f
format H3KK23 %1.0f
format H3KK24 %1.0f
format H3KK25 %1.0f
format H3KK26A %1.0f
format H3KK26B %1.0f
format H3KK26C %1.0f
format H3KK26D %1.0f
format H3KK27A %1.0f
format H3KK27B %1.0f
format H3KK27C %1.0f
format H3KK27D %1.0f
format H3KK27E %1.0f
format H3KK27F %1.0f
format H3KK27G %1.0f
format H3KK27H %1.0f
format H3KK27I %1.0f
format H3KK27J %1.0f
format H3KK28 %1.0f
format H3KK29 %1.0f
format H3KK30 %1.0f
format H3KK31M %2.0f
format H3KK31Y %4.0f
format H3KK32 %1.0f
format H3KK33 %1.0f
format H3KK34 %1.0f
format H3KK35A %1.0f
format H3KK35B %1.0f
format H3KK35C %1.0f
format H3KK35D %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave III: In-Home Questionnaire, Public Use Sample (Section 25: Children and Parenting)"

#delimit ;
label define BIRTHNO   1 "(1) 1st birth listed" 2 "(2) 2nd birth listed" ;
label define H3KK1     0 "(0) 0 years old" 1 "(1) 1 year old"
                       2 "(2) 2 years old" 3 "(3) 3 years old"
                       4 "(4) 4 years old" 5 "(5) 5 years old"
                       6 "(6) 6 years old" 7 "(7) 7 years old"
                       8 "(8) 8 years old" 9 "(9) 9 years old"
                       10 "(10) 10 years old" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3KK2     0 "(0) No (skip to Q.5)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3KK3     0 "(0) No (skip to Q.5)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK4M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3KK4Y    1995 "(1995) 1995" 1996 "(1996) 1996"
                       1997 "(1997) 1997" 1998 "(1998) 1998"
                       1999 "(1999) 1999" 2000 "(2000) 2000"
                       2001 "(2001) 2001" 2002 "(2002) 2002"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know" ;
label define H3KK5     0 "(0) No" 1 "(1) Yes (skip to Q.8)" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3KK6     0 "(0) No" 1 "(1) Yes (skip to Q.8)" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK7M    1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3KK7Y    1994 "(1994) 1994" 1995 "(1995) 1995"
                       1996 "(1996) 1996" 1997 "(1997) 1997"
                       1998 "(1998) 1998" 1999 "(1999) 1999"
                       2000 "(2000) 2000" 2001 "(2001) 2001"
                       2002 "(2002) 2002" 9996 "(9996) Refused"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know"
                       9999 "(9999) Not applicable" ;
label define H3KK8     1 "(1) Excellent" 2 "(2) Very good" 3 "(3) Good"
                       4 "(4) Fair" 5 "(5) Poor" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3KK9     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11H   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11I   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11J   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11K   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11L   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11M   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11N   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11O   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11P   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK11Q   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK12    0 "(0) Almost never" 1 "(1) Less than half the time"
                       2 "(2) Half the time" 3 "(3) More than half the time"
                       4 "(4) Almost always" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK13    0 "(0) Almost never" 1 "(1) Less than half the time"
                       2 "(2) Half the time" 3 "(3) More than half the time"
                       4 "(4) Almost always" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK14    0 "(0) Almost never" 1 "(1) Once or twice a day"
                       2 "(2) A couple of times in the morning or evening"
                       3 "(3) Several times a day" 4 "(4) Almost every hour"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3KK15    0 "(0) Almost never" 1 "(1) Less than half the time"
                       2 "(2) Half the time" 3 "(3) More than half the time"
                       4 "(4) Almost always" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK16    0 "(0) Almost never" 1 "(1) Less than half the time"
                       2 "(2) Half the time" 3 "(3) More than half the time"
                       4 "(4) Almost always" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK17    0 "(0) Almost never" 1 "(1) Once or twice a day"
                       2 "(2) A couple of times in the morning or evening"
                       3 "(3) Several times a day" 4 "(4) Almost every hour"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3KK18    1 "(1) English" 2 "(2) Spanish"
                       3 "(3) Another European language"
                       4 "(4) An Asian language"
                       6 "(6) Half English and half another language"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       99 "(99) Not applicable" ;
label define H3KK19    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3KK20    1 "(1) More time with you"
                       2 "(2) Equal time with you and <CPARTNER>"
                       3 "(3) More time with <CPARTNER>"
                       7 "(7) Legitimate skip" ;
label define H3KK21    1 "(1) Once or a few times" 7 "(7) Legitimate skip" ;
label define H3KK22M   1 "(1) January" 97 "(97) Legitimate skip" ;
label define H3KK22Y   2001 "(2001) 2001" 9997 "(9997) Legitimate skip" ;
label define H3KK23    1 "(1) Within 1 mile" 2 "(2) 1-10 miles"
                       3 "(3) 11-100 miles" 4 "(4) 101-200 miles"
                       5 "(5) More than 200 miles" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3KK24    0 "(0) No (skip to Q.27)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3KK25    0 "(0) None" 7 "(7) Legitimate skip" ;
label define H3KK26A   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3KK26B   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3KK26C   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3KK26D   0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" ;
label define H3KK27A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK27B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK27C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK27D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK27E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK27F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK27G   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK27H   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK27I   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK27J   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK28    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;
label define H3KK29    1 "(1) More time with you"
                       2 "(2) Equal time with you and <CPARTNER>"
                       3 "(3) More time with <CPARTNER>" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK30    0 "(0) Never" 1 "(1) Once or a few times"
                       2 "(2) 1 or 3 times a month" 3 "(3) Once a week"
                       4 "(4) Daily" 6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3KK31M   1 "(1) January" 2 "(2) February" 3 "(3) March"
                       4 "(4) April" 5 "(5) May" 6 "(6) June" 7 "(7) July"
                       8 "(8) August" 9 "(9) September" 10 "(10) October"
                       11 "(11) November" 12 "(12) December"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3KK31Y   1996 "(1996) 1996" 1998 "(1998) 1998"
                       1999 "(1999) 1999" 2000 "(2000) 2000"
                       2001 "(2001) 2001" 2002 "(2002) 2002"
                       9997 "(9997) Legitimate skip" 9998 "(9998) Don't know"
                       9999 "(9999) Not applicable" ;
label define H3KK32    1 "(1) Within 1 mile" 2 "(2) 1-10 miles"
                       3 "(3) 11-100 miles" 4 "(4) 101-200 miles"
                       5 "(5) More than 200 miles" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK33    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3KK34    0 "(0) None" 1 "(1) 1 or 2" 2 "(2) 3 to 5"
                       3 "(3) 6 to 8" 5 "(5) All" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3KK35A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3KK35B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3KK35C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;
label define H3KK35D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 9 "(9) Not applicable" ;


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
replace H3KK1 = . if (H3KK1 == 96 | H3KK1 == 98 | H3KK1 == 99)
replace H3KK2 = . if (H3KK2 == 6 | H3KK2 == 8 | H3KK2 == 9)
replace H3KK3 = . if (H3KK3 >= 6 & H3KK3 <= 9)
replace H3KK4M = . if (H3KK4M == 97 | H3KK4M == 98)
replace H3KK4Y = . if (H3KK4Y == 9997 | H3KK4Y == 9998)
replace H3KK5 = . if (H3KK5 == 6 | H3KK5 == 8 | H3KK5 == 9)
replace H3KK6 = . if (H3KK6 >= 6 & H3KK6 <= 9)
replace H3KK7M = . if (H3KK7M >= 96 & H3KK7M <= 99)
replace H3KK7Y = . if (H3KK7Y >= 9996 & H3KK7Y <= 9999)
replace H3KK8 = . if (H3KK8 >= 96 & H3KK8 <= 99)
replace H3KK9 = . if (H3KK9 >= 6 & H3KK9 <= 9)
replace H3KK10 = . if (H3KK10 >= 6 & H3KK10 <= 9)
replace H3KK11A = . if (H3KK11A >= 6 & H3KK11A <= 9)
replace H3KK11B = . if (H3KK11B >= 6 & H3KK11B <= 9)
replace H3KK11C = . if (H3KK11C >= 6 & H3KK11C <= 9)
replace H3KK11D = . if (H3KK11D >= 6 & H3KK11D <= 9)
replace H3KK11E = . if (H3KK11E >= 6 & H3KK11E <= 9)
replace H3KK11F = . if (H3KK11F >= 6 & H3KK11F <= 9)
replace H3KK11G = . if (H3KK11G >= 6 & H3KK11G <= 9)
replace H3KK11H = . if (H3KK11H >= 6 & H3KK11H <= 9)
replace H3KK11I = . if (H3KK11I >= 6 & H3KK11I <= 9)
replace H3KK11J = . if (H3KK11J >= 6 & H3KK11J <= 9)
replace H3KK11K = . if (H3KK11K >= 6 & H3KK11K <= 9)
replace H3KK11L = . if (H3KK11L >= 6 & H3KK11L <= 9)
replace H3KK11M = . if (H3KK11M >= 6 & H3KK11M <= 9)
replace H3KK11N = . if (H3KK11N >= 6 & H3KK11N <= 9)
replace H3KK11O = . if (H3KK11O >= 6 & H3KK11O <= 9)
replace H3KK11P = . if (H3KK11P >= 6 & H3KK11P <= 9)
replace H3KK11Q = . if (H3KK11Q >= 6 & H3KK11Q <= 9)
replace H3KK12 = . if (H3KK12 >= 6 & H3KK12 <= 9)
replace H3KK13 = . if (H3KK13 >= 6 & H3KK13 <= 9)
replace H3KK14 = . if (H3KK14 >= 6 & H3KK14 <= 9)
replace H3KK15 = . if (H3KK15 >= 6 & H3KK15 <= 9)
replace H3KK16 = . if (H3KK16 >= 6 & H3KK16 <= 9)
replace H3KK17 = . if (H3KK17 >= 6 & H3KK17 <= 9)
replace H3KK18 = . if (H3KK18 == 96 | H3KK18 == 97 | H3KK18 == 99)
replace H3KK19 = . if (H3KK19 == 7)
replace H3KK20 = . if (H3KK20 == 7)
replace H3KK21 = . if (H3KK21 == 7)
replace H3KK22M = . if (H3KK22M == 97)
replace H3KK22Y = . if (H3KK22Y == 9997)
replace H3KK23 = . if (H3KK23 == 7 | H3KK23 == 8)
replace H3KK24 = . if (H3KK24 == 6 | H3KK24 == 7)
replace H3KK25 = . if (H3KK25 == 7)
replace H3KK26A = . if (H3KK26A == 7)
replace H3KK26B = . if (H3KK26B == 7)
replace H3KK26C = . if (H3KK26C == 7)
replace H3KK26D = . if (H3KK26D == 7)
replace H3KK27A = . if (H3KK27A >= 6 & H3KK27A <= 9)
replace H3KK27B = . if (H3KK27B >= 6 & H3KK27B <= 9)
replace H3KK27C = . if (H3KK27C >= 6 & H3KK27C <= 9)
replace H3KK27D = . if (H3KK27D >= 6 & H3KK27D <= 9)
replace H3KK27E = . if (H3KK27E >= 6 & H3KK27E <= 9)
replace H3KK27F = . if (H3KK27F >= 6 & H3KK27F <= 9)
replace H3KK27G = . if (H3KK27G >= 6 & H3KK27G <= 9)
replace H3KK27H = . if (H3KK27H >= 6 & H3KK27H <= 9)
replace H3KK27I = . if (H3KK27I >= 6 & H3KK27I <= 9)
replace H3KK27J = . if (H3KK27J >= 6 & H3KK27J <= 9)
replace H3KK28 = . if (H3KK28 == 7 | H3KK28 == 8)
replace H3KK29 = . if (H3KK29 >= 6 & H3KK29 <= 9)
replace H3KK30 = . if (H3KK30 >= 6 & H3KK30 <= 9)
replace H3KK31M = . if (H3KK31M >= 97 & H3KK31M <= 99)
replace H3KK31Y = . if (H3KK31Y >= 9997 & H3KK31Y <= 9999)
replace H3KK32 = . if (H3KK32 >= 6 & H3KK32 <= 9)
replace H3KK33 = . if (H3KK33 == 6 | H3KK33 == 7)
replace H3KK34 = . if (H3KK34 >= 6 & H3KK34 <= 9)
replace H3KK35A = . if (H3KK35A == 6 | H3KK35A == 7 | H3KK35A == 9)
replace H3KK35B = . if (H3KK35B == 6 | H3KK35B == 7 | H3KK35B == 9)
replace H3KK35C = . if (H3KK35C == 6 | H3KK35C == 7 | H3KK35C == 9)
replace H3KK35D = . if (H3KK35D == 6 | H3KK35D == 7 | H3KK35D == 9)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

