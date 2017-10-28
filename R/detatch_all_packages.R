#' Detatch all packages
#'
#' \code{detatch_all_packages} detatches all currently loaded R packages except
#' the base packages.
#'
#' @examples
#'
#' \dontrun{
#' detatch_all_packages()
#' }
#'
#' @importFrom utils sessionInfo
#'
#' @export

detatch_all_packages <- function() {

  base_packages <- paste0("package:", sessionInfo()$basePkgs)

  all_packages <- search()[ifelse(unlist(gregexpr("package:", search())) == 1, TRUE, FALSE)]

  packages_to_remove <- setdiff(all_packages, base_packages)

  if (length(packages_to_remove)>0){
    for (package in packages_to_remove) {
      detach(package, character.only = TRUE)
    }
  }

}
