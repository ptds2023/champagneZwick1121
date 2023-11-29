#' @title Volume Calculation for uniroot
#' @param b Upper limit for the integration, which defines the level of Champagne in the glass.
#' @param target_volume A numeric value specifying the target volume for calculations.
#' @return The difference between the calculated volume of the Champagne glass and the target volume.
#' @examples
#' x <- seq(0, 20, by = 0.1)
#' V_function(x)
#' volume_function_uniroot(15,200)
#' @export
#' @author Nicolas Zwickert
volume_function_uniroot <- function(b,target_volume) {
  integrate(V_function, lower = 10, upper = b)$value * pi - target_volume
}
