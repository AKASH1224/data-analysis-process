getwd()
install.packages("readxl")
library("readxl")
library("data.table")
mental_health <-read.csv("student_mental_health.csv")
mental_health<- fread("student_mental_health.csv")
library(dplyr)
mtcars <-as_tibble(mtcars)
iris <- as_tibble(iris) 
mtcars %>% arrange(cyl,hp)
mtcars %>% arrange(desc(hp),desc(drat))
mtcars[order(mtcars$disp,mtcars$drat),,drop(FALSE)]
mtcars[order(mtcars$disp,mtcars$drat,decreasing = TRUE),,drop(FALSE)]
mtcars %>% arrange((hp),(drat))
mtcars %>% distinct(disp,hp,qsec)
mtcars %>% filter(disp>50)
mtcars %>% filter(cyl<6)
subset(mtcars,disp>100)       
mtcars %>% select(1:4)
mtcars %>% relocate(disp,wt)
mtcars %>% relocate(disp,wt,.after = last_col())
               
mtcars %>% group_by(hp) %>%
  summarise(mean = mode(hp), n = n())

head(mtcars)
tail(mtcars)
mtcars %>% 
  group_by(cyl) %>% 
  summarise(mean= mean(mpg),n=n())
