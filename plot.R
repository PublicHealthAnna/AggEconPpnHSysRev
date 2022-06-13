##import the data 
##save as single sheet workbook in working directory
##click on file in R studio console
##click on import

##tidy up data

library(tidyverse)
glimpse(Mort_as_exp_for_effect_dir)

class(Mort_as_exp_for_effect_dir$Unique_result_number)

Mort_as_exp_for_effect_dir$Unique_result_number=as.character(Mort_as_exp_for_effect_dir$Unique_result_number)

class(Mort_as_exp_for_effect_dir$Increased_Mortality_decreases_AEA_or_AEA_growth)

Mort_as_exp_for_effect_dir$Increased_Mortality_decreases_AEA_or_AEA_growth=as.logical(Mort_as_exp_for_effect_dir$Increased_Mortality_decreases_AEA_or_AEA_growth)

class(Mort_as_exp_for_effect_dir$neither)

Mort_as_exp_for_effect_dir$neither=as.logical(Mort_as_exp_for_effect_dir$neither)

class(Mort_as_exp_for_effect_dir$Increased_Mortality_increases_AEA_or_AEA_growth)

class(Mort_as_exp_for_effect_dir$effect_is_not_directional)

class(Mort_as_exp_for_effect_dir$RoB_overall_rating)


Mort_as_exp_for_effect_dir$RoB_overall_rating=as.factor(Mort_as_exp_for_effect_dir$RoB_overall_rating)

Mort_as_exp_for_effect_dir$Increased_Mortality_decreases_AEA_or_AEA_growth


ggplot(data = Mort_as_exp_for_effect_dir) + stat_count(mapping = aes(x= Increased_Mortality_decreases_AEA_or_AEA_growth))
ggplot(data = Mort_as_exp_for_effect_dir) + stat_count(mapping = aes(x= neither))
ggplot(data = Mort_as_exp_for_effect_dir) + stat_count(mapping = aes(x= Increased_Mortality_increases_AEA_or_AEA_growth))


