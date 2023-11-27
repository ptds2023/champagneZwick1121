#' @title Vectorized Champagne Glass Profile Function using For Loop
#'
#' This function vectorizes `f_non_vectorized` using a for loop.
#' It applies `f_non_vectorized` to each element of a numeric vector.
#'
#' @param x A numeric vector.
#' @return A numeric vector with the result of applying `f_non_vectorized` to each element of `x`.
#' @example
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
