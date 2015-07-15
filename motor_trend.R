library(datasets)
library(ggplot2)
DT<-data.frame(mtcars)
head(DT)
summary(DT)

DT$am <- factor(DT$am,levels=c(0,1),labels=c("Automatic","Manual")) 
DT$cyl <- factor(DT$cyl,levels=c(4,6,8),labels=c("4cyl","6cyl","8cyl")) 

qplot(mpg, data=DT, geom="density", fill=am, alpha=I(.5), 
      main="Distribution of Gas Milage", xlab="Miles Per Gallon", 
      ylab="Density")

qplot(am, mpg, data=DT, geom=c("boxplot", "jitter"), 
      fill=am, main="Mileage by Transmission",
      xlab="", ylab="Miles per Gallon")

