#' @title Vectorized Champagne Glass Profile Function using sapply
#' @param x A numeric vector.
#' @return A numeric vector with the result of applying `f_non_vectorized` to each element of `x`.
#' @examples
#' f_sapply(10)
#' @export
#' @author Nicolas Zwickert
f_sapply <- function(x) {
  sapply(x, f_non_vectorized)
}
