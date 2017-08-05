context("Test detatch_all_packages")

test_that("detach_all_packages detaches all packages", {

  detach_all_packages()

  base_packages <- paste0("package:", sessionInfo()$basePkgs)
  all_packages <- search()[ifelse(unlist(gregexpr("package:", search())) == 1, TRUE, FALSE)]

  testthat::expect_equal(base_packages, all_packages)

})
