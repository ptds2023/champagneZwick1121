library(testthat)

test_that("volume_function_uniroot works correctly", {
  expect_silent(volume_function_uniroot(15, 200))
})
