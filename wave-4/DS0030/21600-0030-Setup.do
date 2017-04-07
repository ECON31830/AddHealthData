/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |              (DATASET 0030: WAVE IV: BIOMARKERS, LIPIDS)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0030-statasetup.do)
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

format TG %2.0f
format TG_FLG %1.0f
format TC %2.0f
format TC_FLG %1.0f
format HDL %2.0f
format HDL_FLG %1.0f
format LDL %2.0f
format NON_HDL %2.0f
format TC_HDL %2.0f
format C_MED2 %1.0f
format C_JOINT2 %1.0f
format FASTTIME %4.1f
format FAST_LIP %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave IV: Biomarkers, Lipids"

#delimit ;
label define TG        1 "(1) First decile" 2 "(2) Second decile"
                       3 "(3) Third decile" 4 "(4) Fourth decile"
                       5 "(5) Fifth decile" 6 "(6) Sixth decile"
                       7 "(7) Seventh decile" 8 "(8) Eighth decile"
                       9 "(9) Ninth decile" 10 "(10) Tenth decile"
                       99 "(99) No result for triglycerides (TG)" ;
label define TG_FLG    1 "(1) Imputed" 2 "(2) Assayed"
                       9 "(9) No result for triglycerides (TG)" ;
label define TC        1 "(1) First decile" 2 "(2) Second decile"
                       3 "(3) Third decile" 4 "(4) Fourth decile"
                       5 "(5) Fifth decile" 6 "(6) Sixth decile"
                       7 "(7) Seventh decile" 8 "(8) Eighth decile"
                       9 "(9) Ninth decile" 10 "(10) Tenth decile"
                       99 "(99) No result for total cholesterol (TC)" ;
label define TC_FLG    1 "(1) Imputed" 2 "(2) Assayed"
                       9 "(9) No result for total cholesterol (TC)" ;
label define HDL       1 "(1) First decile" 2 "(2) Second decile"
                       3 "(3) Third decile" 4 "(4) Fourth decile"
                       5 "(5) Fifth decile" 6 "(6) Sixth decile"
                       7 "(7) Seventh decile" 8 "(8) Eighth decile"
                       9 "(9) Ninth decile" 10 "(10) Tenth decile"
                       99 "(99) No result for high-density lipoprotein cholesterol (HDL" ;
label define HDL_FLG   1 "(1) Imputed" 2 "(2) Assayed"
                       9 "(9) No result for high-density lipoprotein cholesterol (HDL-" ;
label define LDL       1 "(1) First decile" 2 "(2) Second decile"
                       3 "(3) Third decile" 4 "(4) Fourth decile"
                       5 "(5) Fifth decile" 6 "(6) Sixth decile"
                       7 "(7) Seventh decile" 8 "(8) Eighth decile"
                       9 "(9) Ninth decile" 10 "(10) Tenth decile"
                       99 "(99) No result for low-density lipoprotein cholesterol (LDL-" ;
label define NON_HDL   1 "(1) First decile" 2 "(2) Second decile"
                       3 "(3) Third decile" 4 "(4) Fourth decile"
                       5 "(5) Fifth decile" 6 "(6) Sixth decile"
                       7 "(7) Seventh decile" 8 "(8) Eighth decile"
                       9 "(9) Ninth decile" 10 "(10) Tenth decile"
                       99 "(99) No result for non-high-density lipoprotein cholesterol" ;
label define TC_HDL    1 "(1) First decile" 2 "(2) Second decile"
                       3 "(3) Third decile" 4 "(4) Fourth decile"
                       5 "(5) Fifth decile" 6 "(6) Sixth decile"
                       7 "(7) Seventh decile" 8 "(8) Eighth decile"
                       9 "(9) Ninth decile" 10 "(10) Tenth decile"
                       99 "(99) No result for total cholesterol to high-density lipopro" ;
label define C_MED2
                       0 "(0) Did not report taking antihyperlipidemic medication"
                       1 "(1) Reported taking antihyperlipidemic medication" ;
label define C_JOINT2  0 "(0) No evidence of hyperlipidemia"
                       1 "(1) Evidence of hyperlipidemia" ;
label define FAST_LIP  0 "(0) Fasted for less than nine hours"
                       1 "(1) Fasted for nine hours or more" ;


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
replace TG = . if (TG == 99)
replace TG_FLG = . if (TG_FLG == 9)
replace TC = . if (TC == 99)
replace TC_FLG = . if (TC_FLG == 9)
replace HDL = . if (HDL == 99)
replace HDL_FLG = . if (HDL_FLG == 9)
replace LDL = . if (LDL == 99)
replace NON_HDL = . if (NON_HDL == 99)
replace TC_HDL = . if (TC_HDL == 99)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

