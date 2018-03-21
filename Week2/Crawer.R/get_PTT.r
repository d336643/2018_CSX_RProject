#install.packages("xml2")
#install.packages("rvest")

library(rvest)

res_get <- read_html("https://www.ptt.cc/bbs/hotboards.html")
result <- html_text(res_get)
