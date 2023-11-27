#' @title Vectorized Champagne Glass Profile - For Loop
#' @param x Numeric vector of x-coordinates.
#' @return Numeric vector of glass heights at the given x-coordinates.
#' @examples
#' f_for_loop(c(1, 5, 10))
#' @export
#' @author Nicolas Zwickert
f_for_loop <- function(x) {
  result <- numeric(length(x))
  for (i in seq_along(x)) {
    result[i] <- f_non_vectorized(x[i])
  }
  return(result)
}
