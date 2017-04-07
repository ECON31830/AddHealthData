/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0015: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |            USE SAMPLE (SECTION 25: CHILDREN AND PARENTING))
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

replace H3KK1 = . if (H3KK1 == 96 | H3KK1 == 98 | H3KK1 == 99)
replace H3KK2 = . if (H3KK2 == 6 | H3KK2 == 8 | H3KK2 == 9)
replace H3KK3 = . if (H3KK3 >= 6 & H3KK3 <= 9)
replace H3KK4M = . if (H3KK4M == 97 | H3KK4M == 98)
replace H3KK4Y = . if (H3KK4Y == 9997 | H3KK4Y == 9998)
replace H3KK5 = . if (H3KK5 == 6 | H3KK5 == 8 | H3KK5 == 9)
replace H3KK6 = . if (H3KK6 >= 6 & H3KK6 <= 9)
replace H3KK7M = . if (H3KK7M >= 96 & H3KK7M <= 99)
replace H3KK7Y = . if (H3KK7Y >= 9996 & H3KK7Y <= 9999)
replace H3KK8 = . if (H3KK8 >= 96 & H3KK8 <= 99)
replace H3KK9 = . if (H3KK9 >= 6 & H3KK9 <= 9)
replace H3KK10 = . if (H3KK10 >= 6 & H3KK10 <= 9)
replace H3KK11A = . if (H3KK11A >= 6 & H3KK11A <= 9)
replace H3KK11B = . if (H3KK11B >= 6 & H3KK11B <= 9)
replace H3KK11C = . if (H3KK11C >= 6 & H3KK11C <= 9)
replace H3KK11D = . if (H3KK11D >= 6 & H3KK11D <= 9)
replace H3KK11E = . if (H3KK11E >= 6 & H3KK11E <= 9)
replace H3KK11F = . if (H3KK11F >= 6 & H3KK11F <= 9)
replace H3KK11G = . if (H3KK11G >= 6 & H3KK11G <= 9)
replace H3KK11H = . if (H3KK11H >= 6 & H3KK11H <= 9)
replace H3KK11I = . if (H3KK11I >= 6 & H3KK11I <= 9)
replace H3KK11J = . if (H3KK11J >= 6 & H3KK11J <= 9)
replace H3KK11K = . if (H3KK11K >= 6 & H3KK11K <= 9)
replace H3KK11L = . if (H3KK11L >= 6 & H3KK11L <= 9)
replace H3KK11M = . if (H3KK11M >= 6 & H3KK11M <= 9)
replace H3KK11N = . if (H3KK11N >= 6 & H3KK11N <= 9)
replace H3KK11O = . if (H3KK11O >= 6 & H3KK11O <= 9)
replace H3KK11P = . if (H3KK11P >= 6 & H3KK11P <= 9)
replace H3KK11Q = . if (H3KK11Q >= 6 & H3KK11Q <= 9)
replace H3KK12 = . if (H3KK12 >= 6 & H3KK12 <= 9)
replace H3KK13 = . if (H3KK13 >= 6 & H3KK13 <= 9)
replace H3KK14 = . if (H3KK14 >= 6 & H3KK14 <= 9)
replace H3KK15 = . if (H3KK15 >= 6 & H3KK15 <= 9)
replace H3KK16 = . if (H3KK16 >= 6 & H3KK16 <= 9)
replace H3KK17 = . if (H3KK17 >= 6 & H3KK17 <= 9)
replace H3KK18 = . if (H3KK18 == 96 | H3KK18 == 97 | H3KK18 == 99)
replace H3KK19 = . if (H3KK19 == 7)
replace H3KK20 = . if (H3KK20 == 7)
replace H3KK21 = . if (H3KK21 == 7)
replace H3KK22M = . if (H3KK22M == 97)
replace H3KK22Y = . if (H3KK22Y == 9997)
replace H3KK23 = . if (H3KK23 == 7 | H3KK23 == 8)
replace H3KK24 = . if (H3KK24 == 6 | H3KK24 == 7)
replace H3KK25 = . if (H3KK25 == 7)
replace H3KK26A = . if (H3KK26A == 7)
replace H3KK26B = . if (H3KK26B == 7)
replace H3KK26C = . if (H3KK26C == 7)
replace H3KK26D = . if (H3KK26D == 7)
replace H3KK27A = . if (H3KK27A >= 6 & H3KK27A <= 9)
replace H3KK27B = . if (H3KK27B >= 6 & H3KK27B <= 9)
replace H3KK27C = . if (H3KK27C >= 6 & H3KK27C <= 9)
replace H3KK27D = . if (H3KK27D >= 6 & H3KK27D <= 9)
replace H3KK27E = . if (H3KK27E >= 6 & H3KK27E <= 9)
replace H3KK27F = . if (H3KK27F >= 6 & H3KK27F <= 9)
replace H3KK27G = . if (H3KK27G >= 6 & H3KK27G <= 9)
replace H3KK27H = . if (H3KK27H >= 6 & H3KK27H <= 9)
replace H3KK27I = . if (H3KK27I >= 6 & H3KK27I <= 9)
replace H3KK27J = . if (H3KK27J >= 6 & H3KK27J <= 9)
replace H3KK28 = . if (H3KK28 == 7 | H3KK28 == 8)
replace H3KK29 = . if (H3KK29 >= 6 & H3KK29 <= 9)
replace H3KK30 = . if (H3KK30 >= 6 & H3KK30 <= 9)
replace H3KK31M = . if (H3KK31M >= 97 & H3KK31M <= 99)
replace H3KK31Y = . if (H3KK31Y >= 9997 & H3KK31Y <= 9999)
replace H3KK32 = . if (H3KK32 >= 6 & H3KK32 <= 9)
replace H3KK33 = . if (H3KK33 == 6 | H3KK33 == 7)
replace H3KK34 = . if (H3KK34 >= 6 & H3KK34 <= 9)
replace H3KK35A = . if (H3KK35A == 6 | H3KK35A == 7 | H3KK35A == 9)
replace H3KK35B = . if (H3KK35B == 6 | H3KK35B == 7 | H3KK35B == 9)
replace H3KK35C = . if (H3KK35C == 6 | H3KK35C == 7 | H3KK35C == 9)
replace H3KK35D = . if (H3KK35D == 6 | H3KK35D == 7 | H3KK35D == 9)


