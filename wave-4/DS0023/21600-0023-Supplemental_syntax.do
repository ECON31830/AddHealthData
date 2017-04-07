/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |       (DATASET 0023: WAVE IV: IN-HOME QUESTIONNAIRE, PUBLIC USE
 |                  SAMPLE (SECTION 16B: RELATIONSHIPS))
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

replace H4TR14 = . if (H4TR14 == 6 | H4TR14 == 7 | H4TR14 == 8)
replace H4TR15 = . if (H4TR15 == 6 | H4TR15 == 7)
replace H4TR16 = . if (H4TR16 == 6 | H4TR16 == 7)
replace H4TR17 = . if (H4TR17 == 96 | H4TR17 == 97 | H4TR17 == 98)
replace H4TR18 = . if (H4TR18 == 96 | H4TR18 == 97 | H4TR18 == 98)
replace H4TR19 = . if (H4TR19 == 6 | H4TR19 == 8)
replace H4TR20 = . if (H4TR20 == 96 | H4TR20 == 98)
replace H4TR21 = . if (H4TR21 == 6 | H4TR21 == 7 | H4TR21 == 8)
replace H4TR22 = . if (H4TR22 == 96 | H4TR22 == 97 | H4TR22 == 98)
replace H4TR23 = . if (H4TR23 == 6 | H4TR23 == 8)
replace H4TR24 = . if (H4TR24 == 96 | H4TR24 == 98)


