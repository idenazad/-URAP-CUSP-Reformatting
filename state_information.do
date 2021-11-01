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

** Add state_data.dta to finalDataForWeek2.dta **
import excel "$root/finalDataForWeek2.xlsx", sheet("Sheet1") firstrow clear
* Use the exported table from Python (google collab)
save "$root/finalDataForWeek2.dta"

joinby State using "state_data.dta"
save "/Users/krista0104/Desktop/Stefano/Fall21/Assignment 7/finalDataForWeek2_1.dta"
export excel using "finalDataForWeek2_1", firstrow(variables)
