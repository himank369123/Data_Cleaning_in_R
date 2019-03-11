library(rvest)
library(stringr)
url<-"https://www.trustpilot.com/review/www.amazon.com"

page<-read_html(url)
review<-page %>% html_nodes('.review-content__text') %>% html_text %>% str_trim %>% unlist()
review

name<-page %>% html_nodes('.consumer-information__name') %>% html_text %>% str_trim %>% unlist()
name

date<-page %>% html_nodes('.trigger') %>% html_text %>% str_trim %>% unlist()
date

