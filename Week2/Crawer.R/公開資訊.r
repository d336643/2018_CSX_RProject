res <- POST(
  "http://mops.twse.com.tw/mops/web/ajax_t51sb01",
  body = list(
    encodeURIComponent = 1,
    step = 1,
    firstin = 1,
    TYPEK = "sii",
    code = "01"
  ),
  encode = "form"
)
res_text <- content(res, "text", encoding = "UTF-8")
res_text