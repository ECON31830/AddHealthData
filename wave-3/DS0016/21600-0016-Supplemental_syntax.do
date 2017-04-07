/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |          (DATASET 0016: WAVE III: PUBLIC USE EDUCATION DATA)
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

replace ELYEAR2 = . if (ELYEAR2 == 9992)
replace ELYEAR3 = . if (ELYEAR3 == 9992)
replace ELYEAR4 = . if (ELYEAR4 == 9992)
replace ELYEAR5 = . if (ELYEAR5 == 9992)
replace ELYEAR6 = . if (ELYEAR6 == 9992)
replace ELMAT945 = . if (ELMAT945 == 9993 | ELMAT945 == 9994)
replace ELGLV945 = . if (ELGLV945 >= 9993.0 & ELGLV945 <= 9995.0)
replace EAMSQ1 = . if (EAMSQ1 == 9993)
replace EAMSQ2 = . if (EAMSQ2 == 9992 | EAMSQ2 == 9993)
replace EAMSQ3 = . if (EAMSQ3 == 9992 | EAMSQ3 == 9993)
replace EAMSQ4 = . if (EAMSQ4 == 9992 | EAMSQ4 == 9993)
replace EAMSQ5 = . if (EAMSQ5 == 9992 | EAMSQ5 == 9993)
replace EAMSQ6 = . if (EAMSQ6 == 9992 | EAMSQ6 == 9993)
replace EAMSQH = . if (EAMSQH == 9993)
replace EAMSQB1 = . if (EAMSQB1 == 9993)
replace EAMSQB2 = . if (EAMSQB2 == 9992 | EAMSQB2 == 9993)
replace EAMSQB3 = . if (EAMSQB3 == 9992 | EAMSQB3 == 9993)
replace EAMSQB4 = . if (EAMSQB4 == 9992 | EAMSQB4 == 9993)
replace EAMSQB5 = . if (EAMSQB5 == 9992 | EAMSQB5 == 9993)
replace EAMSQB6 = . if (EAMSQB6 == 9992 | EAMSQB6 == 9993)
replace EAMSQBH = . if (EAMSQBH == 9993)
replace EASSQ1 = . if (EASSQ1 == 9993)
replace EASSQ2 = . if (EASSQ2 == 9992 | EASSQ2 == 9993)
replace EASSQ3 = . if (EASSQ3 == 9992 | EASSQ3 == 9993)
replace EASSQ4 = . if (EASSQ4 == 9992 | EASSQ4 == 9993)
replace EASSQ5 = . if (EASSQ5 == 9992 | EASSQ5 == 9993)
replace EASSQ6 = . if (EASSQ6 == 9992 | EASSQ6 == 9993)
replace EASSQH = . if (EASSQH == 9993)
replace EASSQB1 = . if (EASSQB1 == 9993)
replace EASSQB2 = . if (EASSQB2 == 9992 | EASSQB2 == 9993)
replace EASSQB3 = . if (EASSQB3 == 9992 | EASSQB3 == 9993)
replace EASSQB4 = . if (EASSQB4 == 9992 | EASSQB4 == 9993)
replace EASSQB5 = . if (EASSQB5 == 9992 | EASSQB5 == 9993)
replace EASSQB6 = . if (EASSQB6 == 9992 | EASSQB6 == 9993)
replace EASSQBH = . if (EASSQBH == 9993)
replace EAMGPA1 = . if (EAMGPA1 >= 9993.000 & EAMGPA1 <= 9995.000)
replace EAMGPA2 = . if (EAMGPA2 >= 9992.000 & EAMGPA2 <= 9995.000)
replace EAMGPA3 = . if (EAMGPA3 >= 9992.000 & EAMGPA3 <= 9995.000)
replace EAMGPA4 = . if (EAMGPA4 >= 9992.000 & EAMGPA4 <= 9995.000)
replace EAMGPA5 = . if (EAMGPA5 >= 9992.000 & EAMGPA5 <= 9995.000)
replace EAMGPA6 = . if (EAMGPA6 >= 9992.000 & EAMGPA6 <= 9995.000)
replace EAMGPAC = . if (EAMGPAC == 9993.000 | EAMGPAC == 9995.000)
replace EASGPA1 = . if (EASGPA1 >= 9993.000 & EASGPA1 <= 9995.000)
replace EASGPA2 = . if (EASGPA2 >= 9992.000 & EASGPA2 <= 9995.000)
replace EASGPA3 = . if (EASGPA3 >= 9992.000 & EASGPA3 <= 9995.000)
replace EASGPA4 = . if (EASGPA4 >= 9992.000 & EASGPA4 <= 9995.000)
replace EASGPA5 = . if (EASGPA5 >= 9992.000 & EASGPA5 <= 9995.000)
replace EASGPA6 = . if (EASGPA6 >= 9992.000 & EASGPA6 <= 9995.000)
replace EASGPAC = . if (EASGPAC == 9993.000 | EASGPAC == 9995.000)
replace EAOGPA1 = . if (EAOGPA1 == 9995.000)
replace EAOGPA2 = . if (EAOGPA2 == 9992.000 | EAOGPA2 == 9995.000)
replace EAOGPA3 = . if (EAOGPA3 == 9992.000 | EAOGPA3 == 9995.000)
replace EAOGPA4 = . if (EAOGPA4 == 9992.000 | EAOGPA4 == 9995.000)
replace EAOGPA5 = . if (EAOGPA5 == 9992.000 | EAOGPA5 == 9995.000)
replace EAOGPA6 = . if (EAOGPA6 == 9992.000 | EAOGPA6 == 9995.000)
replace EAOGPAC = . if (EAOGPAC == 9995.000)
replace EAMFIX1 = . if (EAMFIX1 >= 9993.000 & EAMFIX1 <= 9995.000)
replace EAMFIX2 = . if (EAMFIX2 >= 9992.000 & EAMFIX2 <= 9995.000)
replace EAMFIX3 = . if (EAMFIX3 >= 9992.000 & EAMFIX3 <= 9995.000)
replace EAMFIX4 = . if (EAMFIX4 >= 9992.000 & EAMFIX4 <= 9995.000)
replace EAMFIX5 = . if (EAMFIX5 >= 9992.000 & EAMFIX5 <= 9995.000)
replace EAMFIX6 = . if (EAMFIX6 >= 9992.000 & EAMFIX6 <= 9995.000)
replace EAMFIXC = . if (EAMFIXC == 9993.000 | EAMFIXC == 9995.000)
replace EASFIX1 = . if (EASFIX1 >= 9993.000 & EASFIX1 <= 9995.000)
replace EASFIX2 = . if (EASFIX2 >= 9992.000 & EASFIX2 <= 9995.000)
replace EASFIX3 = . if (EASFIX3 >= 9992.000 & EASFIX3 <= 9995.000)
replace EASFIX4 = . if (EASFIX4 >= 9992.000 & EASFIX4 <= 9995.000)
replace EASFIX5 = . if (EASFIX5 >= 9992.000 & EASFIX5 <= 9995.000)
replace EASFIX6 = . if (EASFIX6 >= 9992.000 & EASFIX6 <= 9995.000)
replace EASFIXC = . if (EASFIXC == 9993.000 | EASFIXC == 9995.000)
replace EAOFIX1 = . if (EAOFIX1 == 9995.000)
replace EAOFIX2 = . if (EAOFIX2 == 9992.000 | EAOFIX2 == 9995.000)
replace EAOFIX3 = . if (EAOFIX3 == 9992.000 | EAOFIX3 == 9995.000)
replace EAOFIX4 = . if (EAOFIX4 == 9992.000 | EAOFIX4 == 9995.000)
replace EAOFIX5 = . if (EAOFIX5 == 9992.000 | EAOFIX5 == 9995.000)
replace EAOFIX6 = . if (EAOFIX6 == 9992.000 | EAOFIX6 == 9995.000)
replace EAOFIXC = . if (EAOFIXC == 9995.000)


