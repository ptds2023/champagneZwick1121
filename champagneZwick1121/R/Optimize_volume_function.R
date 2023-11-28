#' @title Volume Optimization for a Given Range
#' @param b The upper limit for the integration, which determines the level of Champagne in the glass.
#' @param target_volume A numeric value specifying the target volume for calculations.
#' @return The absolute difference between the computed volume of the Champagne glass and the target volume.
#' @examples
#' optimize_volume_function(15,200)
#' @export
#' @author Nicolas Zwickert
optimize_volume_function <- function(b,target_volume) {
  abs(integrate(V_function, lower = 10, upper = b)$value * pi - target_volume)
}
