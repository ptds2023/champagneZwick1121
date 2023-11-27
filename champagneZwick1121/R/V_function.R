calculate_and_compare_volume <- function(f_vectorized_for_integration, lower, upper, true_formula) {
  # Calcul of volume V
  V_function <- function(x) { f_vectorized_for_integration(x) ** 2 }
  V_computed <- integrate(V_function, lower = lower, upper = upper)
  V_value <- V_computed$value * pi

  # Value of V
  V_true <- eval(parse(text = true_formula))

  # Compare and return result
  list(V_computed = V_value, V_true = V_true)
}
