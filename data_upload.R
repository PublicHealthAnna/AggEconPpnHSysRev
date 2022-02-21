#uploading data set

#install read xl
install.packages("readxl")
install.packages("tibble")
library(readxl)

#upload dataset - make sure you use double backward slash and all in quotes
AEA_data=read_excel("C:\\Users\\georgr07\\Desktop\\exposure_recession_for_R_21_02.xlsx")
