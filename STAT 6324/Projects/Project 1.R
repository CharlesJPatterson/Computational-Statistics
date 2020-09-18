#Project 1

install.packages("rvest")
library(rvest)

#Ex 1
url <- "https://finance.yahoo.com/quote/COUP/history?p=COUP"
html <- read_html(url)
html_table(html)
df <- data.frame(html_table(html))
df <- df[1:100,]
df


#Ex 2
COUP <- read_html("https://finance.yahoo.com/quote/COUP?p=COUP&.tsrc=fin-srch")
STATS <- html_nodes(COUP, "tr:nth-child(8) .plainlist a")
html_text(STATS)
html_name(STATS)
html_attrs(STATS)


#Functions:
"
rvest-package
submit_form
set_values
session_history
html_tag
xml
%>%
html_text
html_form
jump_to
html_table
html_nodes
encoding
google_form
html_session
"

