library(rvest)

appledaily <- "http://www.appledaily.com.tw"
url <- paste0(appledaily, "/realtimenews/section/new/")

news.xml <- read_html(url)

news.time <- html_text(html_nodes(news.xml, ".rtddt time"))
news.title <- html_text(html_nodes(news.xml, ".rtddt font"))
news.category <- html_text(html_nodes(news.xml, "#maincontent h2"))

realtimenews <- data.frame(time=news.time,category=news.category,title=news.title)

View(realtimenews)
