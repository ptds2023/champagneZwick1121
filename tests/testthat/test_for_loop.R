library(testthat)

test_that("f_for_loop returns correct values", {
  expect_equal(f_for_loop(1), 2)
  expect_equal(f_for_loop(16), 22.6797)
  expect_equal(f_for_loop(22), 0)
})
