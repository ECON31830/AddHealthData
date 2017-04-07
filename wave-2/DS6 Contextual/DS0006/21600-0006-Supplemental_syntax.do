/*-------------------------------------------------------------------------*
 |                                                                         
 |            STATA SUPPLEMENTAL SYNTAX FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |        (DATASET 0006: WAVE II: PUBLIC USE CONTEXTUAL DATABASE)
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

replace BST90P01 = . if (BST90P01 == 8 | BST90P01 == 9)
replace BST90P02 = . if (BST90P02 == 8 | BST90P02 == 9)
replace BST90P03 = . if (BST90P03 == 9998.000 | BST90P03 == 9999.000)
replace BST90P04 = . if (BST90P04 == 8 | BST90P04 == 9)
replace BST90P05 = . if (BST90P05 == 8 | BST90P05 == 9)
replace BST90P06 = . if (BST90P06 == 98 | BST90P06 == 99)
replace BST90P07 = . if (BST90P07 == 9998.000 | BST90P07 == 9999.000)
replace BST90P08 = . if (BST90P08 == 8 | BST90P08 == 9)
replace BST90P09 = . if (BST90P09 == 9998.000 | BST90P09 == 9999.000)
replace BST90P10 = . if (BST90P10 == 8 | BST90P10 == 9)
replace BST90P11 = . if (BST90P11 == 8 | BST90P11 == 9)
replace BST90P12 = . if (BST90P12 == 9998.000 | BST90P12 == 9999.000)
replace BST90P13 = . if (BST90P13 == 8 | BST90P13 == 9)
replace BST90P14 = . if (BST90P14 == 9998.000 | BST90P14 == 9999.000)
replace BST90P15 = . if (BST90P15 == 999998 | BST90P15 == 999999)
replace BST90P16 = . if (BST90P16 == 9998.000 | BST90P16 == 9999.000)
replace BST90P17 = . if (BST90P17 == 999998 | BST90P17 == 999999)
replace BST90P18 = . if (BST90P18 == 9998.000 | BST90P18 == 9999.000)
replace BST90P19 = . if (BST90P19 == 8 | BST90P19 == 9)
replace BST90P20 = . if (BST90P20 == 8 | BST90P20 == 9)
replace BST90P21 = . if (BST90P21 == 9998.000 | BST90P21 == 9999.000)
replace BST90P22 = . if (BST90P22 == 8 | BST90P22 == 9)
replace BST90P23 = . if (BST90P23 == 8 | BST90P23 == 9)
replace BST90P24 = . if (BST90P24 == 8 | BST90P24 == 9)
replace BST90P25 = . if (BST90P25 == 9998.000 | BST90P25 == 9999.000)
replace BST90P26 = . if (BST90P26 == 8 | BST90P26 == 9)
replace BST90P27 = . if (BST90P27 == 8 | BST90P27 == 9)
replace BST90P28 = . if (BST90P28 == 999998 | BST90P28 == 999999)
replace BST90P29 = . if (BST90P29 == 9998.000 | BST90P29 == 9999.000)


