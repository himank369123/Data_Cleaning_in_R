fileurl<-"https://www.w3schools.com/xml/simple.xml"

## default format:
## xpathSApply(parsedtree,//tag,xmlValue)
library(XML)
library(RCurl)
xdata<-getURL(fileurl)
doc<-xmlTreeParse(xdata,useInternal=TRUE)
rootnode<-xmlRoot(doc)
xmlName(rootnode)
names(rootnode)

rootnode[[1]][[1]]
xmlSApply(rootnode,xmlValue)
xpathSApply(doc,"//name",xmlValue)
xpathSApply(doc,"//price",xmlValue)