library(rvest)
rh <- read_html("https://www.ptt.cc/bbs/joke/index4753.html")
rh_node <- html_nodes(rh, xpath="//div[@class='author']")
html_text(rh_node)
result = html_text(data_nodes)
tail(result)