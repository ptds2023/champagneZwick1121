library(testthat)

test_that("f_non_vectorized returns correct values", {
  expect_equal(f_non_vectorized(0), 15)
  expect_equal(f_non_vectorized(4), 2)
  expect_equal(f_non_vectorized(16), 22.6797)
  expect_equal(f_non_vectorized(22), 0)
})
