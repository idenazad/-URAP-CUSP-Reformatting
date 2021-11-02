* Github: https://github.com/idenazad/Files-For-URAP---CUSP
* Google collab: https://colab.research.google.com/drive/1OQNHrPKfJEjeUIQP5soWjRrynFr7CrYM#scrollTo=rDueEaTcI9Vp

global root "/Users/krista0104/Desktop/Stefano/Fall21/Assignment 7/"
cd "$root"

** From the COVID-19 US state policy database_cleaned.dta, leave only the state information **
keep STATE FIPS POSTCODE

rename STATE State
rename POSTCODE postcode
rename FIPS fips

label variable fips "fips code"
label variable postcode "state abbreviation"
label variable State "state"
save "$root/state_data.dta"

** Add state_data.dta to week2Final.dta **
import excel "$root/week2Final.xlsx", sheet("Sheet1") firstrow clear
* Use the exported table from Python (google collab)
save "$root/week2Final.dta"

joinby State using "state_data.dta"
save "$root/week2Final.dta", replace

export delimited using "$root/week2Final_1.csv"


** Add state_data.dta to week2FinalAdjusted.dta **
import excel "$root/week2FinalAdjusted.xlsx", sheet("Sheet1") firstrow clear
save "$root/week2FinalAdjusted.dta"

* Use the exported table from Python (google collab)
joinby State using "state_data.dta"
save "$root/week2FinalAdjusted.dta", replace

export delimited using "$root/week2FinalAdjusted_1.csv"
