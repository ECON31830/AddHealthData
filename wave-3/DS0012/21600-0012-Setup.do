/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |         (DATASET 0012: WAVE III: IN-HOME QUESTIONNAIRE, PUBLIC
 |            USE SAMPLE (SECTION 22: COMPLETED PREGNANCIES))
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0012-statasetup.do)
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
format H3PG1 %2.0f
format H3PG2 %2.0f
format H3PG3 %2.0f
format H3PG4 %1.0f
format H3PG5 %1.0f
format H3PG6A %2.0f
format H3PG6B %2.0f
format H3PG6C %2.0f
format H3PG7 %1.0f
format H3PG8 %1.0f
format H3PG9 %1.0f
format H3PG10 %1.0f
format H3PG11 %1.0f
format H3PG12 %1.0f
format H3PG13 %2.0f
format H3PG14 %2.0f
format H3PG15 %2.0f
format H3PG16 %2.0f
format H3PG17A %1.0f
format H3PG17B %1.0f
format H3PG17C %1.0f
format H3PG17D %1.0f
format H3PG17E %1.0f
format H3PG17F %1.0f
format H3PG18 %1.0f
format H3PG19 %1.0f
format H3PG20 %1.0f
format H3PG21A %1.0f
format H3PG21B %1.0f
format H3PG21C %1.0f
format H3PG21D %1.0f
format H3PG21E %1.0f
format H3PG21F %1.0f
format H3PG22 %1.0f
format H3PG23 %1.0f
format H3PG24 %1.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave III: In-Home Questionnaire, Public Use Sample (Section 22: Completed Pregnancies)"

#delimit ;
label define H3PG1     0 "(0) 0 months" 1 "(1) 1 month" 2 "(2) 2 months"
                       3 "(3) 3 months" 4 "(4) 4 months" 5 "(5) 5 months"
                       6 "(6) 6 months" 7 "(7) 7 months" 8 "(8) 8 months"
                       9 "(9) 9 months" 96 "(96) Refused"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3PG2     0 "(0) 0 weeks" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3PG3     0 "(0) Had never gone to school"
                       1 "(1) 8th grade or less"
                       2 "(2) >8th grade/but not high school graduate"
                       3 "(3) Business/trade/voc. school instead high school"
                       4 "(4) High school graduate" 5 "(5) Completed GED"
                       6 "(6) Business/trade/voc. school after high school"
                       7 "(7) Attending college"
                       8 "(8) College/didn't graduate"
                       9 "(9) College/university graduate"
                       10 "(10) Attending graduate school"
                       11 "(11) Receiving professional training beyond 4-year college/u"
                       12 "(12) Had received an advanced degree"
                       96 "(96) Refused" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3PG4     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3PG5     0 "(0) No (skip to Q.8)" 1 "(1) Yes" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3PG6A    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
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
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3PG6B    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
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
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3PG6C    1 "(1) Condoms (rubbers)" 2 "(2) Withdrawal"
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
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3PG7     0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG8     0 "(0) No" 1 "(1) Yes (skip to Q.10" 6 "(6) Refused"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3PG9     0 "(0) No (skip to Q.11)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG10    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG11    0 "(0) No (skip to Q.18)" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG12    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG13    0 "(0) Before the 1st month" 1 "(1) 1st month"
                       2 "(2) 2nd month" 3 "(3) 3rd month" 4 "(4) 4th month"
                       5 "(5) 5th month" 6 "(6) 6th month" 7 "(7) 7th month"
                       8 "(8) 8th month" 9 "(9) 9th month" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3PG14    96 "(96) Refused" 97 "(97) Legitimate skip"
                       98 "(98) Don't know" 99 "(99) Not applicable" ;
label define H3PG15    0 "(0) 0 visits" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3PG16    1 "(1) Private doctor's office"
                       2 "(2) Nurse-midwife's office"
                       3 "(3) County or city health department"
                       4 "(4) Community health center"
                       5 "(5) HMO (health maintenance organization)"
                       6 "(6) Clinic at work or at school"
                       7 "(7) Clinic in a hospital"
                       8 "(8) Emergency room in a hospital"
                       9 "(9) Birthing center"
                       10 "(10) Another sort of place" 96 "(96) Refused"
                       97 "(97) Legitimate skip" 98 "(98) Don't know"
                       99 "(99) Not applicable" ;
label define H3PG17A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG17B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG17C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG17D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG17E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG17F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG18    0 "(0) Never" 1 "(1) Less than once a month"
                       2 "(2) Several times a month"
                       3 "(3) Several times a week" 4 "(4) Almost every day"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3PG19    0 "(0) Never" 1 "(1) Less than once a month"
                       2 "(2) Several times a month"
                       3 "(3) Several times a week" 4 "(4) Almost every day"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;
label define H3PG20    0 "(0) None" 1 "(1) 1 pack a day or less"
                       2 "(2) More than 1 pack/day, but less than 2 packs/day"
                       3 "(3) 2 or more packs a day" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG21A   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG21B   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG21C   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG21D   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG21E   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG21F   0 "(0) Not marked" 1 "(1) Marked" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG22    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG23    0 "(0) No" 1 "(1) Yes" 6 "(6) Refused"
                       7 "(7) Legitimate skip" 8 "(8) Don't know"
                       9 "(9) Not applicable" ;
label define H3PG24    1 "(1) We didn't see or talk to each other"
                       2 "(2) We hardly ever saw or talked to each other"
                       3 "(3) We were just friends"
                       4 "(4) We were involved in an on-again/off-again relationship"
                       5 "(5) We were romantically involved on a steady basis"
                       6 "(6) Refused" 7 "(7) Legitimate skip"
                       8 "(8) Don't know" 9 "(9) Not applicable" ;


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


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

