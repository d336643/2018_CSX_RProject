library(rvest)
res_ptt_get <- read_html('https://www.ptt.cc/bbs/hotboards.html')
ptt_nodes <- html_nodes(res_ptt_get, xpath = '//div[@class="board-title"]')
html_text(ptt_nodes) %>% head()