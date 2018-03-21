library(rvest)

data <- read_html("https://play.google.com/store/apps/details?id=gogolook.callgogolook2")
data_nodes <- html_nodes(data, xpath="//div[@class='review-body with-review-wrapper']")
#why not xpath = "//div[@class="review-title"]" length = 6
length(data_nodes)
