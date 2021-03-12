# File:  Listviewer Package and JSON Files
# 


library(listviewer)

# This displays a list of vectors:
jsonedit(listdata=gapminder)

# from the example in help - this lists all of the 
# parameters contained in/set by par():

jsonedit(listdata=par())

summary_gapminder <- summary(gapminder)
class(summary_gapminder)
jsonedit(listdata=summary_gapminder)

class(str(gapminder))

# apparently the str() function command  is of class NULL;
# jsonedit() returns an empty object:

structure_gapminder <- str(gapminder)
class(structure_gapminder)
jsonedit(listdata=structure_gapminder)

# list example from:
# http://www.r-tutor.com/r-introduction/list
n = c(2, 3, 5) 
s = c("aa", "bb", "cc", "dd", "ee") 
b = c(TRUE, FALSE, TRUE, FALSE, FALSE) 
x = list(n, s, b, 3)   # x contains copies of n, s, b 

class(x)
jsonedit(listdata=x)

