#' Exoplanet dataset
#'@param all_exoplanets_2021 A dataframe containing all discovered exoplanets up until 2021. We only select those star systems with more than 1 planet, as they are not as dull and uninteresting.
#'@param col1_of_interest The user can select a column of their choice to check different things about the "interesting star systems. All columns are ok except "Distance' or 'Stellar Mass', as they are already provided
#'@param col2_of_interest The users wish is granted and a second column can be chosen to be investigated. All columns are ok except "Distance' or 'Stellar Mass', as they are already provided
#'@importFrom janitor clean_names
#'@importFrom dplyr select filter
#'@importFrom readr read_csv
#'@export
#'@return A simplified dataframe
#'@details
#'This function returns a very simplified version of the original dataset, such that the person who is interested in studying the exoplanet dataset is not
#'overwhelmed and can digest the different features of the "interesting" planetary systems in great detail.
#'@examples
#'exo_planets_data(all_exoplanets_2021, num_stars, discovery_method)

exo_planets_data <- function(all_exoplanets_2021, col1_of_interest, col2_of_interest ){

  all_exoplanets_2021 |>
    janitor::clean_names() |>
    dplyr::filter(num_planets > 1) |>
    dplyr::select(planet_name,stellar_mass,distance, {{col1_of_interest}},{{col2_of_interest}})

}
