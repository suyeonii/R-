setwd("d:/Workspace/TIL/R_Data_Analysis/Part3/Data")
txt1 <- read.csv("factor_test.csv.txt")
txt1
factor1 <- factor(txt1$blood)
factor1
summary(factor1)
sex1 <- factor(txt1$sex)
summary(sex1)

Sys.Date()
Sys.time()
date()
class(Sys.Date())
"2019-05-30"
as.Data("2019-05-30")
class("2019-05-30")
class(as.Date("2019-05-30"))
as.Date("2019/05/30")
as.Date("01-11-2014")
as.Date("01-11-2014",format="%d-%m-%Y")
as.Date("19-05-30")
as.Date("19-05-30",format="%y-%m-%d")
as.Date("190530",format="%y%m%d")
as.Date("2014년 11월 1일",format="%Y년 %m월 %d일")
as.Date("01112014",format="%d%m%Y")
as.Date("05-30",format="%m-%d")
as.Date(10, origin="2019-05-30")
as.Date(20, origin=Sys.date())   #문자열만 가능
as.Date(-10, origin="2019-05-30")
as.Date("2019-05-30")-as.Date("2019-05-27")
as.Date("2019-05-30")+5
as.Date("2019-11-14")-date()
as.Date("2019-11-14")-Sys.Date()


as.Date("2014-11-01 20:00:00")-as.Date("2014-11-01 18:30")
as.POSIXct("2014-11-01 20:00:00") - as.POSIXct("2014-11-01 18:30:30")
0.491667*60
0.50002*60    #1시간 29분 30초

install.packages("lubridate")
library(lubridate)
now()
date <- now()
year(date)
month(date)
month(date, label = T)
wday(date)
wday(date, label = T)
date <- date - days(2); date
month(date) <- 2; date
date+years(1)
date <- now()
date+months(-1)
date <- hm("22:30");date
date <- hms("22:30:15");date

