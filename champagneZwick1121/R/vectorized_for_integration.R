#' @title Vectorized Integration for Champagne Glass Profile
#' @param x A numeric vector representing x-coordinates for which the champagne glass profile is calculated.
#' @return A numeric vector with the champagne glass profile values for each x-coordinate, suitable for integration.
#' @examples
#' # Assuming f_for_loop is defined
#' x_values <- seq(0, 20, by = 0.1)
#' integrated_values <- f_vectorized_for_integration(x_values)
#' plot(x_values, integrated_values, type = 'l')
#' @export
#' @author Nicolas Zwickert
f_vectorized_for_integration <- function(x) {
  sapply(x, f_for_loop)
}
