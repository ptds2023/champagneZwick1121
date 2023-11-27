#' @title Champagne Party Simulation
#' @return A numeric vector with two elements: the first being the total liters of Champagne served, and the second the total number of bottles needed.
#' @examples
#' # Example assuming f_for_loop and necessary functions are defined
#' party_simulation <- simulate_party()
#' print(party_simulation)
#' @export
#' @author Nicolas Zwickert
simulate_party <- function() {
  # Number of guests
  G <- rpois(1, lambda = 50)

  # Number of glasses per guest
  D <- rpois(G, lambda = 1.5)

  # Volume per glass
  a <- 10
  b <- rnorm(G, mean = 11.15, sd = 0.52)
  b <- pmax(b, a)  # Ensure b > a
  V_function <- function(x) { f_for_loop(x) ** 2 }
  volume_per_glass <- sapply(b, function(b) integrate(V_function, lower = a, upper = b)$value * pi / 1000)  # in liters

  # Total liters served
  total_liters <- sum(volume_per_glass * D)

  # Total number of bottles (0.75 liters per bottle)
  total_bottles <- ceiling(total_liters / 0.75)

  return(c(total_liters, total_bottles))
}
