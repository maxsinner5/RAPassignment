## code to prepare `DATASET` dataset goes here

all_exoplanets_2021 <- readr::read_csv("")

usethis::use_data(DATASET, overwrite = TRUE)
