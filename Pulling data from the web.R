
library(tidyverse)
library(lubridate)
library(listviewer)
library(jsonlite)
#  library(JSON)   No such package?
library(RCurl)
library(httr)
library(pageviews)
library(rlist)



data1 <- fromJSON("https://api.github.com/users/hadley/orgs")


# this requires the RCurl package; this is from:
# https://stackoverflow.com/questions/2617600/importing-data-from-a-json-file-into-r

json <- fromJSON(getURL('https://s3.amazonaws.com/bucket/my.json'))

# This is from:  https://stackoverflow.com/questions/2617600/importing-data-from-a-json-file-into-r,
# # the section titled 'import httr package':
# 
url <- "http://www.omdbapi.com/?apikey=72bc447a&t=Annie+Hall&y=&plot=short&r=json"
resp <- GET(url)

class(resp)  # it is listed in the global environement as a list.

# Making requests is all well and good, 
# but it's also not why you're here. 
# What we really want to do is get the data the 
# server sent back, which can be done with httr's 
# content() function. You pass it an object returned from a 
# GET (or POST, or DELETE, or...) call, and it spits out 
# whatever the server actually sent in an R-compatible 
# structure.

content(resp, as = "text")
class(content(resp, as = "text"))
responce_content_df <- content(resp) %>% as.data.frame()

View(responce_content_df)

View(resp)







# GET and POST, from the package httr:
# 
get_result <- GET(url="http://httpbin.org/get")

post_result <- POST(url="http://httpbin.org/post", body="this is a test")

