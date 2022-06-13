## Learning ggplot and data science basics
install.packages(c("nycflights13", "gapminder", "Lahman"))
library(tidyverse)
tidyverse_update()  
library(ggplot2)
install.packages(c("nycflights13", "gapminder", "Lahman"))
#find the data
ggplot2::mpg 
#create a graph and create a scatterplot then map which is x and which is y with aes()
# ggplot(data = <DATA - add in the name of your data here>) + 
# <GEOM_FUNCTION - this is the type of graph>(mapping = aes(<MAPPINGS state x = , and y =, also can add aesthetic>))
# colour = or size = or alpha = this is transparency, or shape
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, colour = class))
# you can set the aesthetics eg make everything blue or set the size in mm or set the shape - see 3.1 in https://r4ds.had.co.nz/data-visualisation.html
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = cty), colour = "blue", size = 2, shape = 22)
## for shapes with an outline and fill the size of the filled part is size and the outline is stroke
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = cty), colour = "blue", shape = 22, size = 6, stroke = 2, fill = "red")
## how does it work for categorical data 
ggplot(data = mpg) + 
  geom_col(mapping = aes(x = manufacturer, y = cty), colour = "blue")
## you can colour particular parts of the data 
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = cty, colour = cty <20))
## you can split your data into 'facets' which are effectively subsets of data
## use facet_wrap(~ <name of whatever categorical data set you want>)
## nrow is the number of rows
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
##you can split by two variables using facet_grid
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)
## use a . instead of one variable in grid if liked

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

# to make a dotplot
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), colour = "orange")

# to make a line with shading and split by a variable
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv), colour = "red")

# you can choose how to split the data more 
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg) +
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE)
# you can put the mappings at the start to apply to everything
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()
# and add specifics to the local layers
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth()
# and you can add specific data to local layers 
## work out why this doesn't work next time!
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)