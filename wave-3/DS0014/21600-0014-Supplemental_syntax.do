/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0014: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |                 USE SAMPLE (SECTION 24: LIVE BIRTHS))
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

replace H3LB1 = . if (H3LB1 == 6 | H3LB1 == 8 | H3LB1 == 9)
replace H3LB2 = . if (H3LB2 == 97 | H3LB2 == 99)
replace H3LB3 = . if (H3LB3 == 6 | H3LB3 == 8 | H3LB3 == 9)
replace H3LB4 = . if (H3LB4 == 7)
replace H3LB5A = . if (H3LB5A == 96 | H3LB5A == 98 | H3LB5A == 99)
replace H3LB5B = . if (H3LB5B == 96 | H3LB5B == 98 | H3LB5B == 99)
replace H3LB6 = . if (H3LB6 == 96 | H3LB6 == 98 | H3LB6 == 99)
replace H3LB7 = . if (H3LB7 == 6 | H3LB7 == 8 | H3LB7 == 9)
replace H3LB8 = . if (H3LB8 == 97 | H3LB8 == 98)
replace H3LB9 = . if (H3LB9 == 6 | H3LB9 == 8 | H3LB9 == 9)
replace H3LB10 = . if (H3LB10 == 6 | H3LB10 == 8 | H3LB10 == 9)
replace H3LB11 = . if (H3LB11 >= 6 & H3LB11 <= 9)
replace H3LB12M = . if (H3LB12M == 97)
replace H3LB12Y = . if (H3LB12Y == 9997)
replace H3LB13 = . if (H3LB13 == 6 | H3LB13 == 8 | H3LB13 == 9)
replace H3LB14 = . if (H3LB14 == 6 | H3LB14 == 8 | H3LB14 == 9)


