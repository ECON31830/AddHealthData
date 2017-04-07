/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |       (DATASET 0025: WAVE IV: IN-HOME QUESTIONNAIRE, PUBLIC USE
 |                 SAMPLE (SECTION 18: PREGNANCY TABLE))
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

replace H4PG1 = . if (H4PG1 == 96 | H4PG1 == 98)
replace H4PG2Y = . if (H4PG2Y == 9994 | H4PG2Y == 9997 | H4PG2Y == 9998)
replace H4PG3Y = . if (H4PG3Y == 9996 | H4PG3Y == 9997 | H4PG3Y == 9998)
replace H4PG5 = . if (H4PG5 == 96 | H4PG5 == 97 | H4PG5 == 98)
replace H4PG6 = . if (H4PG6 == 6 | H4PG6 == 7 | H4PG6 == 8)
replace H4PG7 = . if (H4PG7 == 6 | H4PG7 == 8)
replace H4PG8 = . if (H4PG8 == 6 | H4PG8 == 7 | H4PG8 == 8)
replace H4PG9 = . if (H4PG9 == 6 | H4PG9 == 7 | H4PG9 == 8)
replace H4PG10 = . if (H4PG10 == 6 | H4PG10 == 7 | H4PG10 == 8)
replace H4PG11 = . if (H4PG11 >= 95 & H4PG11 <= 98)
replace H4PG12 = . if (H4PG12 == 6 | H4PG12 == 7 | H4PG12 == 8)
replace H4PG13 = . if (H4PG13 == 96 | H4PG13 == 97 | H4PG13 == 98)
replace H4PG14 = . if (H4PG14 == 96 | H4PG14 == 97 | H4PG14 == 98)
replace H4PG15 = . if (H4PG15 == 6 | H4PG15 == 7 | H4PG15 == 8)


