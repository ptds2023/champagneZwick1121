# Define the function for integration
f_vectorized_for_integration <- function(x) {
  sapply(x, f_for_loop)
}
