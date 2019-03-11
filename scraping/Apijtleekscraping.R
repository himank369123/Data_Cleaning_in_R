library(httr)
library(jsonlite)
oauth_endpoints("github")
myapp <- oauth_app("Coursera_jtleek",
                   key = "2434e17aded5a0dcdcb3",
                   secret = "21fd90a0d26afcbfe5407c58cf6bc3eec0f4e715"
)
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
con<-content(req)
df<-fromJSON(toJSON(con))
df[df$full_name=="jtleek/datasharing","created_at"]
