library(tidyverse)
library(rtweet)

tweets <- get_timeline("saceramicstudio", n = 50, home = FALSE)
rt <- get_retweets("1300139182933848064", n = 100, parse = TRUE, token = NULL)

names <- select(rt, screen_name) %>%
  filter(!screen_name %in% c("Coryographies", "CSHoggard"))

set.seed(0806)

winner <- sample_n(names, 1)

show(winner)
