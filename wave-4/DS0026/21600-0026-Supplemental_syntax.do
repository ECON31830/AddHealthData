/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |       (DATASET 0026: WAVE IV: IN-HOME QUESTIONNAIRE, PUBLIC USE
 |                   SAMPLE (SECTION 19: LIVE BIRTHS))
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

replace H4LB1 = . if (H4LB1 == 6 | H4LB1 == 7 | H4LB1 == 8)
replace H4LB2Y = . if (H4LB2Y == 9996 | H4LB2Y == 9997 | H4LB2Y == 9998)
replace H4LB3 = . if (H4LB3 == 6 | H4LB3 == 8)
replace H4LB4 = . if (H4LB4 == 6 | H4LB4 == 8)
replace H4LB5 = . if (H4LB5 == 97)
replace H4LB6P = . if (H4LB6P == 96 | H4LB6P == 98)
replace H4LB6O = . if (H4LB6O == 96 | H4LB6O == 98)
replace H4LB7 = . if (H4LB7 == 6 | H4LB7 == 7 | H4LB7 == 8)
replace H4LB8 = . if (H4LB8 == 6 | H4LB8 == 8)
replace H4LB9W = . if (H4LB9W == 96 | H4LB9W == 97 | H4LB9W == 98)
replace H4LB9D = . if (H4LB9D == 996 | H4LB9D == 997 | H4LB9D == 998)
replace H4LB10 = . if (H4LB10 == 6 | H4LB10 == 7 | H4LB10 == 8)
replace H4LB11Y = . if (H4LB11Y == 9996 | H4LB11Y == 9997 | H4LB11Y == 9998)


