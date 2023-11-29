#' @title Square of the Champagne Glass Profile Function
#' @param x A numeric vector representing the x-coordinates at which to calculate the square of the champagne glass profile function.
#' @return A numeric vector representing the square of the champagne glass profile values at each x-coordinate.
#' @examples
#' x <- seq(0, 20, by = 0.1)
#' @export
#' @author Nicolas Zwickert
V_function <- function(x) { f_vectorized_for_integration(x) ** 2 }
