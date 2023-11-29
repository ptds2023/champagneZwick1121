library(testthat)

test_that("f_purrr computes correctly", {
  expect_equal(f_purrr(10), 2)
  expect_equal(f_purrr(11), 10)
  expect_equal(f_purrr(16), 22.6797)
})
