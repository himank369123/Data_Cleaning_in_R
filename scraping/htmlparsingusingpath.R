## load httr, GET(url,user,password), parse it as htmlParse into page. xpathSApply on page and path and xmlvalue using selector gadget in chrome
library(httr)
html2<-GET(url)
content2<-content(html2,as="text")
parsedHtml=htmlParse(content2,asText = T)
xpathSApply(parsedHtml,"//title",xmlValue)
xpathSApply(parsedHtml,"//td[@class='gsc_a_c']",xmlValue)
xpathSApply(parsedHtml,'//*[contains(concat( " ", @class, " " ), concat( " ", "gsc_a_ac", " " ))]',xmlValue)
