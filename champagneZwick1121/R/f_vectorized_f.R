#' @title Directly Vectorized Champagne Glass Profile Function
#'
#' This function directly vectorizes `f_non_vectorized` using `Vectorize`.
#' It allows `f_non_vectorized` to accept vector inputs directly.
#'
#' @param x A numeric vector.
#' @return A numeric vector with the result of applying `f_non_vectorized` to each element of `x`.
#' @examples
#' f_vectorized(c(1, 5, 10))
#' @export
#' @author Nicolas Zwickert
f_vectorized <- Vectorize(f_non_vectorized)
