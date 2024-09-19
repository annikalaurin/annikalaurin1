library(tidyverse)
library(gapminder)
##WE ARE NOW GOING TO SMELLTEST THE DATA TO UNDERSTAND IT
##gapminder as a dataset
gapminder

##name gapminder dataset to access it in the environment
gap<-gapminder

##use function class() to tell you the version that the data frame is
class(gap)

#use the function dim() to tell me the number of rows and colums
## number of rows goes first and number of colums goes second
dim(gap)

##use the function names() to state the variables to understand your dataset
names(gap)

##use the function head() to state the first 6 points of the data set
head(gap)

##use the function tail() to state the last 6 points of the data set
tail(gap)

##use the function filter() to filter out any neccessary information we want
##this means that we are trying to see which points have a life expectancy <29
filter(gap,lifeExp<29)+
  filter(gap,lifeExp<29)%>% View
## the function %<% means the word "then" so the code words in a sequence+
## the function above means "filter/give me this data, then I want to view it"

##all together now
gap%>%
filter(lifeExp < 29) %>% +
  View()

##use the function select() to filter out one column/variable
## the function filter() filters out rows
select(gap, year, lifeExp) 
gap%>%
  select(year, lifeExp) %>%
  head(4)

gap%>%
  filter(country == "Cambodia") %>%
  select(year, lifeExp)

## use the function arrange() to arrange the data in a certain order that you are interested in
gap%>%
  arrange(lifeExp) %>% View()

##to rename a variable use function rename()
gap%>%
  rename(life_exp = lifeExp) %>% View









