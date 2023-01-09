library(dplyr)
all_exoplanets_2021 <- readr::read_csv("https://raw.githubusercontent.com/maxsinner5/RAPassignment/main/data/all_exoplanets_2021.csv")


usethis::use_data(all_exoplanets_2021, overwrite = TRUE)
