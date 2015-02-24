set more off

insheet using "/Users/amanbirs/Dropbox/YS Data/Youth Study Data/YS_1524.csv", clear

keep if hstate == 20 // Probably Jharkhand


*** Labeling Variables
label variable vlang "Primary Language"

v101a_m "Respondent's Month of Birth"
v101a_y "Respondent's Year of Birth"

v101b "Completed Age in Years"
v102 "Religion of Respondent"
v103 "Respondent's Caste"
v104 "Who all usually live in this household with you?"
v105 "NUMBER OF BROTHERS"
v106 "NO. OF MARRIED BROTHERS"
v107 "NUMBER OF SISTERS"
v108 "NO. OF MARRIED SISTERS"

v109 "Age of Respondent's Father"
v110 "How old were you when your father died?"
v111 "Highest Grade Completed by the Respondent's Father"
v112 "Is your father currently working (aside from hh chores)?"
v113 "What type of work does/did your father mainly do?"
v114 "When you were around 15-18 years old, did your father spend time outside home for work or any other activity?"

v115 "Age of Respondent's Mother"
v116 "How old were you when your mother died?"
v117 "Highest Grade Completed by the Respondent's Mother"
v118 "Is your mother currently working (aside from hh chores)?"
v119 "What type of work does/did your mother mainly do?"
v120 "When you were around 15-18 years old, did your mother spend time outside home for work or any other activity?"

label variable focc9 "Occupation of Respondent's Father"
label variable spocc9 "Occupation of Respondent's Spouse"
label variable mocc9  "Occupation of Respondent's Mother"


* LEC codes--to be work on later

v121  "COMPLETED YEARS OF SCHOOLING"
v122  "CURRENTLY STUDYING? (Taken from LEC)"
v123  "Which class of school or college did you last attend?"
v124  "Can you read, or write, or sign or you are illiterate?"
v125  "What are the reasons you never attended /left school or college?"
v126a "Did you pass or fail in the last final exams for which results have been declared?"
v126b "Which class was that?"
v127  "In the last class you attended, were there only boys or both boys and girls?"
v128  "Institution Currently attending/Last attended: private or government school?"
v129a "Institution Currently attending/Last attended: Availibility of Drinking Water?"
v129b "Institution Currently attending/Last attended: Availibility of Toilet Facility?"
v129c "Institution Currently attending/Last attended: Availibility of Playground?"
v129d "Institution Currently attending/Last attended: Availibility of Library?"

v130  "Class Currently attending/Last attended: Were your teachers regular?"
v131  "Class Currently attending/Last attended: Attended regularly?"
v132  "Class Currently attending/Last attended: Do/did you take any private tuitions?"

v133a "Institution Currently attending/Last attended: Would you say that most of the days you want/wanted to go to school/college?"
v133b "Institution Currently attending/Last attended: Would you say that what is/was taught in school/college is/was useful?"
v133c "Institution Currently attending/Last attended: Would you say that you try/tried hard to do well in school/college?"
v133d "Institution Currently attending/Last attended: Is/was the study workload heavy?"

v134  "Parents do not send their adolescent daughters to school because they may be teased or abused on the way to or in school?"
v135  "Parents do not send their adolescent sons to school because they may be teased or abused on the way to or in school?"

v136  "Have you ever attended any vocational training/programme/courses?"
v137  "Which are/were the programmes/courses you have attended?"
v138  "Would you like to attend any vocational training/programme courses?"
v139  "Which are the programmes/courses you would like to attend?"

v140a "Frequency of Work in the house"
v140b "Frequency of Shopping"
v140c "Frequency of Other activities like collecting firewood, water, grazing (ONLY FOR RURAL), grinding wheat, paying bills etc."

v141  "Aside from housework, have you ever done any work that is / was unpaid?"
v142  "How old were you the first time when you ever did any unpaid work?"
v143  "Aside from housework, in the last one year have you done any unpaid work?"
v144  "Have you ever done any work for which you got paid in cash, kind or both?"
v145  "Did you do this work for cash and/or kind before marriage, after marriage or both?"
v146  "How old were you when you ever did any work for pay (either in cash or kind or both) for the first time?"

v147  "When you worked after marriage did/do you keep all your earnings to yourself?"
v148  "Have you done any work in last one year for which you got paid in cash, kind or both?"
v149  "During last one year how many months did you work for cash, kind or both?"
v150  "What type of work have you mainly done in last one year for cash or kind or both?"
v151  "How do you usually access information on employment opportunities?"
v152  "Are you currently seeking a job?"
v153  "Since when have you been seeking a job?"
v154  "Do you have any money saved from work or any other sources (such as gifts, pocket money etc.)?"
v155  "Do you have an account in a Bank or a Post Office in your name or jointly with someone else?"
v156  "Do you operate the account(s) yourself?"
v157  "Has there ever been a time when you stayed out of this village/area for work?"
v158  "Can you tell me for how many months/years did you go out for work?"
v159  "Before you got married, had you ever lived away from home or away from your parents/guardian for a period of one month or more continuously?"
v160  "Where did you live?"

v161a ""
v161b ""
v162  ""
v163  ""
v164  ""






*label variable fedu6 "Education of Respondent's Father"


*** Value Labels
label define yesno 1 "Yes" 2 "No" 3 "Unsure" 8 "Don't Know/Cannot Say/Do Not Remember"
label values      yesno

label define language 01 "ASSAMESE" 02 "BANGLA" 03 "ENGLISH" 04 "GUJARATI" 05 "HINDI" 06 "KANNADA"  ///
07 "KASHMIRI" 08 "KONKANI" 09 "MALAYALAM" 10 "MANIPURI" 11 "MARATHI" 12 "NEPALI" ///
13 "ORIYA" 14 "PUNJABI" 15 "SINDHI" 18 "URDU" 19 "OTHER, SPECIFY"
label values vlang language 

label define religion 01 "HINDU" 02 "MUSLIM" 03 "CHRISTIAN" 04 "SIKH" 05 "BUDDHIST/ NEO-BUDDHIST" ///
06 "JAIN" 07 "JEWISH" 08 "PARSI/ZOROASTRIAN" 09 "SARANA" 10 "NO RELIGION" 96 "OTHER, SPECIFY"
label values v102 religion

label define co_educational 1 "Girls/Boys Only" 2 "Co-educational"
label values v127 co_educational

label define private_school 1 "Private" 2 "Government" 3 "Partially Aided" 4 "Don't Know/Don't Remember"
label values v128 private_school

label define attendance 1 "Regularly" 2 "Sometimes" 3 "Hardly Ever"
label values v131 attendance

label define payment_method 1 "Yes, Only Cash" 2 "Yes, Only Kind" 3 "Yes, Cash and Kind" 4 "No"
label values v144 payment_method

label define work_before_marriage 1 "Before Marriage" 2 "After Marriage" 3 "Both Before & After Marriage"
label values v145 work_before_marriage 

label define earnings 1 "Keep All to Self" 2 "Give Some Away To Family" 3 "Give All to Family"
define values v147 earnings

