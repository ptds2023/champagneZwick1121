library(testthat)

test_that("optimize_volume_function optimizes correctly", {
  expect_silent(optimize_volume_function(15, 200))
})
