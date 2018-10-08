context("test-utils.R")

test_that("r2academy packages returns character vector of package names", {
  out <- r2academy_packages()
  expect_type(out, "character")
  expect_true("olsrr" %in% out)
})

test_that('loaded packages', {
  loaded <- names(sessionInfo()$otherPkgs)
  expect_true(
    all(r2academy:::core %in% loaded)
  )
})

