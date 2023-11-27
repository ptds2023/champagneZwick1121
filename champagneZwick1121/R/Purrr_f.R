f_purrr <- function(x) {
  purrr::map_dbl(x, f_non_vectorized)
}
