#' @title Non-Vectorized Champagne Glass Profile
#' @param x Numeric value, the x-coordinate.
#' @return Numeric value, the height of the glass at the given x-coordinate.
#' @examples
#' f_non_vectorized(5)
#' @export
#' @author Nicolas Zwickert
f_non_vectorized <- function(x) {
  if (x < 0) {
    return(0)
  } else if (x >= 0 && x < 0.5) {
    return(15)
  } else if (x >= 0.5 && x < 10) {
    return(2)
  } else if (x >= 10 && x < 15) {
    return(8 * log(x - 9, base = 2) + 2)
  } else if (x >= 15 && x <= 20) {
    return(8 * log(6, base = 2) + 2)
  } else {
    return(0)
  }
}


