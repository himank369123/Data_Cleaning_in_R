install.packages("jsonlite")
library(jsonlite)
url<-"https://api.github.com/users/jtleek/repos"
#covert rom json to dataframe
data<-fromJSON(url)
data$id
data$owner$login


#writing data frame as json.
myjson<-toJSON(data,pretty = TRUE)
cat(myjson)
