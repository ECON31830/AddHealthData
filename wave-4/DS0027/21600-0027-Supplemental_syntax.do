/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |       (DATASET 0027: WAVE IV: IN-HOME QUESTIONNAIRE, PUBLIC USE
 |             SAMPLE (SECTION 20A: CHILDREN AND PARENTING))
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

replace H4KK1 = . if (H4KK1 == 96 | H4KK1 == 98)
replace H4KK2 = . if (H4KK2 == 6 | H4KK2 == 8)
replace H4KK3 = . if (H4KK3 == 6 | H4KK3 == 7 | H4KK3 == 8)
replace H4KK4Y = . if (H4KK4Y == 9996 | H4KK4Y == 9997 | H4KK4Y == 9998)
replace H4KK5 = . if (H4KK5 == 6 | H4KK5 == 7 | H4KK5 == 8)
replace H4KK6A = . if (H4KK6A == 6 | H4KK6A == 7 | H4KK6A == 8)
replace H4KK6B = . if (H4KK6B == 6 | H4KK6B == 7 | H4KK6B == 8)
replace H4KK6C = . if (H4KK6C == 6 | H4KK6C == 7 | H4KK6C == 8)
replace H4KK6D = . if (H4KK6D == 6 | H4KK6D == 7 | H4KK6D == 8)
replace H4KK6E = . if (H4KK6E == 6 | H4KK6E == 7 | H4KK6E == 8)
replace H4KK6F = . if (H4KK6F == 6 | H4KK6F == 7 | H4KK6F == 8)
replace H4KK6G = . if (H4KK6G == 6 | H4KK6G == 7 | H4KK6G == 8)
replace H4KK6H = . if (H4KK6H == 6 | H4KK6H == 7 | H4KK6H == 8)
replace H4KK6I = . if (H4KK6I == 6 | H4KK6I == 7 | H4KK6I == 8)
replace H4KK6J = . if (H4KK6J == 6 | H4KK6J == 7 | H4KK6J == 8)
replace H4KK7 = . if (H4KK7 == 96 | H4KK7 == 97 | H4KK7 == 98)
replace H4KK8 = . if (H4KK8 == 6 | H4KK8 == 7 | H4KK8 == 8)
replace H4KK9 = . if (H4KK9 == 96 | H4KK9 == 97 | H4KK9 == 98)
replace H4KK10 = . if (H4KK10 == 6 | H4KK10 == 7 | H4KK10 == 8)
replace H4KK11 = . if (H4KK11 == 6 | H4KK11 == 7 | H4KK11 == 8)
replace H4KK12 = . if (H4KK12 == 96 | H4KK12 == 97 | H4KK12 == 98)
replace H4KK13A = . if (H4KK13A == 6 | H4KK13A == 7 | H4KK13A == 8)
replace H4KK13B = . if (H4KK13B == 6 | H4KK13B == 7 | H4KK13B == 8)
replace H4KK13C = . if (H4KK13C == 6 | H4KK13C == 7 | H4KK13C == 8)
replace H4KK13D = . if (H4KK13D == 6 | H4KK13D == 7 | H4KK13D == 8)
replace H4KK13E = . if (H4KK13E == 6 | H4KK13E == 7 | H4KK13E == 8)
replace H4KK13F = . if (H4KK13F == 6 | H4KK13F == 7 | H4KK13F == 8)
replace H4KK13G = . if (H4KK13G == 6 | H4KK13G == 7 | H4KK13G == 8)
replace H4KK13H = . if (H4KK13H == 6 | H4KK13H == 7 | H4KK13H == 8)
replace H4KK13I = . if (H4KK13I == 6 | H4KK13I == 7 | H4KK13I == 8)
replace H4KK13J = . if (H4KK13J == 6 | H4KK13J == 7 | H4KK13J == 8)
replace H4KK13K = . if (H4KK13K == 6 | H4KK13K == 7 | H4KK13K == 8)
replace H4KK13L = . if (H4KK13L == 6 | H4KK13L == 7 | H4KK13L == 8)
replace H4KK13M = . if (H4KK13M == 6 | H4KK13M == 7 | H4KK13M == 8)
replace H4KK13N = . if (H4KK13N == 6 | H4KK13N == 7 | H4KK13N == 8)
replace H4KK13O = . if (H4KK13O == 6 | H4KK13O == 7 | H4KK13O == 8)
replace H4KK13P = . if (H4KK13P == 6 | H4KK13P == 7 | H4KK13P == 8)
replace H4KK13Q = . if (H4KK13Q == 6 | H4KK13Q == 7 | H4KK13Q == 8)
replace H4KK13R = . if (H4KK13R == 6 | H4KK13R == 7 | H4KK13R == 8)
replace H4KK13S = . if (H4KK13S == 6 | H4KK13S == 7 | H4KK13S == 8)
replace H4KK13T = . if (H4KK13T == 6 | H4KK13T == 7 | H4KK13T == 8)
replace H4KK13U = . if (H4KK13U == 6 | H4KK13U == 7 | H4KK13U == 8)


