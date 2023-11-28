library(testthat)

test_that("f_vectorized_for_integration works correctly", {
  x_values <- seq(0, 20, by = 0.1)
  integrated_values <- f_vectorized_for_integration(x_values)
  expect_is(integrated_values, "numeric")
})
