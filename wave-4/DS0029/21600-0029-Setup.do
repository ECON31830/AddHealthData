/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |        (DATASET 0029: WAVE IV: BIOMARKERS, MEASURES OF GLUCOSE
 |                              HOMEOSTASIS)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0029-statasetup.do)
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

format GLUCOSE %3.0f
format HBA1C %4.1f
format CONVERT %1.0f
format FASTTIME %4.1f
format C_FGLU %1.0f
format C_NFGLU %1.0f
format C_HBA1C %1.0f
format C_MED %1.0f
format C_JOINT %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave IV: Biomarkers, Measures of Glucose Homeostasis"

#delimit ;
label define GLUCOSE   999 "(999) No result for glucose" ;
label define HBA1C     99 "(99) No result for HbA1c" ;
label define CONVERT   0 "(0) No conversion"
                       1 "(1) Converted FlexSite 2 to FlexSite 1"
                       2 "(2) Converted BIOSAFE to FlexSite 2 to FlexSite 1"
                       9 "(9) No result for HbA1c" ;
label define C_FGLU    1 "(1) Glucose less than or equal to 99 mg/dl"
                       2 "(2) Glucose 100-125 mg/dl-Impaired Fasting Glucose (IFG)/Pre"
                       3 "(3) Glucose greater than or equal to 126 mg/dl - Diabetes"
                       4 "(4) Non-Fasting" 5 "(5) Fasting status unknown"
                       9 "(9) No result for glucose" ;
label define C_NFGLU   1 "(1) Glucose less than or equal to 199 mg/dl"
                       2 "(2) Glucose greater than or equal to 200 mg/dl - Diabetes"
                       3 "(3) Fasting" 4 "(4) Fasting status unknown"
                       9 "(9) No result for glucose" ;
label define C_HBA1C   1 "(1) HbA1c(%) less than or equal to 5.6"
                       2 "(2) HbA1c(%) 5.7-6.4 - Pre-Diabetes"
                       3 "(3) HbA1c(%) greater than or equal to 6.5 - Diabetes"
                       9 "(9) No result for HbA1c" ;
label define C_MED     0 "(0) Did not report taking anti-diabetic medication"
                       1 "(1) Reported taking anti-diabetic medication" ;
label define C_JOINT   0 "(0) No evidence of diabetes"
                       1 "(1) Evidence of diabetes" ;


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
replace GLUCOSE = . if (GLUCOSE == 999)
replace HBA1C = . if (HBA1C == 99.0)
replace CONVERT = . if (CONVERT == 9)
replace C_FGLU = . if (C_FGLU == 9)
replace C_NFGLU = . if (C_NFGLU == 9)
replace C_HBA1C = . if (C_HBA1C == 9)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

