#' Piecewise Linear Function
#'
#' @param x numeric value or vector for independent variable
#' @param coef vector containing 3 values
#' @return Numeric value or vector representing the output of the function
#' @examples
#' coef <- c(1, 2, 0.5)
#' @export
myf <- function(x, coef){
  coef[1] + coef[2] * x + coef[3] * (x - 18) * (x - 18 > 0)
}
