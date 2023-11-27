#' @title Volume Optimization for a Given Range
#'
#' This function is used to find the optimal value of 'b' for which the absolute difference between the computed volume of the Champagne glass and a target volume is minimized. It is designed to be used with the 'optimize' function.
#'
#' @param b The upper limit for the integration, which determines the level of Champagne in the glass.
#' @return The absolute difference between the computed volume of the Champagne glass and the target volume.
#' @examples
#' V_function <- function(x) { f_vectorized_for_integration(x) ** 2 }
#' target_volume <- 200  # Target volume in cubic centimeters
#' b_optimize <- optimize(optimize_volume_function, c(10, 25))$minimum
#' print(b_optimize)
#' @export
#' @author Nicolas Zwickert
optimize_volume_function <- function(b) {
  abs(integrate(V_function, lower = 10, upper = b)$value * pi - target_volume)
}
