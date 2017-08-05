#' Get maxxxy packages
#'
#' \code{get_maxxxy_packages} returns a list of the most used maxxxy packages
#'
#' @examples
#' get_maxxxy_packages()
#'
#' @export

get_maxxxy_packages <- function() {

  tidyverse_packages <- c('tidyverse', 'dplyr', 'forcats', 'ggplot2', 'haven', 'lubridate', 'magrittr', 'purrr', 'readr', 'readxl', 'stringr', 'tibble', 'tidyr')

  database_packages  <- c('dbplyr', 'DBI', 'RPostgreSQL')

  plotting_packages  <- c('plotly')

  logging_packages   <- c('logging')

  bitcoin_packages   <- c('Rbitcoin')

  maxxxy_packages <- c(tidyverse_packages, database_packages, plotting_packages, logging_packages, bitcoin_packages)

  return(maxxxy_packages)

}
