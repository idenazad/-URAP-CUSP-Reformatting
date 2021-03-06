clear
set more off
global root "/Users/krista0104/Desktop/Stefano/Fall21/Assignment 6/"
cd "$root"


import excel "$root/COVID-19 US state policy database 10_7_2021.xlsx", sheet("State policy changes ") firstrow clear

drop RELIGEX FMFINE FMCITE FMNOENF FMNOW ALCOPEN GUNOPEN CANNABIS RSTOUTDR VAC_HCW VAC_HCS VAC_HHC VAC_AHC VAC_LTC VAC_EMS VAC_FF VAC_LAW VAC_CORR VAC_INC VAC_SHELTER VAC_75 VAC_65 VAC_HR VAC_K12 VAC_HIGHED VAC_PT VAC_FOOD VAC_GROCERY VAC_ESSWORK VAC_ADDWORK VAC_PUB AGEPRIORITY RACEPRIORITY PROOFWORK PROOFAGE PROOFRES PENALTY EXPANDADMIN EMNOW SNAPTLW PREVTLHL CHIPLKOT LKOTSUS BREAKTHROUGH TEST CASE HOSP DEATH VACCINE BREAKRACE TESTAIAN CASEAIAN HOSPAIAN DEATHAIAN VACCINEAIAN NOCOPAY NOPAYCOV NOPAYALL YESCOPAY WTPRD REI_WTPRD WV_WKSR REI_WKSR UIQUAR UIHIRISK UICLDCR UIEXTND UIMAXAMT UIMAXEXT UIMAXDURJAN20 UIMAXDURJUL20 UIMAXDUR21 TUR TURPRIOR TURPRIOR2 UIMINBP UIQTRNEED UIOUTHQBP UIREQBPL2Q UIBPEARN300 UITAXWA UIMINTAXR UIMAXTAXR UIAVGBFTAUG OSHA STATEDEPT AEROSOL VENTILATION SICKLEAVE19 FMLEAVE19 SICKLEAVE20 FMLEAVE20 COVIDLEAVE RETALIATION LIABILITY HCLIABILITY GOVLIABILITY WORKERSCOMP WORKERTYPE WORKREPORTING WORKMISSED WORKINJURY LMABRN MEDEXP POPDEN18 POP18 SQML HMLS19 UNEMP18 POV18 RISKCOV DEATH18 MH19 CASSTATE AIANRESN VBMEXC VBMSIG VBMPERM VBMAUTOBAL VBMAUTOAP CASTRIBCAS MINWAGEJAN2019 MINWAGEMAR2019 MINWAGEJUL2019 MINWAGEOCT2019 MINWAGEJAN2020 MINWAGEJUL2020 MINWAGESEP2020 MINWAGEOCT2020 TIPMINWAGE2020 MINWAGE2021 SMALLBUSMINWAGE
* drop all variables without dates
