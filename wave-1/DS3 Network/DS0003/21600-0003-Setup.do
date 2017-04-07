/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |               (DATASET 0003: WAVE I: NETWORK VARIABLES)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0003-statasetup.do)
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

format SIZE %4.0f
format IDGX2 %2.0f
format ODGX2 %2.0f
format NOUTNOM %2.0f
format TAB113 %1.0f
format BCENT10X %15.13f
format REACH %4.0f
format REACH3 %3.0f
format IGDMEAN %15.12f
format PRXPREST %15.13f
format INFLDMN %4.0f
format HAVEBMF %1.0f
format HAVEBFF %1.0f
format BMFRECIP %1.0f
format BMFRECBF %1.0f
format BFFRECIP %1.0f
format BFFRECBF %1.0f
format ESDEN %15.13f
format NES %2.0f
format ERDEN %15.13f
format NER %2.0f
format ESRDEN %15.13f
format NESR %2.0f
format EHSGRD %15.13f
format ERSNGRD %15.13f
format NEHSGRD %2.0f
format EHRGRD %15.13f
format ERRNGRD %15.13f
format NEHRGRD %2.0f
format EHGRD %15.13f
format ERNGRD %15.13f
format NEHGRD %2.0f
format EHSRC5 %15.13f
format ESRNRC5 %15.13f
format NEHSRC5 %2.0f
format EHRRC5 %15.13f
format ERRNRC5 %15.13f
format NEHRRC5 %2.0f
format EHRC5 %15.13f
format ERNRC5 %15.13f
format NEHRC5 %2.0f
format EHSAGE %15.13f
format ERSNAGE %15.13f
format NEHSAGE %2.0f
format EHRAGE %15.13f
format ERRNAGE %15.13f
format NEHRAGE %2.0f
format EHAGE %15.13f
format ERNAGE %15.13f
format NEHAGE %2.0f
format AXSGPA %15.13f
format AXSNACT %15.12f
format AXSS1 %15.12f
format AXSS2 %15.13f
format AXSS3 %15.12f
format AXSS45A %15.13f
format AXSS45B %15.13f
format AXSS45C %15.13f
format AXSS45D %15.13f
format AXSS45E %15.13f
format AXSS45F %15.13f
format AXSS46A %15.13f
format AXSS46B %15.13f
format AXSS46C %15.13f
format AXSS46D %15.13f
format AXSS47 %15.13f
format AXSS48 %15.13f
format AXSS49 %15.13f
format AXSS50 %15.13f
format AXSS59A %15.13f
format AXSS59B %15.13f
format AXSS59C %15.13f
format AXSS59D %15.13f
format AXSS59E %15.13f
format AXSS59F %15.13f
format AXSS59G %15.13f
format AXSS60A %15.13f
format AXSS60B %15.13f
format AXSS60C %15.13f
format AXSS60D %15.13f
format AXSS60E %15.13f
format AXSS60F %15.13f
format AXSS60G %15.13f
format AXSS60H %15.13f
format AXSS60I %15.13f
format AXSS60J %15.13f
format AXSS60K %15.13f
format AXSS60L %15.13f
format AXSS60M %15.13f
format AXSS60N %15.13f
format AXSS60O %15.13f
format AXSS62A %15.13f
format AXSS62B %15.13f
format AXSS62C %15.13f
format AXSS62D %15.13f
format AXSS62E %15.13f
format AXSS62F %15.13f
format AXSS62G %15.13f
format AXSS62H %15.13f
format AXSS62I %15.13f
format AXSS62J %15.13f
format AXSS62K %15.13f
format AXSS62L %15.13f
format AXSS62M %15.13f
format AXSS62N %15.13f
format AXSS62O %15.13f
format AXSS62P %15.13f
format AXSS62Q %15.13f
format AXSS62R %15.13f
format AXSS63 %15.13f
format AXSS64 %15.13f
format NASGPA %2.0f
format NASNACT %2.0f
format NASS1 %2.0f
format NASS2 %2.0f
format NASS3 %2.0f
format NASS45A %2.0f
format NASS45B %2.0f
format NASS45C %2.0f
format NASS45D %2.0f
format NASS45E %2.0f
format NASS45F %2.0f
format NASS46A %2.0f
format NASS46B %2.0f
format NASS46C %2.0f
format NASS46D %2.0f
format NASS47 %2.0f
format NASS48 %2.0f
format NASS49 %2.0f
format NASS50 %2.0f
format NASS59A %2.0f
format NASS59B %2.0f
format NASS59C %2.0f
format NASS59D %2.0f
format NASS59E %2.0f
format NASS59F %2.0f
format NASS59G %2.0f
format NASS60A %2.0f
format NASS60B %2.0f
format NASS60C %2.0f
format NASS60D %2.0f
format NASS60E %2.0f
format NASS60F %2.0f
format NASS60G %2.0f
format NASS60H %2.0f
format NASS60I %2.0f
format NASS60J %2.0f
format NASS60K %2.0f
format NASS60L %2.0f
format NASS60M %2.0f
format NASS60N %2.0f
format NASS60O %2.0f
format NASS62A %2.0f
format NASS62B %2.0f
format NASS62C %2.0f
format NASS62D %2.0f
format NASS62E %2.0f
format NASS62F %2.0f
format NASS62G %2.0f
format NASS62H %2.0f
format NASS62I %2.0f
format NASS62J %2.0f
format NASS62K %2.0f
format NASS62L %2.0f
format NASS62M %2.0f
format NASS62N %2.0f
format NASS62O %2.0f
format NASS62P %2.0f
format NASS62Q %2.0f
format NASS62R %2.0f
format NASS63 %2.0f
format NASS64 %2.0f
format AXRGPA %15.13f
format AXRNACT %15.12f
format AXRS1 %15.12f
format AXRS2 %15.13f
format AXRS3 %15.12f
format AXRS45A %15.13f
format AXRS45B %15.13f
format AXRS45C %15.13f
format AXRS45D %15.13f
format AXRS45E %15.13f
format AXRS45F %15.13f
format AXRS46A %15.13f
format AXRS46B %15.13f
format AXRS46C %15.13f
format AXRS46D %15.13f
format AXRS47 %15.13f
format AXRS48 %15.13f
format AXRS49 %15.13f
format AXRS50 %15.13f
format AXRS59A %15.13f
format AXRS59B %15.13f
format AXRS59C %15.13f
format AXRS59D %15.13f
format AXRS59E %15.13f
format AXRS59F %15.13f
format AXRS59G %15.13f
format AXRS60A %15.13f
format AXRS60B %15.13f
format AXRS60C %15.13f
format AXRS60D %15.13f
format AXRS60E %15.13f
format AXRS60F %15.13f
format AXRS60G %15.13f
format AXRS60H %15.13f
format AXRS60I %15.13f
format AXRS60J %15.13f
format AXRS60K %15.13f
format AXRS60L %15.13f
format AXRS60M %15.13f
format AXRS60N %15.13f
format AXRS60O %15.13f
format AXRS62A %15.13f
format AXRS62B %15.13f
format AXRS62C %15.13f
format AXRS62D %15.13f
format AXRS62E %15.13f
format AXRS62F %15.13f
format AXRS62G %15.13f
format AXRS62H %15.13f
format AXRS62I %15.13f
format AXRS62J %15.13f
format AXRS62K %15.13f
format AXRS62L %15.13f
format AXRS62M %15.13f
format AXRS62N %15.13f
format AXRS62O %15.13f
format AXRS62P %15.13f
format AXRS62Q %15.13f
format AXRS62R %15.13f
format AXRS63 %15.13f
format AXRS64 %15.13f
format NARGPA %2.0f
format NARNACT %2.0f
format NARS1 %2.0f
format NARS2 %2.0f
format NARS3 %2.0f
format NARS45A %2.0f
format NARS45B %2.0f
format NARS45C %2.0f
format NARS45D %2.0f
format NARS45E %2.0f
format NARS45F %2.0f
format NARS46A %2.0f
format NARS46B %2.0f
format NARS46C %2.0f
format NARS46D %2.0f
format NARS47 %2.0f
format NARS48 %2.0f
format NARS49 %2.0f
format NARS50 %2.0f
format NARS59A %2.0f
format NARS59B %2.0f
format NARS59C %2.0f
format NARS59D %2.0f
format NARS59E %2.0f
format NARS59F %2.0f
format NARS59G %2.0f
format NARS60A %2.0f
format NARS60B %2.0f
format NARS60C %2.0f
format NARS60D %2.0f
format NARS60E %2.0f
format NARS60F %2.0f
format NARS60G %2.0f
format NARS60H %2.0f
format NARS60I %2.0f
format NARS60J %2.0f
format NARS60K %2.0f
format NARS60L %2.0f
format NARS60M %2.0f
format NARS60N %2.0f
format NARS60O %2.0f
format NARS62A %2.0f
format NARS62B %2.0f
format NARS62C %2.0f
format NARS62D %2.0f
format NARS62E %2.0f
format NARS62F %2.0f
format NARS62G %2.0f
format NARS62H %2.0f
format NARS62I %2.0f
format NARS62J %2.0f
format NARS62K %2.0f
format NARS62L %2.0f
format NARS62M %2.0f
format NARS62N %2.0f
format NARS62O %2.0f
format NARS62P %2.0f
format NARS62Q %2.0f
format NARS62R %2.0f
format NARS63 %2.0f
format NARS64 %2.0f
format AXGPA %15.13f
format AXNUMACT %15.13f
format AXS1 %15.12f
format AXS2 %15.13f
format AXS3 %15.12f
format AXS45A %15.13f
format AXS45B %15.13f
format AXS45C %15.13f
format AXS45D %15.13f
format AXS45E %15.13f
format AXS45F %15.13f
format AXS46A %15.13f
format AXS46B %15.13f
format AXS46C %15.13f
format AXS46D %15.13f
format AXS47 %15.13f
format AXS48 %15.13f
format AXS49 %15.13f
format AXS50 %15.13f
format AXS59A %15.13f
format AXS59B %15.13f
format AXS59C %15.13f
format AXS59D %15.13f
format AXS59E %15.13f
format AXS59F %15.13f
format AXS59G %15.13f
format AXS60A %15.13f
format AXS60B %15.13f
format AXS60C %15.13f
format AXS60D %15.13f
format AXS60E %15.13f
format AXS60F %15.13f
format AXS60G %15.13f
format AXS60H %15.13f
format AXS60I %15.13f
format AXS60J %15.13f
format AXS60K %15.13f
format AXS60L %15.13f
format AXS60M %15.13f
format AXS60N %15.13f
format AXS60O %15.13f
format AXS62A %15.13f
format AXS62B %15.13f
format AXS62C %15.13f
format AXS62D %15.13f
format AXS62E %15.13f
format AXS62F %15.13f
format AXS62G %15.13f
format AXS62H %15.13f
format AXS62I %15.13f
format AXS62J %15.13f
format AXS62K %15.13f
format AXS62L %15.13f
format AXS62M %15.13f
format AXS62N %15.13f
format AXS62O %15.13f
format AXS62P %15.13f
format AXS62Q %15.13f
format AXS62R %15.13f
format AXS63 %15.13f
format AXS64 %15.13f
format NAGPA %2.0f
format NANUMACT %2.0f
format NAS1 %2.0f
format NAS2 %2.0f
format NAS3 %2.0f
format NAS45A %2.0f
format NAS45B %2.0f
format NAS45C %2.0f
format NAS45D %2.0f
format NAS45E %2.0f
format NAS45F %2.0f
format NAS46A %2.0f
format NAS46B %2.0f
format NAS46C %2.0f
format NAS46D %2.0f
format NAS47 %2.0f
format NAS48 %2.0f
format NAS49 %2.0f
format NAS50 %2.0f
format NAS59A %2.0f
format NAS59B %2.0f
format NAS59C %2.0f
format NAS59D %2.0f
format NAS59E %2.0f
format NAS59F %2.0f
format NAS59G %2.0f
format NAS60A %2.0f
format NAS60B %2.0f
format NAS60C %2.0f
format NAS60D %2.0f
format NAS60E %2.0f
format NAS60F %2.0f
format NAS60G %2.0f
format NAS60H %2.0f
format NAS60I %2.0f
format NAS60J %2.0f
format NAS60K %2.0f
format NAS60L %2.0f
format NAS60M %2.0f
format NAS60N %2.0f
format NAS60O %2.0f
format NAS62A %2.0f
format NAS62B %2.0f
format NAS62C %2.0f
format NAS62D %2.0f
format NAS62E %2.0f
format NAS62F %2.0f
format NAS62G %2.0f
format NAS62H %2.0f
format NAS62I %2.0f
format NAS62J %2.0f
format NAS62K %2.0f
format NAS62L %2.0f
format NAS62M %2.0f
format NAS62N %2.0f
format NAS62O %2.0f
format NAS62P %2.0f
format NAS62Q %2.0f
format NAS62R %2.0f
format NAS63 %2.0f
format NAS64 %2.0f
format DENX2 %15.13f
format RCHDEN %15.13f
format RELDEN %15.13f
format PCTMUT %15.13f
format PCTASY %15.13f
format RHO2 %15.13f
format SEG1S3 %15.13f
format SS37 %15.12f
format SS38 %15.12f
format SS39 %15.13f
format SS310 %15.13f
format SS311 %15.13f
format SS312 %15.12f
format SEG1RCE5 %15.12f
format SRCE51 %15.12f
format SRCE52 %15.12f
format SRCE53 %15.12f
format SRCE54 %15.12f
format SRCE55 %15.13f
format SEG1S2 %15.13f
format SS20 %15.13f
format SS21 %15.13f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave I: Network Variables"

#delimit ;
label define HAVEBMF   0 "(0) Ego didn't nominate a male best friend"
                       1 "(1) Ego nominiated a male best friend" ;
label define HAVEBFF   0 "(0) Ego didn't nominate a female best friend"
                       1 "(1) Ego nominiated a female best friend" ;
label define BMFRECIP
                       0 "(0) Ego's best male friend didnt reciprocate friend nominati"
                       1 "(1) Ego's best male friend reciprocated friendship nominatio" ;
label define BMFRECBF
                       0 "(0) Ego's best male friend didn't reciprocate as best friend"
                       1 "(1) Ego's best male friend reciprocated as best friend" ;
label define BFFRECIP
                       0 "(0) Ego's female best friend didnt reciprocate friend nomina"
                       1 "(1) Ego's female best friend reciprocated friendship nominat" ;
label define BFFRECBF
                       0 "(0) Ego's female best friend didn't reciprocate as best frie"
                       1 "(1) Ego's female best friend reciprocated as best friend" ;


#delimit cr

/********************************************************************

 Section 5: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

