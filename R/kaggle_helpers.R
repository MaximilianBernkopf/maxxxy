#' Helper function to construct convenient submission name.
#'
#' @param model_slug model slug to paste after timestamp
#'
#' @return convenient submission file name
#' @export
#'
#' @examples
#' construct_submission_name()
#' construct_submission_name("my_model")
#'
construct_submission_name <- function(model_slug = "no_slug"){

  current_time_string <- strftime(Sys.time() , "%Y-%m-%dT%H:%M:%S")

  submussion_name <- paste(current_time_string, model_slug, sep = "_")
  return(submussion_name)

}
