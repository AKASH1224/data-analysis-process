data()
glimpse(msleep)
view(msleep)
msleep
msleep %>%  rename("converse"="conservation")
msleep %>%  select(vore,name,everything())
class(msleep$vore)  
#turn character type into factorial type
msleep$vore <-as.factor(msleep$vore)
glimpse(msleep)
#turn factorial type into character type
msleep %>% mutate(vore =as.character(vore)) %>% 
glimpse()
#function to work wkith selected variable 
names(msleep)
select(2:4,awake,starts_with("sleep"),contains("wt")) %>% 
names()
view(msleep)



unique(msleep$order)
msleep %>%  
  filter((order =="Carnivora" | order =="	Primates")& sleep_total > 8) %>% 
  select(name,order,sleep_total) %>% 
  arrange(-sleep_total) %>% 
View
msleep %>% mutate(brainwt=brainwt*1000) %>% View
msleep %>% mutate(brainwt_gm=brainwt*1000) %>% View

msleep$brainwt 
msleep$brainwt >0.1

size_of_brain <- msleep %>% select(name,brainwt) %>%  drop_na(brainwt) %>%  mutate(brain_size =if_else(brainwt>0.01,"large","small"))
size_of_brain

#recode of data
size_of_brain <- mutate(brain_size =recode(brain_size,"large"=1,"smaller"=2))
  size_of_brain
  install.packages("gapminder")
  library(gapminder)
  install.packages("magrittr")
   view(gapminder)
  data <- select(gapminder,country,year,lifeExp)
  View(data)
  wide_data <- data %>% 
  pivot_wider(names_from= year,values_from=lifeExp)
  View(wide_data)
  long_data <-wide_data %>% 
    pivot_longer(2:13,names_to="year",values_to="lifeExp")