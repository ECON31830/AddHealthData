/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0009: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |                USE SAMPLE (SECTION 17: RELATIONSHIPS))
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

replace H3TR1 = . if (H3TR1 == 6 | H3TR1 == 8 | H3TR1 == 9)
replace H3TR2 = . if (H3TR2 == 6 | H3TR2 == 8 | H3TR2 == 9)
replace H3TR5 = . if (H3TR5 == 97)
replace H3TR6 = . if (H3TR6 == 6 | H3TR6 == 8 | H3TR6 == 9)
replace H3TR7 = . if (H3TR7 == 6 | H3TR7 == 8 | H3TR7 == 9)
replace H3TR8 = . if (H3TR8 == 6 | H3TR8 == 8 | H3TR8 == 9)
replace H3TR9 = . if (H3TR9 == 6 | H3TR9 == 8 | H3TR9 == 9)
replace H3TR10 = . if (H3TR10 == 97)
replace H3TR11 = . if (H3TR11 == 6 | H3TR11 == 8 | H3TR11 == 9)
replace H3TR12 = . if (H3TR12 == 6 | H3TR12 == 8 | H3TR12 == 9)
replace H3TR13 = . if (H3TR13 == 6 | H3TR13 == 8 | H3TR13 == 9)
replace H3TR14 = . if (H3TR14 >= 5 & H3TR14 <= 9)


