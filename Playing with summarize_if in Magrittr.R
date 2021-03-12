

gapminder %>% 
  dplyr::select(-year) %>% 
  group_by(country) %>%
  descr(.)



gapminder %>% 
  dplyr::select(-c(year,country)) %>% 
#  group_by(continent) %>%
  describeBy(.,continent)

gapminder %>%
  dplyr::select(-c(country, year))  %>% 
  group_by(continent) %>%
  dplyr::select_if(is.numeric) %>% 
  summary()  %>% 
  kable() %>%
  kable_styling(bootstrap_options = c("striped", "hover", "condensed"))


dplyr::summarize_if(.,is.numeric)

gapminder %>%
  psych::describeBy(r,group=gapminder$continent)




