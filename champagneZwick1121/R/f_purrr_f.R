#' @title Vectorized Champagne Glass Profile Function using purrr
#' @param x A numeric vector.
#' @return A numeric vector with the result of applying `f_non_vectorized` to each element of `x`.
#' @examples
#' f_purrr(c(1, 5, 10))
#' @export This function vectorizes `f_non_vectorized` using the `map_dbl` function from the `purrr` package.
#' @author Nicolas Zwickert
f_purrr <- function(x) {
  purrr::map_dbl(x, f_non_vectorized)
}
