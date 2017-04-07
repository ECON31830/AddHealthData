/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0013: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |             USE SAMPLE (SECTION 23: CURRENT PREGNANCIES))
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

replace H3PC1 = . if (H3PC1 == 6 | H3PC1 == 7)
replace H3PC2 = . if (H3PC2 == 97 | H3PC2 == 98)
replace H3PC3 = . if (H3PC3 == 96 | H3PC3 == 98)
replace H3PC4 = . if (H3PC4 == 6 | H3PC4 == 8 | H3PC4 == 9)
replace H3PC5 = . if (H3PC5 >= 6 & H3PC5 <= 9)
replace H3PC6 = . if (H3PC6 == 97 | H3PC6 == 98)
replace H3PC7 = . if (H3PC7 == 7)
replace H3PC8 = . if (H3PC8 == 96 | H3PC8 == 97)
replace H3PC9A = . if (H3PC9A == 7 | H3PC9A == 8)
replace H3PC9B = . if (H3PC9B == 7 | H3PC9B == 8)
replace H3PC9C = . if (H3PC9C == 7 | H3PC9C == 8)
replace H3PC9D = . if (H3PC9D == 7 | H3PC9D == 8)
replace H3PC9E = . if (H3PC9E == 7 | H3PC9E == 8)
replace H3PC9F = . if (H3PC9F == 7 | H3PC9F == 8)
replace H3PC10A = . if (H3PC10A == 6 | H3PC10A == 8)
replace H3PC10B = . if (H3PC10B == 6 | H3PC10B == 8)
replace H3PC10C = . if (H3PC10C == 6 | H3PC10C == 8)
replace H3PC10D = . if (H3PC10D == 6 | H3PC10D == 8)
replace H3PC10E = . if (H3PC10E == 6 | H3PC10E == 8)
replace H3PC10F = . if (H3PC10F == 6 | H3PC10F == 8)
replace H3PC11 = . if (H3PC11 == 6 | H3PC11 == 8 | H3PC11 == 9)
replace H3PC12 = . if (H3PC12 == 6 | H3PC12 == 8 | H3PC12 == 9)
replace H3PC13 = . if (H3PC13 == 6 | H3PC13 == 8 | H3PC13 == 9)
replace H3PC14 = . if (H3PC14 == 6 | H3PC14 == 9)
replace H3PC15 = . if (H3PC15 == 6 | H3PC15 == 9)
replace H3PC16 = . if (H3PC16 == 97 | H3PC16 == 98)
replace H3PC17 = . if (H3PC17 == 96 | H3PC17 == 98)
replace H3PC18 = . if (H3PC18 == 96 | H3PC18 == 98 | H3PC18 == 99)
replace H3PC19 = . if (H3PC19 == 6 | H3PC19 == 9)
replace H3PC20A = . if (H3PC20A == 97 | H3PC20A == 99)
replace H3PC20B = . if (H3PC20B >= 96 & H3PC20B <= 98)
replace H3PC20C = . if (H3PC20C >= 96 & H3PC20C <= 98)
replace H3PC21 = . if (H3PC21 == 7)
replace H3PC22 = . if (H3PC22 == 6 | H3PC22 == 8 | H3PC22 == 9)
replace H3PC23 = . if (H3PC23 >= 6 & H3PC23 <= 9)
replace H3PC24 = . if (H3PC24 == 7 | H3PC24 == 8)


