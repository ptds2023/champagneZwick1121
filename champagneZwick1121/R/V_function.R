#' @title Calculate and Compare Computed and Theoretical Volume of a Champagne Glass
#' @param f_vectorized_for_integration A vectorized function representing the profile of the champagne glass.
#' @param lower The lower bound for the integral.
#' @param upper The upper bound for the integral.
#' @param true_formula A character string representing the formula for the theoretical volume.
#' @return A list containing the computed volume (V_computed) and the theoretical volume (V_true).
#' @examples
#' f_vectorized_for_integration <- function(x) { f_for_loop(x) ** 2 }
#' lower_bound <- 10
#' upper_bound <- 20
#' true_formula <- "8 * pi * (80 + 5 * log2(2) + 88 * log2(6) + 4 * (11 * log(6) - 5) * log2(2) - 96 * log2(6)) * log2(2)"
#' result <- calculate_and_compare_volume(f_vectorized_for_integration, lower_bound, upper_bound, true_formula)
#' print(result)
#' @export
#' @author Nicolas Zwickert
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
