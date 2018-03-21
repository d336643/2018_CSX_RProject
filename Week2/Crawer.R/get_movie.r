library(rvest)
library(html2)

res <- read_html("https://movies.yahoo.com.tw/chart.html?cate=rating&search_year=2018")
movies.names <- html_nodes(res,".ga_ranking , .count , .rank_txt , .td:nth-child(1) , h1")
movies.names <- html_text(movies.names)
movies.names <- iconv(movies.names, "UTF-8")

movies.names