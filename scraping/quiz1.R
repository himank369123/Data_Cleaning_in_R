library(data.table)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv",destfile = "usasurvey")

data<-read.csv("usasurvey.csv",header = TRUE)
sum(complete.cases(data$VAL[data$VAL==24]))
dim(data[data$VAL==24& !is.na(data$VAL),])

install.packages("xlsx")
Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jdk-11.0.2')
library(rJava)
library(xlsx)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx",destfile = "naturalgas.xlsx")
data1<-read.xlsx("naturalgas.xlsx",sheetIndex =1)
data1
dat<-read.xlsx("naturalgas.xlsx",sheetIndex = 1,rowIndex = 18:23,colIndex = 7:15)
sum(dat$Zip*dat$Ext,na.rm=T)
dat



library(rvest)
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
page<-read_html(url)
sum(as.numeric(page %>% html_nodes("zipcode") %>% html_text())==21231)


download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv",destfile = "usasurvey.csv")
library(data.table)
DT<-fread("usasurvey.csv")
tapply(DT$pwgtp15,INDEX = DT$SEX,mean)
DT[,mean(pwgtp15),by=SEX]
