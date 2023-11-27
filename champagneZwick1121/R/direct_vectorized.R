f_direct_vectorized <- function(x) {
  y <- numeric(length(x))
  y <- ifelse(x < 0, 0, y)
  y <- ifelse(x >= 0 & x < 0.5, 15, y)
  y <- ifelse(x >= 0.5 & x < 10, 2, y)
  y <- ifelse(x >= 10 & x < 15, 8 * log2(x - 9) + 2, y)
  y <- ifelse(x >= 15 & x <= 20, 8 * log2(6) + 2, y)
  y <- ifelse(x > 20, 0, y)
  return(y)
}
