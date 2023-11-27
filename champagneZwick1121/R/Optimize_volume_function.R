optimize_volume_function <- function(b) {
  abs(integrate(V_function, lower = 10, upper = b)$value * pi - target_volume)
}
