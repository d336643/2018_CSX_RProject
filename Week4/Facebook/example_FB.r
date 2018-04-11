library(httr)

token  = "EAACEdEose0cBAKZB02esBLoxXalR6A64LCugv9A13YUZAYGDT8KccaJsAdlqVcYo60LGrWDwXvAwsdEUaECZBbVBCtYqq0AMRc8XP6FZBYXc989w9S2KumZBajGLzy0I4wz5XI9rWDgscsAlIOTMYQKkqEA6g9z9BYFfpbRVuwZB2tO0929v8XgZAAB0b6aZAbfe3lUkdBaUuQZDZD"
prefex = "https://graph.facebook.com/v2.12/DoctorKoWJ/?fields=posts&access_token="
url    = paste0(prefex, token)
res    = httr::GET(url)
posts  = content(res)

res = POST("https://graph.facebook.com/v2.12/me/feed",
           body=list(message=sprintf("[TEST Posting Message] %s At %s","httr 測試",Sys.time()),
                     access_token=token))



url = sprintf("https://graph.facebook.com/v2.12/%s?access_token=%s", postId, token)
res = DELETE(url)
content(res)