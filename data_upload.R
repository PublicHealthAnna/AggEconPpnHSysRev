#uploading data set

#install read xl
install.packages("readxl")
library(readxl)

#upload dataset - make sure you use double backward slash and all in quotes
AEA_data=read_excel("C:\\Users\\georgr07\\Desktop\\exposure_recession_for_R_21_02.xlsx")


#Upload data try 2

#install read xl
install.packages("readxl")
library(readxl)

#upload dataset - for some reason my code doesn't seem to like the 'U' in 'user' so best to go to File, then import data and then click on it in the files on bottom right then import there
example_data_for_effect_dir <- read_excel("example_data_for_effect_dir.xlsx")
View(example_data_for_effect_dir)
glimpse(example_data_for_effect_dir)