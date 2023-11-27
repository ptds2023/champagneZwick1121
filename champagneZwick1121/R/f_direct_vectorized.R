#' @title Alternative Vectorized Champagne Glass Profile Function
#' @param x A numeric vector.
#' @return A numeric vector with the result of applying `f_non_vectorized` to each element of `x`.
#' @examples
#' f_direct_vectorized(c(1, 5, 10))
#' @export
#' @author Nicolas Zwickert
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
