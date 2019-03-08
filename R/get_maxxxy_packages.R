#' Get maxxxy packages
#'
#' \code{get_maxxxy_packages} returns a list of the most used maxxxy packages
#'
#' @examples
#' get_maxxxy_packages()
#'
#' @export

get_maxxxy_packages <- function() {
  tidyverse_packages <- c("tidyverse", "dplyr", "forcats", "ggplot2", "haven", "lubridate", "magrittr", "purrr", "readr", "readxl", "stringr", "tibble", "tidyr")

  database_packages <- c("dbplyr", "DBI", "RPostgreSQL")

  plotting_packages <- c("plotly", "dygraphs")

  logging_packages <- c("logging")

  bitcoin_packages <- c("Rbitcoin")

  ml_packages <- c("caret", "xgboost", "mxnet", "h2o")

  timeseries_packages <- c("xts", "forecast")

  reporting_packages <- c("rmarkdown", "shiny", "shinydashboard")

  writing_packages <- c("blogdown", "bookdown")

  development_packages <- c("styler", "roxygen2", "testthat")

  maxxxy_packages <- c(
    tidyverse_packages,
    database_packages,
    plotting_packages,
    logging_packages,
    bitcoin_packages,
    timeseries_packages,
    ml_packages,
    reporting_packages,
    writing_packages,
    development_packages
  )

  return(maxxxy_packages)
}
