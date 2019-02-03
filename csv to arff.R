setwd('/Users/lakshmi_shetty/Desktop/664-project')
getwd()
Messagedata<-read.csv('./Data_message.csv')
View(Messagedata)
library(dplyr)
library(lubridate)
library(foreign)  

byd = read.csv('Data_message.csv')

byd %>% glimpse()

byd = byd %>% mutate(tradeDate = as.Date(tradeDate))

write.arff(byd, file='Finaldata.arff')
