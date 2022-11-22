#' Exoplanet dataset
#'@param exo_planets A dataframe containing all discovered exoplanets up until 2021. We only select those star systems with more than 1 planet, as they are not as dull and uninteresting.
#'@param col1_of_interest The user can select a column of their choice to check different things about the "interesting star systems.
#'@param col2_of_interest The users wish is granted and a second column can be chosen to be investigated.
#'@importFrom janitor clean_names
#'@importFrom dplr select filter
#'@export
#'@return A simplified dataframe
#'@details
#'This function returns a very simplified version of the original dataset, such that the person who is interested in studying the exoplanet dataset is not
#'overwhelmed and can digest the different features of the "interesting" planetary systems in great detail.
#'@examples
#'exo_planets_data(exo_planets, num_stars, discovery_method)



exo_planets_data <- function(exo_planets, col1_of_interest, col2_of_interest ){
  exo_planets <- readr::read_csv("all_exoplanets_2021.csv")

  exo_planets |>
    janitor::clean_names() |>
    dplyr::filter(num_planets > 1) |>
    dplyr::select(stellar_mass, distance, {{col1_of_interest}},{{col2_of_interest}})

}