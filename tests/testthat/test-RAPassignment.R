#all_exoplanets_2021 <- readr::read_csv("https://raw.githubusercontent.com/maxsinner5/RAPassignment/main/data/all_exoplanets_2021.csv")


test_that("Function returns a tibble that is nx5",{



  returned_tibble <- exo_planets_data(all_exoplanets_2021,
                                      num_stars,
                                      discovery_method)


  returned_value <- dim(returned_tibble)[2]

  expected_value <- 5

  expect_equal(returned_value,expected_value)
})
