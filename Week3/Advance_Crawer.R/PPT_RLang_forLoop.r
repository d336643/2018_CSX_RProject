url.main <- 'https://www.ptt.cc/bbs/R_Language/index.html'
href.title <- html_nodes(read_html(url.main), ".title a") 
R.href <- html_attr(href.title, 'href')

PPT.RLang.data <- c()
for(i in 1:length(R.href)){
  url <- paste0('https://www.ptt.cc',R.href[i])
  article <- html_nodes(read_html(url), "#main-content")
  article.content <- html_text(article)
  PPT.RLang.data <- c(PPT.RLang.data, article.content)
}

View(PPT.RLang.data)
