/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 21600
 |       NATIONAL LONGITUDINAL STUDY OF ADOLESCENT TO ADULT HEALTH
 |                  (ADD HEALTH), 1994-2008 [PUBLIC USE]
 |          (DATASET 0016: WAVE III: PUBLIC USE EDUCATION DATA)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 21600-0016-statasetup.do)
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

format ELYEAR1 %4.0f
format ELYEAR2 %4.0f
format ELYEAR3 %4.0f
format ELYEAR4 %4.0f
format ELYEAR5 %4.0f
format ELYEAR6 %4.0f
format ELMAT945 %4.0f
format ELGLV945 %6.1f
format ELY1NINE %1.0f
format EAMSQ1 %4.0f
format EAMSQ2 %4.0f
format EAMSQ3 %4.0f
format EAMSQ4 %4.0f
format EAMSQ5 %4.0f
format EAMSQ6 %4.0f
format EAMSQH %4.0f
format EAMSQB1 %4.0f
format EAMSQB2 %4.0f
format EAMSQB3 %4.0f
format EAMSQB4 %4.0f
format EAMSQB5 %4.0f
format EAMSQB6 %4.0f
format EAMSQBH %4.0f
format EASSQ1 %4.0f
format EASSQ2 %4.0f
format EASSQ3 %4.0f
format EASSQ4 %4.0f
format EASSQ5 %4.0f
format EASSQ6 %4.0f
format EASSQH %4.0f
format EASSQB1 %4.0f
format EASSQB2 %4.0f
format EASSQB3 %4.0f
format EASSQB4 %4.0f
format EASSQB5 %4.0f
format EASSQB6 %4.0f
format EASSQBH %4.0f
format EAMGPA1 %8.3f
format EAMGPA2 %8.3f
format EAMGPA3 %8.3f
format EAMGPA4 %8.3f
format EAMGPA5 %8.3f
format EAMGPA6 %8.3f
format EAMGPAC %8.3f
format EASGPA1 %8.3f
format EASGPA2 %8.3f
format EASGPA3 %8.3f
format EASGPA4 %8.3f
format EASGPA5 %8.3f
format EASGPA6 %8.3f
format EASGPAC %8.3f
format EAOGPA1 %8.3f
format EAOGPA2 %8.3f
format EAOGPA3 %8.3f
format EAOGPA4 %8.3f
format EAOGPA5 %8.3f
format EAOGPA6 %8.3f
format EAOGPAC %8.3f
format EAMFIX1 %8.3f
format EAMFIX2 %8.3f
format EAMFIX3 %8.3f
format EAMFIX4 %8.3f
format EAMFIX5 %8.3f
format EAMFIX6 %8.3f
format EAMFIXC %8.3f
format EASFIX1 %8.3f
format EASFIX2 %8.3f
format EASFIX3 %8.3f
format EASFIX4 %8.3f
format EASFIX5 %8.3f
format EASFIX6 %8.3f
format EASFIXC %8.3f
format EAOFIX1 %8.3f
format EAOFIX2 %8.3f
format EAOFIX3 %8.3f
format EAOFIX4 %8.3f
format EAOFIX5 %8.3f
format EAOFIX6 %8.3f
format EAOFIXC %8.3f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Longitudinal Study of Adolescent to Adult Health (Add Health), 1994-2008 [Public Use], Wave III: Public Use Education Data"

#delimit ;
label define ELYEAR1   1987 "(1987) 1987-1988" 1988 "(1988) 1988-1989"
                       1989 "(1989) 1989-1990" 1990 "(1990) 1990-1991"
                       1991 "(1991) 1991-1992" 1992 "(1992) 1992-1993"
                       1993 "(1993) 1993-1994" 1994 "(1994) 1994-1995"
                       1995 "(1995) 1995-1996" 1996 "(1996) 1996-1997"
                       1997 "(1997) 1997-1998" 1998 "(1998) 1998-1999"
                       1999 "(1999) 1999-2000" ;
label define ELYEAR2   1989 "(1989) 1989-1990" 1990 "(1990) 1990-1991"
                       1991 "(1991) 1991-1992" 1992 "(1992) 1992-1993"
                       1993 "(1993) 1993-1994" 1994 "(1994) 1994-1995"
                       1995 "(1995) 1995-1996" 1996 "(1996) 1996-1997"
                       1997 "(1997) 1997-1998" 1998 "(1998) 1998-1999"
                       1999 "(1999) 1999-2000"
                       9992 "(9992) No course taking data in Year 2" ;
label define ELYEAR3   1990 "(1990) 1990-1991" 1991 "(1991) 1991-1992"
                       1992 "(1992) 1992-1993" 1993 "(1993) 1993-1994"
                       1994 "(1994) 1994-1995" 1995 "(1995) 1995-1996"
                       1996 "(1996) 1996-1997" 1997 "(1997) 1997-1998"
                       1998 "(1998) 1998-1999" 1999 "(1999) 1999-2000"
                       9992 "(9992) No course taking data in Year 3" ;
label define ELYEAR4   1991 "(1991) 1991-1992" 1992 "(1992) 1992-1993"
                       1993 "(1993) 1993-1994" 1994 "(1994) 1994-1995"
                       1995 "(1995) 1995-1996" 1996 "(1996) 1996-1997"
                       1997 "(1997) 1997-1998" 1998 "(1998) 1998-1999"
                       1999 "(1999) 1999-2000" 2000 "(2000) 1999-2000"
                       9992 "(9992) No course taking data in Year 4" ;
label define ELYEAR5   1992 "(1992) 1992-1993" 1993 "(1993) 1993-1994"
                       1994 "(1994) 1994-1995" 1995 "(1995) 1995-1996"
                       1996 "(1996) 1996-1997" 1997 "(1997) 1997-1998"
                       1998 "(1998) 1998-1999" 1999 "(1999) 1999-2000"
                       9992 "(9992) No course taking data in Year 5" ;
label define ELYEAR6   1993 "(1993) 1993-1994" 1994 "(1994) 1994-1995"
                       1995 "(1995) 1995-1996" 1996 "(1996) 1996-1997"
                       1997 "(1997) 1997-1998" 1998 "(1998) 1998-1999"
                       1999 "(1999) 1999-2000"
                       9992 "(9992) No course taking data in Year 6" ;
label define ELMAT945  1 "(1) Year 1=1994-95" 2 "(2) Year 2=1994-95"
                       3 "(3) Year 3=1994-95" 4 "(4) Year 4=1994-95"
                       5 "(5) Year 5=1994-95" 6 "(6) Year 6=1994-95"
                       9993 "(9993) Year 1 after 1994-95"
                       9994 "(9994) Last year of course-taking before 1995-96" ;
label define ELGLV945  9 "(9) 9th grade" 10 "(10) 10th grade"
                       11 "(11) 11th grade" 12 "(12) 12th grade"
                       9993 "(9993) Year 1 after 1994-1995"
                       9994 "(9994) Last year of course-taking data before 1994-95"
                       9995 "(9995) No courses recorded in 1994-95" ;
label define ELY1NINE
                       0 "(0) Mean grade level of year 1 courses greater than/equal to"
                       1 "(1) Mean grade level of year 1 course between 9 and 10" ;
label define EAMSQ1    0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQ2    0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9992 "(9992) No course-taking data in year 2"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQ3    0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9992 "(9992) No course-taking data in year 3"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQ4    0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9992 "(9992) No course-taking data in year 4"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQ5    0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9992 "(9992) No course-taking data in year 5"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQ6    0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9992 "(9992) No course-taking data in year 6+"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQH    1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQB1   0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQB2   0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9992 "(9992) No course-taking data in year 2"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQB3   0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9992 "(9992) No course-taking data in year 3"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQB4   0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9992 "(9992) No course-taking data in year 4"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQB5   0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9992 "(9992) No course-taking data in year 5"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQB6   0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9992 "(9992) No course-taking data in year 6+"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EAMSQBH   0 "(0) No math" 1 "(1) Basic/remedial math"
                       2 "(2) General/applied math" 3 "(3) Pre-algebra"
                       4 "(4) Algebra I" 5 "(5) Geometry" 6 "(6) Algebra II"
                       7 "(7) Advanced math" 8 "(8) Pre-calculus"
                       9 "(9) Calculus"
                       9993 "(9993) No math courses on transcript in any year" ;
label define EASSQ1    0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQ2    0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9992 "(9992) No course-taking data in year 2"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQ3    0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9992 "(9992) No course-taking data in year 3"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQ4    0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9992 "(9992) No course-taking data in year 4"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQ5    0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9992 "(9992) No course-taking data in year 5"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQ6    0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9992 "(9992) No course-taking data in year 6+"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQH    1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQB1   0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQB2   0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9992 "(9992) No course-taking data in year 2"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQB3   0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9992 "(9992) No course-taking data in year 3"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQB4   0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9992 "(9992) No course-taking data in year 4"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQB5   0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9992 "(9992) No course-taking data in year 5"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQB6   0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9992 "(9992) No course-taking data in year 6+"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EASSQBH   0 "(0) No science" 1 "(1) Basic/remedial science"
                       2 "(2) General/earth science" 3 "(3) Biology"
                       4 "(4) Chemistry" 5 "(5) Advanced science"
                       6 "(6) Physics"
                       9993 "(9993) No science courses on transcript in any year" ;
label define EAMGPA1
                       9993 "(9993) No math courses on transcript in any year"
                       9994 "(9994) No math course in year 1"
                       9995 "(9995) No graded math course in year 1" ;
label define EAMGPA2   9992 "(9992) No course-taking data in year 2"
                       9993 "(9993) No math courses on transcript in any year"
                       9994 "(9994) No math course in year 2"
                       9995 "(9995) No graded math course in year 2" ;
label define EAMGPA3   9992 "(9992) No course-taking data in year 3"
                       9993 "(9993) No math courses on transcript in any year"
                       9994 "(9994) No math course in year 3"
                       9995 "(9995) No graded math course in year 3" ;
label define EAMGPA4   9992 "(9992) No course-taking data in year 4"
                       9993 "(9993) No math courses on transcript in any year"
                       9994 "(9994) No math course in year 4"
                       9995 "(9995) No graded math course in year 4" ;
label define EAMGPA5   9992 "(9992) No course-taking data in year 5"
                       9993 "(9993) No math courses on transcript in any year"
                       9994 "(9994) No math course in year 5"
                       9995 "(9995) No graded math course in year 5" ;
label define EAMGPA6   9992 "(9992) No course-taking data in year 6+"
                       9993 "(9993) No math courses on transcript in any year"
                       9994 "(9994) No math course in year 6+"
                       9995 "(9995) No graded math course in year 6+" ;
label define EAMGPAC
                       9993 "(9993) No math courses on transcript in any year"
                       9995 "(9995) No graded math course in years 1 to 6+" ;
label define EASGPA1
                       9993 "(9993) No science courses on transcript in any year"
                       9994 "(9994) No science course in year 1"
                       9995 "(9995) No graded science course in year 1" ;
label define EASGPA2   9992 "(9992) No course-taking data in year 2"
                       9993 "(9993) No science courses on transcript in any year"
                       9994 "(9994) No science course in year 2"
                       9995 "(9995) No graded science course in year 2" ;
label define EASGPA3   9992 "(9992) No course-taking data in year 3"
                       9993 "(9993) No science courses on transcript in any year"
                       9994 "(9994) No science course in year 3"
                       9995 "(9995) No graded science course in year 3" ;
label define EASGPA4   9992 "(9992) No course-taking data in year 4"
                       9993 "(9993) No science courses on transcript in any year"
                       9994 "(9994) No science course in year 4"
                       9995 "(9995) No graded science course in year 4" ;
label define EASGPA5   9992 "(9992) No course-taking data in year 5"
                       9993 "(9993) No science courses on transcript in any year"
                       9994 "(9994) No science course in year 5"
                       9995 "(9995) No graded science course in year 5" ;
label define EASGPA6   9992 "(9992) No course-taking data in year 6+"
                       9993 "(9993) No science courses on transcript in any year"
                       9994 "(9994) No science course in year 6+"
                       9995 "(9995) No graded science course in year 6+" ;
label define EASGPAC
                       9993 "(9993) No science courses on transcript in any year"
                       9995 "(9995) No graded science course in years 1 to 6+" ;
label define EAOGPA1   9995 "(9995) No graded science course in year 6+" ;
label define EAOGPA2   9992 "(9992) No course-taking data in year 2"
                       9995 "(9995) No graded course in year 2" ;
label define EAOGPA3   9992 "(9992) No course-taking data in year 3"
                       9995 "(9995) No graded course in year 3" ;
label define EAOGPA4   9992 "(9992) No course-taking data in year 4"
                       9995 "(9995) No graded course in year 4" ;
label define EAOGPA5   9992 "(9992) No course-taking data in year 5"
                       9995 "(9995) No graded course in year 5" ;
label define EAOGPA6   9992 "(9992) No course-taking data in year 6+"
                       9995 "(9995) No graded course in year 6+" ;
label define EAOGPAC   9995 "(9995) No graded course in years 1 to 6+" ;
label define EAMFIX1
                       9993 "(9993) No math courses on transcript in any year"
                       9994 "(9994) No math course in year 1"
                       9995 "(9995) No graded math course in year 1" ;
label define EAMFIX2   9992 "(9992) No course-taking data in year 2"
                       9993 "(9993) No math courses on transcript in any year"
                       9994 "(9994) No math course in year 2"
                       9995 "(9995) No graded math course in year 2" ;
label define EAMFIX3   9992 "(9992) No course-taking data in year 3"
                       9993 "(9993) No math courses on transcript in any year"
                       9994 "(9994) No math course in year 3"
                       9995 "(9995) No graded math course in year 3" ;
label define EAMFIX4   9992 "(9992) No course-taking data in year 4"
                       9993 "(9993) No math courses on transcript in any year"
                       9994 "(9994) No math course in year 4"
                       9995 "(9995) No graded math course in year 4" ;
label define EAMFIX5   9992 "(9992) No course-taking data in year 5"
                       9993 "(9993) No math courses on transcript in any year"
                       9994 "(9994) No math course in year 5"
                       9995 "(9995) No graded math course in year 5" ;
label define EAMFIX6   9992 "(9992) No course-taking data in year 6+"
                       9993 "(9993) No math courses on transcript in any year"
                       9994 "(9994) No math course in year 6+"
                       9995 "(9995) No graded math course in year 6+" ;
label define EAMFIXC
                       9993 "(9993) No math courses on transcript in any year"
                       9995 "(9995) No graded math course in years 1 to 6+" ;
label define EASFIX1
                       9993 "(9993) No science courses on transcript in any year"
                       9994 "(9994) No science course in year 1"
                       9995 "(9995) No graded science course in year 1" ;
label define EASFIX2   9992 "(9992) No course-taking data in year 2"
                       9993 "(9993) No science courses on transcript in any year"
                       9994 "(9994) No science course in year 2"
                       9995 "(9995) No graded science course in year 2" ;
label define EASFIX3   9992 "(9992) No course-taking data in year 3"
                       9993 "(9993) No science courses on transcript in any year"
                       9994 "(9994) No science course in year 3"
                       9995 "(9995) No graded science course in year 3" ;
label define EASFIX4   9992 "(9992) No course-taking data in year 4"
                       9993 "(9993) No science courses on transcript in any year"
                       9994 "(9994) No science course in year 4"
                       9995 "(9995) No graded science course in year 4" ;
label define EASFIX5   9992 "(9992) No course-taking data in year 5"
                       9993 "(9993) No science courses on transcript in any year"
                       9994 "(9994) No science course in year 5"
                       9995 "(9995) No graded science course in year 5" ;
label define EASFIX6   9992 "(9992) No course-taking data in year 6+"
                       9993 "(9993) No science courses on transcript in any year"
                       9994 "(9994) No science course in year 6+"
                       9995 "(9995) No graded science course in year 6+" ;
label define EASFIXC
                       9993 "(9993) No science courses on transcript in any year"
                       9995 "(9995) No graded science course in years 1 to 6+" ;
label define EAOFIX1   9995 "(9995) No graded course in year 1" ;
label define EAOFIX2   9992 "(9992) No course-taking data in year 2"
                       9995 "(9995) No graded course in year 2" ;
label define EAOFIX3   9992 "(9992) No course-taking data in year 3"
                       9995 "(9995) No graded course in year 3" ;
label define EAOFIX4   9992 "(9992) No course-taking data in year 4"
                       9995 "(9995) No graded course in year 4" ;
label define EAOFIX5   9992 "(9992) No course-taking data in year 5"
                       9995 "(9995) No graded course in year 5" ;
label define EAOFIX6   9992 "(9992) No course-taking data in year 6+"
                       9995 "(9995) No graded course in year 6+" ;
label define EAOFIXC   9995 "(9995) No graded course in years 1 to 6+" ;


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


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

