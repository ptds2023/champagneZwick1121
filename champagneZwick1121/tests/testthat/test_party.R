library(testthat)

test_that("simulate_party works correctly", {
  party_simulation <- simulate_party()
  expect_true(length(party_simulation) == 2) # Assuming it returns two values
})
