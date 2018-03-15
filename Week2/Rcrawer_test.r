library(httr)
library(XML)

# 要爬的網址
url <- "https://stackoverflow.com/questions/tagged/r?sort=votes&pageSize=50"

# 我們扮演成正常的瀏覽器（很多網站不喜歡不假裝的爬蟲器，不讓你下載東西）
userAgent <- "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.186 Safari/537.36"

# 下載！
response <- GET(url, add_headers('user-agent' = userAgent))

# 當下載不成功的話，直接停止，跟我們解釋！
stop_for_status(response)

# parse HTML
doc <- htmlTreeParse(response, useInternalNodes = T)

# get all HTML elements with the "summarycount" class
countNodes <- getNodeSet(doc, "//div[contains(@class, 'summarycount')]")

# extract the value of the first element
countNode <- xmlValue(countNodes[[1]])

# print result!
cat('There are ', countNode, ' questions related to the R programming language!')