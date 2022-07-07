library(tidyverse)

##import the data using file import data and then create it as an object called 'data' 

data = example_data_for_effect_dir

data2 = data %>%
  mutate(RoB_overall_rating = factor(RoB_overall_rating, levels = c("WEAK", "MODERATE", "STRONG"))) %>% # factors the RoB so we get an order to RoB
  mutate(Direction = factor(Direction, levels = c("Improved health leads to increased AEA", "Neither or inconsistent", "Improved health leads to decreased AEA"))) %>% 
  group_by(RoB_overall_rating) %>% # groups the data by the RoB
  arrange(RoB_overall_rating, Direction) %>% # arranges the data in the order of RoB and Direction
  mutate(ymax = n(),  
         ypos = 1:ymax)  # ymax calculates the total number of studies within each group of RoB and ypos then allocates y position for that study
# based which is ordered by RoB and Direction 


edplot = 
ggplot(data2)+ 
  aes(x = RoB_overall_rating, y = ypos, colour = Direction) +
  geom_point(shape = 16, size = 4.5) +
  scale_colour_manual(
    values=c(
      "forestgreen",
      "gray68", 
      "red4"), 
    drop=F, 
    name="Direction summary") + 
  scale_y_continuous(
    #limits=c(1,40), 
    expand = c(0.05,0.05)) +
  coord_flip() +
  labs(
    x="Risk of bias", 
    y= "Number of studies") + 
  theme_classic(base_size=12) +
  theme(
    legend.position = "right",
    legend.background=element_blank(),
    legend.box.background = element_rect(colour="black"))

#making the plots

chart <- edplot 
print(chart)





