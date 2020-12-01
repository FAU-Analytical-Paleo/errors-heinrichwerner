### 1 ###

radiation <- function(d,m,s){
  rad <- pi*(d+m/60+s/3600)/180
  return (rad)}

height <- tan(radiation(1,21,0))*(2550)

uncertainty <- (tan(radiation(0,1,0))/tan(radiation(1,21,0))+25/2550)*height

paste(height)
paste (uncertainty)

### 2 ###

duration <- 29.66-25.33
uncertaintyofduration <- 0.1+0.2

paste(duration)
paste(uncertaintyofduration)

### 3 ###

setwd("C:/Users/heinr/Desktop/Uni/R-Kurs/Week 3")
colloums <- c("X", "r", "Mo")
earthquakes <- read.table("ex3_eqscals.txt", header=F, sep="", col.names =colloums)

mean(earthquakes$r)
median(earthquakes$r)
sd(earthquakes$r)
mad(earthquakes$r)

mean(earthquakes$Mo)
median(earthquakes$Mo)
sd(earthquakes$Mo)
mad(earthquakes$Mo)

x11()

plot(earthquakes$r)
lines(earthquakes$r)

plot(earthquakes$Mo)
lines(earthquakes$Mo)

boxplot(earthquakes$r)

boxplot(earthquakes$Mo)
