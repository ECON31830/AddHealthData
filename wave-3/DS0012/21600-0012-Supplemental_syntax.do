/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0012: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |            USE SAMPLE (SECTION 22: COMPLETED PREGNANCIES))
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

replace H3PG1 = . if (H3PG1 == 96 | H3PG1 == 98 | H3PG1 == 99)
replace H3PG2 = . if (H3PG2 >= 96 & H3PG2 <= 99)
replace H3PG3 = . if (H3PG3 == 96 | H3PG3 == 98 | H3PG3 == 99)
replace H3PG4 = . if (H3PG4 == 6 | H3PG4 == 8 | H3PG4 == 9)
replace H3PG5 = . if (H3PG5 == 6 | H3PG5 == 8 | H3PG5 == 9)
replace H3PG6A = . if (H3PG6A >= 96 & H3PG6A <= 99)
replace H3PG6B = . if (H3PG6B >= 96 & H3PG6B <= 99)
replace H3PG6C = . if (H3PG6C >= 96 & H3PG6C <= 99)
replace H3PG7 = . if (H3PG7 >= 6 & H3PG7 <= 9)
replace H3PG8 = . if (H3PG8 == 6 | H3PG8 == 8 | H3PG8 == 9)
replace H3PG9 = . if (H3PG9 >= 6 & H3PG9 <= 9)
replace H3PG10 = . if (H3PG10 >= 6 & H3PG10 <= 9)
replace H3PG11 = . if (H3PG11 >= 6 & H3PG11 <= 9)
replace H3PG12 = . if (H3PG12 >= 6 & H3PG12 <= 9)
replace H3PG13 = . if (H3PG13 >= 96 & H3PG13 <= 99)
replace H3PG14 = . if (H3PG14 >= 96 & H3PG14 <= 99)
replace H3PG15 = . if (H3PG15 >= 96 & H3PG15 <= 99)
replace H3PG16 = . if (H3PG16 >= 96 & H3PG16 <= 99)
replace H3PG17A = . if (H3PG17A >= 6 & H3PG17A <= 9)
replace H3PG17B = . if (H3PG17B >= 6 & H3PG17B <= 9)
replace H3PG17C = . if (H3PG17C >= 6 & H3PG17C <= 9)
replace H3PG17D = . if (H3PG17D >= 6 & H3PG17D <= 9)
replace H3PG17E = . if (H3PG17E >= 6 & H3PG17E <= 9)
replace H3PG17F = . if (H3PG17F >= 6 & H3PG17F <= 9)
replace H3PG18 = . if (H3PG18 >= 6 & H3PG18 <= 9)
replace H3PG19 = . if (H3PG19 >= 6 & H3PG19 <= 9)
replace H3PG20 = . if (H3PG20 >= 6 & H3PG20 <= 9)
replace H3PG21A = . if (H3PG21A >= 6 & H3PG21A <= 9)
replace H3PG21B = . if (H3PG21B >= 6 & H3PG21B <= 9)
replace H3PG21C = . if (H3PG21C >= 6 & H3PG21C <= 9)
replace H3PG21D = . if (H3PG21D >= 6 & H3PG21D <= 9)
replace H3PG21E = . if (H3PG21E >= 6 & H3PG21E <= 9)
replace H3PG21F = . if (H3PG21F >= 6 & H3PG21F <= 9)
replace H3PG22 = . if (H3PG22 >= 6 & H3PG22 <= 9)
replace H3PG23 = . if (H3PG23 >= 6 & H3PG23 <= 9)
replace H3PG24 = . if (H3PG24 >= 6 & H3PG24 <= 9)


