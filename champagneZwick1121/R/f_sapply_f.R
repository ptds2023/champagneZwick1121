#' @title Vectorized Champagne Glass Profile Function using sapply
#'
#' This function vectorizes `f_non_vectorized` using `sapply`. It is used to apply `f_non_vectorized` to each element of a numeric vector.
#'
#' @param x A numeric vector.
#' @return A numeric vector with the result of applying `f_non_vectorized` to each element of `x`.
#' @examples
#' f_sapply(c(1, 5, 10))
#' @export
#' @author Nicolas Zwickert
f_sapply <- function(x) {
  sapply(x, f_non_vectorized)
}
