library(testthat)

test_that("V_function computes correctly", {
  x <- seq(0, 20, by = 0.1)
  V_result <- V_function(x)
  expect_is(V_result, "numeric")
})
