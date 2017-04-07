/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |        (DATASET 0029: WAVE IV: BIOMARKERS, MEASURES OF GLUCOSE
 |                              HOMEOSTASIS)
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

replace GLUCOSE = . if (GLUCOSE == 999)
replace HBA1C = . if (HBA1C == 99.0)
replace CONVERT = . if (CONVERT == 9)
replace C_FGLU = . if (C_FGLU == 9)
replace C_NFGLU = . if (C_NFGLU == 9)
replace C_HBA1C = . if (C_HBA1C == 9)


