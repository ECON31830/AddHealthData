/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |            (DATASET 0028: WAVE IV: BIOMARKERS, MEASURES OF
 |                   INFLAMMATION AND IMMUNE FUNCTION)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0028-statasetup.do)
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

format CRP %7.3f
format CRP_FLAG %1.0f
format EBV %4.0f
format EBV_FLAG %1.0f
format C_CRP %1.0f
format C_SUBCLN %1.0f
format C_INFECT %1.0f
format CRP_MED1 %1.0f
format CRP_MED2 %1.0f
format CRP_MED3 %1.0f
format CRP_MED4 %1.0f
format CRP_MED5 %1.0f
format CRP_MED6 %1.0f
format CRP_MED7 %1.0f
format CRP_MED8 %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave IV: Biomarkers, Measures of Inflammation and Immune Function"

#delimit ;
label define CRP       998 "(998) hsCRP below the limit of detection"
                       999 "(999) No result for hsCRP" ;
label define CRP_FLAG
                       1 "Difference between duplicate specimens greater than expected"
                       2 "Out of range high and extrapolated" ;
label define EBV       9998 "EBV below the limit of detection"
                       9999 "No result for EBV" ;
label define C_CRP     1 "hsCRP < 1 mg/L - Low"
                       2 "hsCRP 1 - 3 mg/L - Average"
                       3 "hsCRP > 3 mg/L - High"
                       8 "hsCRP below the limit of detection"
                       9 "No result for hsCRP" ;
label define C_SUBCLN  0 "0" 1 "1" 2 "2" 3 "3 or more" ;
label define C_INFECT  0 "0" 1 "1" 2 "2" 3 "3 or more" ;
label define CRP_MED1
                       0 "Did not report taking NSAID/Salicylate medications in the past 24 hours"
                       1 "Reported taking NSAID/Salicylate medications in the past 24 hours" ;
label define CRP_MED2
                       0 "Did not report taking NSAID/Salicylate medications in the past 4 weeks"
                       1 "Reported taking NSAID/Salicylate medications in the past 4 weeks" ;
label define CRP_MED3
                       0 "Did not report taking Cox-2 Inhibitor medications in the past 4 weeks"
                       1 "Reported taking Cox-2 Inhibitor medications in the past 4 weeks" ;
label define CRP_MED4
                       0 "Did not report taking inhaled corticosteroid medications in the past 4 weeks"
                       1 "Reported taking inhaled corticosteroid medications in the past 4 weeks" ;
label define CRP_MED5
                       0 "Did not report taking corticotropin/glucocorticoid medications in the past 4 weeks"
                       1 "Reported taking corticotropin/glucocorticoid medications in the past 4 weeks" ;
label define CRP_MED6
                       0 "Did not report taking antirheumatic/antipsoriatic medications in the past 4 weeks"
                       1 "Reported taking antirheumatic/antipsoriatic medications in the past 4 weeks" ;
label define CRP_MED7
                       0 "Did not report taking immunosuppressive medications in the past 4 weeks"
                       1 "Reported taking immunosuppressive medications in the past 4 weeks" ;
label define CRP_MED8
                       0 "Did not report taking an anti-inflammatory medication"
                       1 "Reported taking any anti-inflammatory medication" ;


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
replace CRP = . if (CRP == 998.000 | CRP == 999.000)
replace EBV = . if (EBV == 9998 | EBV == 9999)
replace C_CRP = . if (C_CRP == 8 | C_CRP == 9)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

