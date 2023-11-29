library(testthat)

test_that("f_direct_vectorized returns correct values", {
  expect_equal(f_direct_vectorized(1), 2)
  expect_equal(f_direct_vectorized(11), 10)
  expect_equal(f_direct_vectorized(16), 22.6797)
  expect_equal(f_direct_vectorized(22), 0)
})
