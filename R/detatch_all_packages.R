#' Detach all packages
#'
#' \code{detach_all_packages} detaches all currently loaded R packages except
#' the base packages.
#'
#' @examples
#'
#' \dontrun{
#' detach_all_packages()
#' }
#'
#' @importFrom utils sessionInfo
#'
#' @export

detach_all_packages <- function() {

  base_packages <- paste0("package:", sessionInfo()$basePkgs)

  all_packages <- search()[ifelse(unlist(gregexpr("package:", search())) == 1, TRUE, FALSE)]

  packages_to_remove <- setdiff(all_packages, base_packages)

  if (length(packages_to_remove)>0){
    for (package in packages_to_remove) {
      detach(package, character.only = TRUE)
    }
  }

}
