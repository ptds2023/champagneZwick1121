#' @title Directly Vectorized Champagne Glass Profile Function
#' @param x A numeric vector.
#' @return A numeric vector with the result of applying `f_non_vectorized` to each element of `x`.
#' @examples
#' f_vectorized(c(1, 5, 10))
#' @export
#' @author Nicolas Zwickert
f_vectorized <- Vectorize(f_non_vectorized)
