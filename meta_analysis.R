# meta analysis
###adapting meta analysis for our data for standardised mean difference###
### using chapter 4 of https://bookdown.org/MathiasHarrer/Doing_Meta_Analysis_in_R/pooling-es.html ###

##install and update packages
library(tidyverse)
tidyverse_update()  
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
View(example_data_for_meta_anal)
glimpse(example_data_for_meta_anal)

## work through the meta analysis ##
## metagen for meta analysis of pre-calculated results 
## label the column where the effect size is stored as TE
## label the column where the SE of the effect size is stored as seTE
## label as studlab whatever you want to use as the study label, eg author but could be title or Covidence ID
## tell the function what to label the effect size as in output, in this case standardised mean diff SMD
## specify whether fixed or random effects, in this case RE 
## specify tau squared calculation method, in this case Max Likelihood 
## specify whether to use Knapp Hartung adjustment, in this case yes
## give the analysis a title - REMEMBER to change to ours 
m.gen <- metagen(TE = TE,
                 seTE = seTE,
                 studlab = Author,
                 data = ThirdWave,
                 sm = "SMD",
                 fixed = FALSE,
                 random = TRUE,
                 method.tau = "REML",
                 hakn = TRUE,
                 title = "Third Wave Psychotherapies")

## get the results 
summary(m.gen)

## This approach can be adapted for our analysis
## We would use SMD for recession results 
## We would need to load our data instead of the test data
## We would need to label the columns appropriately
## The other methods are appropriate (RE, ML, adjustment) 

## we probably want to save at this point 
save(m.gen, file = "C:\Users\md1abzz\Documents\SysRev\Synthesis\AggEconPpnHSysRev") # or can we save direct to github?

##access specific bits of data eg pooled effect size
m.gen$TE.random

##change some of the ways we did the meta analysis to see whether we get diff results for sensitivity analysis
## eg change tau squared approach to DerSimonian-Laird (which we probably want to do as a sensitivity analysis)
m.gen_update <- update.meta(m.gen, 
                            method.tau = "DL")

# Get pooled effect
m.gen_update$TE.random
# Get tau^2 estimate
m.gen_update$tau2



