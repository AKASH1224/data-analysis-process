install.packages("ggplot2")
library(ggplot2)
data()
View(diamonds)
#histogran
ggplot (data =diamonds,aes(x=price))+geom_histogram(fill ="grey",col="blue",bins=100)
#geom_bar is used for categorical value
#bar_plot
ggplot(data = diamonds,aes(x=cut,fill=cut))+geom_bar()
#scatterplot it is 
ggplot(data=diamonds,aes(x=carat,y=price,col=cut))+geom_point(fill="blue")
#box_plot
ggplot(data = diamonds,aes(x=clarity,y=carat))+geom_boxplot(fill="blue",col="red")
#multi plot
data("airquality")
View(airquality)
Temp_a <- airquality$Temp
Ozone_a <- airquality$Ozone
par(mfcol=c(1,2))
hist(Temp_a)
boxplot(Temp_a,Horizontal=TRUE)
Wind_b <- airquality$Wind
Solar_B <- airquality$Solar.R
hist(Wind_b)
boxplot(Solar_B,Horizontal=TRUE)
par(mfrow=c(1,2))
data(iris)
View(iris)
ggplot(iris,aes(x=Sepal.Length,y=Petal.Length,group= class))+geom_point()
scatt_plot2
#scatt_plot2+theme(legend.text = element_text(colour = "blue",size=9))

scatt_plot2+annotate("rect",xmin= 5,ymin =2,xmax = 8,ymax = 6,alpha=0.5)