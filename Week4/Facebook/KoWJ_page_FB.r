library(Rfacebook)

token <- "EAACEdEose0cBAAACJDpNrDq02ZC9DM6cCdTAQyYHvNCzj4rP21ty2sopCqZBxc9ivZAP87YewdQWNZBL8IeZCXTELncGSjjo1ZAEUs0G3SqrqGBTcIL5iXgf71chxbz5h91h4Eaupj8mmvXlgZA9CYRF08c2dRUlWY48OodvZBElkrIbfWOhGfGsX3vIhF4wEbTTZAse7JK9ZBCgZDZD"
me <- getUsers("me", token, private_info = T)

page.id <- "136845026417486"
page <- getPage(page.id, token, n=10)

View(page)
