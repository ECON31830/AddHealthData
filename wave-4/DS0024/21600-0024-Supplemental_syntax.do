/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |       (DATASET 0024: WAVE IV: IN-HOME QUESTIONNAIRE, PUBLIC USE
 |                  SAMPLE (SECTION 16C: RELATIONSHIPS))
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

replace H4TR27Y = . if (H4TR27Y == 9996 | H4TR27Y == 9998)
replace H4TR28Y = . if (H4TR28Y == 9917 | H4TR28Y == 9996 | H4TR28Y == 9998)
replace TSDURATN = . if (TSDURATN == 998)
replace H4TR29 = . if (H4TR29 == 6 | H4TR29 == 7 | H4TR29 == 8)


