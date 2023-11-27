#' @title Volume Calculation for uniroot
#'
#' This function calculates the volume of the Champagne glass for a given upper limit and compares it with a target volume. It is used in conjunction with the uniroot function to find the specific upper limit where the volume matches the target.
#'
#' @param b Upper limit for the integration, which defines the level of Champagne in the glass.
#' @return The difference between the calculated volume of the Champagne glass and the target volume.
#' @examples
#' V_function <- function(x) { f_vectorized_for_integration(x) ** 2 }
#' target_volume <- 200  # Target volume in cubic centimeters
#' b_uniroot <- uniroot(volume_function_uniroot, c(10, 25))$root
#' print(b_uniroot)
#' @export
#' @author Nicolas Zwickert
volume_function_uniroot <- function(b) {
  integrate(V_function, lower = 10, upper = b)$value * pi - target_volume
}
