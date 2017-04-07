/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |              (DATASET 0030: WAVE IV: BIOMARKERS, LIPIDS)
 |
 |
 | This Stata missing value recode program is provided for optional use with
 | the Stata system version of this data file as distributed by ICPSR.
 | The program replaces user-defined numeric missing values (e.g., -9)
 | with generic system missing "."  Note that Stata allows you to specify
 | up to 27 unique missing value codes.  Only variables with user-defined
 | missing values are included in this program.
 |
 | To apply the missing value recodes, users need to first open the
 | Stata data file on their system, apply the missing value recodes if
 | desired, then save a new copy of the data file with the missing values
 | applied.  Users are strongly advised to use a different filename when
 | saving the new file.
 |
 *------------------------------------------------------------------------*/

replace TG = . if (TG == 99)
replace TG_FLG = . if (TG_FLG == 9)
replace TC = . if (TC == 99)
replace TC_FLG = . if (TC_FLG == 9)
replace HDL = . if (HDL == 99)
replace HDL_FLG = . if (HDL_FLG == 9)
replace LDL = . if (LDL == 99)
replace NON_HDL = . if (NON_HDL == 99)
replace TC_HDL = . if (TC_HDL == 99)


