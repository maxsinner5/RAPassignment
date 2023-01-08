

exo_planets <- readr::read_csv("https://raw.githubusercontent.com/maxsinner5/RAPassignment/main/all_exoplanets_2021.csv")
test_that("Function returns a tibble that is nx5",{



  returned_tibble <- exo_planets_data(exo_planets,
                                      exo_planets$Distance,
                                      exo_planets$`Discovery Year`)


  dim(returned_tibble)[2] = 5




})
