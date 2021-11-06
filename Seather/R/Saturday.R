install.packages("dplyr")
library(dplyr)
library(stats)
library(tidyverse)
#Import dataset
mydata <- read.csv("weather-sa-2017-2019-clean.csv")

#Explore data
str(mydata)
summary(mydata)
unique(mydata$city) #What regions are included
unique(mydata$weather) # Weather conditions present
dim(mydata)


#Change date from Chr to date type
mydata$date <- as.Date(with(mydata, paste(year, month, day,sep="-")), "%Y-%m-%d")

#change humidity from chr to num
mydata$humidity = as.numeric(gsub("[\\%,]", "", mydata$humidity))

#Merge date and time in one coloumn
library(lubridate)
mydata$date_time<- with(mydata, ymd_h(paste(year, month, day, hour, sep= ' ')))


mydata_narrow<- mydata[,c("date_time","city","weather","temp","wind","humidity","barometer","visibility")]


is.na(mydata)


mydata2019 = mydata[mydata$year %in% c("2019"),]
mydata2018 = mydata[mydata$year %in% c("2018"),]
mydata2017 = mydata[mydata$year %in% c("2017"),]


ggplot(data = mydata) + 
  geom_point(mapping = aes(x = date_time, y = temp))

ggplot(data = mydata) + 
  geom_smooth(mapping = aes(x = date_time, y = temp))


rm(list = ls())
