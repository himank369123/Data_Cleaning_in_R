
library(tidyr)
##gather takes multiple columns , used when colums are not variables. for eg. male,female
students<-data.frame(grade=LETTERS[1:5],male=c(1,5,5,5,7),female=c(5,0,2,5,4))
#gather dataframe students into sex and count. take all columts except grade.
students
gather(students,key=sex,value=count,-grade)

students2<-data.frame(grade=LETTERS[1:5],male_1=c(3,6,7,4,1),female_1=c(4,4,4,0,1),male_2=c(3,3,3,8,2),female_2=c(4,5,8,1,7))
students2
#gather students2 variables(male_1,male_2,female_1,female_2) into sex_class and count
#and exclue grade.
res<-gather(students2,key=sex_class,value=count,-grade)
res

#separate is used to separate 2 variables in one column like sex_class.
separate(res,col=sex_class,into=c("sex","class"))

students6<-data.frame(name=c('sally','sally','Brian','Brian','Jeff','Jeff'),test=c('midterm','final','midterm','final','midterm','final'),grade=c('A','C','B','B','D','E'))
students6
##spread is used when rows are also variables/one column contains other variables. like midterm and final in students6
##spread spreads out the two variables in a colum to separate ones.
spread(students6,test,grade)

##readr package provides fucntion like parse_number,parse_date, etc to parse specific 
#datatypes from strings.
library(readr)
parse_number("hel3gg31")


##select can be combined with contains function to select colums containting/
#not containing part of a string

