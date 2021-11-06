install.packages("stats")
install.packages("dplyr")
library(dplyr)
library(stats)
mydata <- weather_sa_2017_2019_clean

glimpse(mydata)
summary(mydata)
str(mydata)

is.na(dt)
dt %>%
  summarise(count = sum(is.na()))
mean_overall_temp = (dt$temp)
mean_overall_temp

weather_sa_2017_2019_clean <- subset(dt, temp!="2019")
weather_sa_2017_2019_clean
str(weather_sa_2017_2019_clean)

mydata_new = mydata[mydata$year %in% c("2019"),]
mydata_2years = mydata[mydata$year %in% c("2019","2018"),]
summary(mydata_new$city)
str(mydata_new$city)
glimpse(mydata_new$city)
unique(mydata_new$city) #What cities are included

available::available("Seather", browse = FALSE)
url(https://worldweather.wmo.int/en/json/126_en.json)

install.packages("jsonlite")
install.packages("rjson")
install.packages("RCurl")
library("rjson")
library("RCurl")
library("rjson")

json_file <- "https://worldweather.wmo.int/en/json/216_en.json"
json_data <- fromJSON(paste(readLines(json_file), collapse=""))
data

json <- fromJSON(getURL('https://worldweather.wmo.int/en/json/216_en.json'))

function preload() {
  data = loadJSON("https://worldweather.wmo.int/en/json/216_en.json")
}


install.packages("RJSONIO")
install.packages("(RCurl")
install.packages("magrittr") # package installations are only needed the first time you use it
install.packages("dplyr")    # alternative installation of the %>%
library(magrittr) # needs to be run every time you start R and want to use %>%
library(dplyr)
library(RJSONIO)
library(RCurl)
json_file = getURL("https://worldweather.wmo.int/en/json/216_en.json") %>%
json_file2 = RJSONIO::fromJSON(json_file) %>%
head(json_file2)



loadJSON("https://worldweather.wmo.int/en/json/216_en.json", gotData)







install.packages("jsonlite")
library("jsonlite")
btc <- jsonlite::fromJSON("https://api.openweathermap.org/data/2.5/weather?q=Riyadh,sa&appid=e82e3a6278dae7e8de09c14a5d568f4d")
Riyadh <- jsonlite::fromJSON("api.openweathermap.org/data/2.5/weather?q=Riyadh&appid=108410")


url = "api.openweathermap.org/data/2.5/weather?q=Riyadh&appid=108410"

#json
results_data_json = fromJSON(txt = url)















install.packages(c("httr", "jsonlite"))
library(httr)
library(jsonlite)
res = GET("https://api.openweathermap.org/data/2.5/weather?q=Riyadh,sa&appid=e82e3a6278dae7e8de09c14a5d568f4d")
res
status_code(res)
headers(res)
str(content(res))
content(res, "text")
