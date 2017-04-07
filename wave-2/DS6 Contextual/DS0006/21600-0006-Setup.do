/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |        (DATASET 0006: WAVE II: PUBLIC USE CONTEXTUAL DATABASE)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0006-statasetup.do)
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

format MATCH %1.0f
format MOVER %1.0f
format BST90P01 %1.0f
format BST90P02 %1.0f
format BST90P03 %8.3f
format BST90P04 %1.0f
format BST90P05 %1.0f
format BST90P06 %2.0f
format BST90P07 %8.3f
format BST90P08 %1.0f
format BST90P09 %8.3f
format BST90P10 %1.0f
format BST90P11 %1.0f
format BST90P12 %8.3f
format BST90P13 %1.0f
format BST90P14 %8.3f
format BST90P15 %6.0f
format BST90P16 %8.3f
format BST90P17 %6.0f
format BST90P18 %8.3f
format BST90P19 %1.0f
format BST90P20 %1.0f
format BST90P21 %8.3f
format BST90P22 %1.0f
format BST90P23 %1.0f
format BST90P24 %1.0f
format BST90P25 %8.3f
format BST90P26 %1.0f
format BST90P27 %1.0f
format BST90P28 %6.0f
format BST90P29 %8.3f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave II: Public Use Contextual Database"

#delimit ;
label define MATCH     0 "(0) No match" 1 "(1) GPS match"
                       2 "(2) Address match" 3 "(3) ZIP+4 match/urban" ;
label define MOVER     0 "(0) Respondent didn't move"
                       1 "(1) Moved to a different block group"
                       2 "(2) Moved within same block group"
                       3 "(3) Moved, location unknown"
                       9 "(9) Respondent didn't participate in both waves" ;
label define BST90P01  1 "(1) Completely urban" 2 "(2) Not completely urban"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P02  1 "(1) White" 2 "(2) Black" 3 "(3) Other"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P03  9998 "(9998) Unstable estimates"
                       9999 "(9999) Geocode missing" ;
label define BST90P04  1 "(1) Low" 2 "(2) Medium" 3 "(3) High"
                       4 "(4) Very high" 8 "(8) Unstable estimates"
                       9 "(9) Geocode missing" ;
label define BST90P05  1 "(1) Heavily male" 2 "(2) Balanced"
                       3 "(3) Heavily female" 8 "(8) Unstable estimates"
                       9 "(9) Geocode missing" ;
label define BST90P06  98 "(98) Unstable estimates" 99 "(99) Geocode missing" ;
label define BST90P07  9998 "(9998) Unstable estimates"
                       9999 "(9999) Geocode missing" ;
label define BST90P08  1 "(1) Never married" 2 "(2) Married, spouse present"
                       3 "(3) Separated or divorced"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P09  9998 "(9998) Unstable estimates"
                       9999 "(9999) Geocode missing" ;
label define BST90P10  1 "(1) Low" 2 "(2) Medium" 3 "(3) High"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P11  1 "(1) Lived in same house in 1985"
                       2 "(2) Lived in different house in 1985/same county"
                       3 "(3) Lived in different house in 1985/different county"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P12  9998 "(9998) Unstable estimates"
                       9999 "(9999) Geocode missing" ;
label define BST90P13  1 "(1) Married couple family household"
                       2 "(2) Other family household"
                       3 "(3) Non-family household"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P14  9998 "(9998) Unstable estimates"
                       9999 "(9999) Geocode missing" ;
label define BST90P15  999998 "(999998) Unstable estimates"
                       999999 "(999999) Geocode missing" ;
label define BST90P16  9998 "(9998) Unstable estimates"
                       9999 "(9999) Geocode missing" ;
label define BST90P17  999998 "(999998) Unstable estimates"
                       999999 "(999999) Geocode missing" ;
label define BST90P18  9998 "(9998) Unstable estimates"
                       9999 "(9999) Geocode missing" ;
label define BST90P19  1 "(1) Low" 2 "(2) Medium" 3 "(3) High"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P20  1 "(1) No high school or equivalency"
                       2 "(2) High school degree/no college degree"
                       3 "(3) College degree or more"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P21  9998 "(9998) Unstable estimates"
                       9999 "(9999) Geocode missing" ;
label define BST90P22  1 "(1) Low" 2 "(2) Medium" 3 "(3) High"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P23  1 "(1) Low" 2 "(2) Medium" 3 "(3) High"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P24  1 "(1) Managerial or professional"
                       2 "(2) Technical/sales/administrative support"
                       3 "(3) Service occupations"
                       4 "(4) Farming/forestry/fishing"
                       5 "(5) Production/craft/repair"
                       6 "(6) Operators/fabricators/laborers"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P25  9998 "(9998) Unstable estimates"
                       9999 "(9999) Geocode missing" ;
label define BST90P26  1 "(1) Heavily renter occupied" 2 "(2) Mixed tenure"
                       3 "(3) Heavily owner occupied"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P27  1 "(1) Low" 2 "(2) Medium" 3 "(3) High"
                       8 "(8) Unstable estimates" 9 "(9) Geocode missing" ;
label define BST90P28  999998 "(999998) Unstable estimates"
                       999999 "(999999) Geocode missing" ;
label define BST90P29  9998 "(9998) Unstable estimates"
                       9999 "(9999) Geocode missing" ;


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
replace BST90P01 = . if (BST90P01 == 8 | BST90P01 == 9)
replace BST90P02 = . if (BST90P02 == 8 | BST90P02 == 9)
replace BST90P03 = . if (BST90P03 == 9998.000 | BST90P03 == 9999.000)
replace BST90P04 = . if (BST90P04 == 8 | BST90P04 == 9)
replace BST90P05 = . if (BST90P05 == 8 | BST90P05 == 9)
replace BST90P06 = . if (BST90P06 == 98 | BST90P06 == 99)
replace BST90P07 = . if (BST90P07 == 9998.000 | BST90P07 == 9999.000)
replace BST90P08 = . if (BST90P08 == 8 | BST90P08 == 9)
replace BST90P09 = . if (BST90P09 == 9998.000 | BST90P09 == 9999.000)
replace BST90P10 = . if (BST90P10 == 8 | BST90P10 == 9)
replace BST90P11 = . if (BST90P11 == 8 | BST90P11 == 9)
replace BST90P12 = . if (BST90P12 == 9998.000 | BST90P12 == 9999.000)
replace BST90P13 = . if (BST90P13 == 8 | BST90P13 == 9)
replace BST90P14 = . if (BST90P14 == 9998.000 | BST90P14 == 9999.000)
replace BST90P15 = . if (BST90P15 == 999998 | BST90P15 == 999999)
replace BST90P16 = . if (BST90P16 == 9998.000 | BST90P16 == 9999.000)
replace BST90P17 = . if (BST90P17 == 999998 | BST90P17 == 999999)
replace BST90P18 = . if (BST90P18 == 9998.000 | BST90P18 == 9999.000)
replace BST90P19 = . if (BST90P19 == 8 | BST90P19 == 9)
replace BST90P20 = . if (BST90P20 == 8 | BST90P20 == 9)
replace BST90P21 = . if (BST90P21 == 9998.000 | BST90P21 == 9999.000)
replace BST90P22 = . if (BST90P22 == 8 | BST90P22 == 9)
replace BST90P23 = . if (BST90P23 == 8 | BST90P23 == 9)
replace BST90P24 = . if (BST90P24 == 8 | BST90P24 == 9)
replace BST90P25 = . if (BST90P25 == 9998.000 | BST90P25 == 9999.000)
replace BST90P26 = . if (BST90P26 == 8 | BST90P26 == 9)
replace BST90P27 = . if (BST90P27 == 8 | BST90P27 == 9)
replace BST90P28 = . if (BST90P28 == 999998 | BST90P28 == 999999)
replace BST90P29 = . if (BST90P29 == 9998.000 | BST90P29 == 9999.000)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

