z<-Sys.Date()
z
d<-c("30jan1999",'14jan1995')
d<-as.Date(d,"%d%b%y")
d[1]-d[2]
format(d,"%a")
julian(d)

install.packages("lubridate")
library(lubridate)
himu<-ymd("1999jan30")
weekdays(himu)
mdy_hms("jan309910:14:20")
