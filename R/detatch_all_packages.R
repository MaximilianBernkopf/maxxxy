#' Detatch all packages
#'
#' \code{detach_all_packages} detaches all currently loaded R packages except the base packages.
#'
#' @examples
#'
#' \dontrun{
#' detach_all_packages()
#' }
#' @export

detach_all_packages <- function() {

  base_packages <- paste0("package:", sessionInfo()$basePkgs)

  package_list <- search()[ifelse(unlist(gregexpr("package:", search())) == 1, TRUE, FALSE)]

  package_list <- setdiff(package_list, base_packages)

  if (length(package_list)>0)  for (package in package_list) detach(package, character.only = TRUE)

}
