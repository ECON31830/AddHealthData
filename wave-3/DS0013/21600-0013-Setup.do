/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0013: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |             USE SAMPLE (SECTION 23: CURRENT PREGNANCIES))
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0013-statasetup.do)
 |
 **************************************************************************/


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from ICPSR
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "data-filename"
local dict "dictionary-filename"
local outfile "stata-datafile"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/********************************************************************

 Section 3: Reformat

  This section applies optimized formats to variables.

*********************************************************************/

format RRELNO %2.0f
format RPREGNO %1.0f
format H3PC1 %1.0f
format H3PC2 %2.0f
format H3PC3 %2.0f
format H3PC4 %1.0f
format H3PC5 %1.0f
format H3PC6 %2.0f
format H3PC7 %1.0f
format H3PC8 %2.0f
format H3PC9A %1.0f
format H3PC9B %1.0f
format H3PC9C %1.0f
format H3PC9D %1.0f
format H3PC9E %1.0f
format H3PC9F %1.0f
format H3PC10A %1.0f
format H3PC10B %1.0f
format H3PC10C %1.0f
format H3PC10D %1.0f
format H3PC10E %1.0f
format H3PC10F %1.0f
format H3PC11 %1.0f
format H3PC12 %1.0f
format H3PC13 %1.0f
format H3PC14 %1.0f
format H3PC15 %1.0f
format H3PC16 %2.0f
format H3PC17 %2.0f
format H3PC18 %2.0f
format H3PC19 %1.0f
format H3PC20A %2.0f
format H3PC20B %2.0f
format H3PC20C %2.0f
format H3PC21 %1.0f
format H3PC22 %1.0f
format H3PC23 %1.0f
format H3PC24 %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave III: In-Home Questionnaire, Public Use Sample (Section 23: Current Pregnancies)"

#delimit ;
label define H3PC1     0 "(0) No (skip to Q.3)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" ;
label define H3PC2     0 "(0) 0 months" 1 "(1) 1 month" 2 "(2) 2 months"
                       3 "(3) 3 months" 4 "(4) 4 months" 5 "(5) 5 months"
                       6 "(6) 6 months" 7 "(7) 7 months" 8 "(8) 8 months"
                       9 "(9) 9 months" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3PC3     1 "(1) Month 1" 2 "(2) Month 2" 3 "(3) Month 3"
                       4 "(4) Month 4" 5 "(5) Month 5" 6 "(6) Month 6"
                       7 "(7) Month 7" 8 "(8) Month 8" 9 "(9) Month 9"
                       96 "(96) Refused" 98 "(98) Don't know" ;
label define H3PC4     0 "(0) No" 1 "(1) Yes (skip to Q.6)" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3PC5     0 "(0) No" 1 "(1) Yes (skip to Q.8)" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PC6     0 "(0) 0 visits" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3PC7     0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3PC8     1 "(1) Private doctor's office"
                       2 "(2) Nurse-midwife's office"
                       3 "(3) County or city health department"
                       4 "(4) Community health center"
                       5 "(5) HMO (health maintenance organization)"
                       6 "(6) Clinic at work or at school"
                       7 "(7) Clinic in a hospital"
                       8 "(8) Emergency room in a hospital"
                       9 "(9) Birthing center"
                       10 "(10) Another sort of place" 96 "(96) Refused"
                       97 "(97) Legitimate skip" ;
label define H3PC9A    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3PC9B    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3PC9C    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3PC9D    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3PC9E    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3PC9F    0 "(0) Not marked" 1 "(1) Marked"
                       7 "(7) Legitimate skip" 8 "(8) Don't know" ;
label define H3PC10A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3PC10B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3PC10C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3PC10D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3PC10E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3PC10F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       8 "(8) Don't know" ;
label define H3PC11    0 "(0) Never" 1 "(1) Less than once a month"
                       2 "(2) Several times a month"
                       3 "(3) Several times a week" 4 "(4) Nearly every day"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PC12    0 "(0) Never" 1 "(1) Less than once a month"
                       2 "(2) Several times a month"
                       3 "(3) Several times a week" 4 "(4) Nearly every day"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PC13    0 "(0) None" 1 "(1) Less than 1 pack a day"
                       2 "(2) 1 pack a day or more/but less than 2 packs a day"
                       6 "(6) Refused" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PC14    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       9 "(9) Not applicable" ;
label define H3PC15    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       9 "(9) Not applicable" ;
label define H3PC16    1 "(1) We never see or talk to each other"
                       2 "(2) We hardly ever see or talk to each other"
                       3 "(3) We are just friends"
                       4 "(4) We are involved in an on-again/off-again relationship"
                       5 "(5) We are romantically involved on a steady basis"
                       97 "(97) Legitimate skip" 98 "(98) Don't know" ;
label define H3PC17    96 "(96) Refused" 98 "(98) Don't know" ;
label define H3PC18    1 "(1) 8th grade or less"
                       2 "(2) >8th grade/but not a high school graduate"
                       3 "(3) Business/trade/voc. school instead high school"
                       4 "(4) High school graduate" 5 "(5) Completed GED"
                       6 "(6) Business/trade/voc. school after high school"
                       7 "(7) Attending college"
                       8 "(8) College/hasn't graduated"
                       9 "(9) College/university graduate"
                       10 "(10) Attending graduate school"
                       11 "(11) Receiving professional training beyond 4-year college/u"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3PC19    0 "(0) No (skip to Q.22)" 1 "(1) Yes" 6 "(6) Refused"
                       9 "(9) Not applicable" ;
label define H3PC20A   1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       4 "(4) Natural fam plan/safe period by temp/cervical mucus test"
                       5 "(5) Birth control pills (the pill)"
                       14 "(14) The injectable or Depo Provera"
                       97 "(97) Legitimate skip" 99 "(99) Not applicable" ;
label define H3PC20B   1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time) or safe period by the calendar"
                       4 "(4) Natural fam plan/safe period by temp/cervical mucus test"
                       5 "(5) Birth control pills (the pill)"
                       6 "(6) Vaginal sponge"
                       7 "(7) Spermicidal foam/jelly/creme/suppositories"
                       8 "(8) Diaphragm, with/without jelly/cream"
                       9 "(9) Cervical cap" 10 "(10) Female condom"
                       11 "(11) IUD (intrauterine device)/coil/loop"
                       12 "(12) The implant of Norplant" 13 "(13) Ring"
                       14 "(14) The injectable or Depo Provera"
                       15 "(15) Vaginal contraceptive film or insert"
                       16 "(16) Female sterilization/tubal ligation"
                       17 "(17) Hysterectomy" 18 "(18) Vasectomy"
                       19 "(19) Emer contraception-high dose birth cont/morning after p"
                       20 "(20) Some other method" 21 "(21) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3PC20C   1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
                       3 "(3) Rhythm (safe time) or safe period by the calendar"
                       4 "(4) Natural fam plan/safe period by temp/cervical mucus test"
                       5 "(5) Birth control pills (the pill)"
                       6 "(6) Vaginal sponge"
                       7 "(7) Spermicidal foam/jelly/creme/suppositories"
                       8 "(8) Diaphragm, with/without jelly/cream"
                       9 "(9) Cervical cap" 10 "(10) Female condom"
                       11 "(11) IUD (intrauterine device)/coil/loop"
                       12 "(12) The implant of Norplant" 13 "(13) Ring"
                       14 "(14) The injectable or Depo Provera"
                       15 "(15) Vaginal contraceptive film or insert"
                       16 "(16) Female sterilization/tubal ligation"
                       17 "(17) Hysterectomy" 18 "(18) Vasectomy"
                       19 "(19) Emer contraception-high dose birth cont/morning after p"
                       20 "(20) Some other method" 21 "(21) No other method"
                       96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" ;
label define H3PC21    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip" ;
label define H3PC22    0 "(0) No" 1 "(1) Yes (skip to Q.24)" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3PC23    0 "(0) No"
                       1 "(1) Yes (Return to Q.1 for the next pregnancy)"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3PC24    0 "(0) No" 1 "(1) Yes" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" ;


#delimit cr


/***************************************************************************

 Section 5: Missing Values

 This section will replace numeric missing values (i.e., -9) with generic
 system missing ".".  By default the code in this section is commented out.
 Users wishing to apply the generic missing values should remove the comment
 at the beginning and end of this section.  Note that Stata allows you to
 specify up to 27 unique missing value codes.

****************************************************************/

/*
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


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

