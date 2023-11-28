library(testthat)

test_that("f_sapply returns correct values", {
  expect_equal(f_sapply(1), 2)
  expect_equal(f_sapply(11), 10)
  expect_equal(f_sapply(15), 22,6797)
})
