rest<-read.csv("Restaurants.csv")
head(rest,3)
rest$nearme<-rest$zipCode %in% c(21206,21207)
table(rest$nearme)
names(rest)
rest$wrongzips<-rest$zipCode<0
which(rest$wrongzips==TRUE)
rest$zipgroup<-cut(rest$zipCode,breaks=quantile(rest$zipCode))
install.packages("Hmisc")
library(plyr)
library(Hmisc)
restdata2<-cbind(rest,zipgroup=cut2(rest$zipCode,g=4))
names(restdata2)

restdata2
##dplyrpackage
library(dplyr)
names(rest)
select(rest,name:neighborhood)##filter columns
select(rest,-(name:neighborhood))
filter(rest,zipCode>20100&councilDistrict<10)## filter rows.
arrange(rest,desc(zipCode))##order in descending order
rename(rest,zips=zipCode)#rename columns
rest<-mutate(rest,nearme=factor(rest$nearme,labels = c("no","yes")))#mutate is like cbind
nearornot<-group_by(rest,nearme)#group dataframe based on factor
##summarize is extremely useful with group_by. its groups data on a factor and then summarizes for every factor
summarize(nearornot,zippie=max(zipCode),counc=min(councilDistrict))#summarize based on colums
names(rest)
rest
##aggregate works for find a function for variables. for eg mean of all vars in groups of activity.
# aggregate(data,by=(listofgroupingvar),FUN)
