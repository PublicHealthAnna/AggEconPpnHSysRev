##install and update packages
library(tidyverse)
tidyverse_update()  
library(ggplot2)
library(meta)
library(metafor)


#set working directory
setwd("C:/Users/md1abzz/Documents/SysRev/Synthesis/AggEconPpnHSysRev")

#Upload data

#install read xl
install.packages("readxl")
library(readxl)

#upload dataset - for some reason my code doesn't seem to like the 'U' in 'user' so best to go to File, then import data and then click on it in the files on bottom right then import there
example_data_for_effect_dir <- read_excel("example_data_for_effect_dir.xlsx")
View(example_data_for_effect_dir)
glimpse(example_data_for_effect_dir)

#create the right types of data, class doesn't seem to be working

## ggplot settings
ggplot(data = example_data_for_effect_dir) +
  geom_point(mapping = aes(x = , y = hwy), colour = "orange")
