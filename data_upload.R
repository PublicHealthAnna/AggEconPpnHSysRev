#uploading data sets

#install and load read xl
install.packages("readxl")
library(readxl)

#Upload dataset - make sure you use double backward slash and all in quotes
#The most up to date version of the recession with effect size data for R is saved here: 
#https://scottish.sharepoint.com/:x:/r/sites/PHSAggregateEconomicActivitySystematicReview/_layouts/15/Doc.aspx?sourcedoc=%7B5C8898C0-3E90-4CD3-9F83-AC8C30D815FC%7D&file=22_02_recession_with_effectsize_only.xlsx&action=default&mobileredirect=true&wdOrigin=TEAMS-ELECTRON.teams.files&wdExp=TEAMS-CONTROL&wdhostclicktime=1645701270801
#To use this code, save a copy onto your desktop, and copy and paste the file path into the below code

AEA_data=read_excel("C:\\Users\\georgr07\\Desktop\\exposure_recession_for_R_21_02.xlsx")
