f_for_loop <- function(x) {
  result <- numeric(length(x))
  for (i in seq_along(x)) {
    result[i] <- f_non_vectorized(x[i])
  }
  return(result)
}
