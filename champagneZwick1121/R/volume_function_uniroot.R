volume_function_uniroot <- function(b) {
  integrate(V_function, lower = 10, upper = b)$value * pi - target_volume
}
