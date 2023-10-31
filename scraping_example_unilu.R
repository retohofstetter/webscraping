library(rvest)
library(stringr)
library(httr)

webpage <- read_html("https://www.unilu.ch")

days <- html_nodes(webpage, "#c2 .news__date")
days <- html_text(days)
days <- str_replace_all(days, "\n", "")
days <- str_replace_all(days, "\t", "")
days <- str_replace_all(days, " ", "")
days

titles <- html_nodes(webpage, "#c2 .news__header")
titles <- html_text(titles)
titles <- str_replace_all(titles, "\n", "")
titles <- str_replace_all(titles, "\t", "")
titles <- str_trim(titles)
titles
