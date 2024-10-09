#' Overbook Simulation
#'
#' @param N number of seats
#' @param gamma gamma
#' @param p Probability
#' @return A list of results two plots
#' @import ggplot2
#' @importFrom stats dnorm pbinom pnorm
#' @export
#'
ntickets <- function(N = 200, gamma = 0.02, p = 0.95) {
  value <- NULL
  n <- seq(N, floor(N + N / 10), by = 1)
  tmp <- 1 - gamma - pbinom(q = N, size = n, prob = p)

  ind <- which.min(abs(tmp))
  nd <- n[ind]
  discrete_df <- data.frame(n = n, value = tmp)

  mu <- n * p
  sigma <- sqrt(n * p * (1 - p))
  tmp <- 1 - gamma - pnorm(N, mean = mu, sd = sigma)

  ind <- which.min(abs(tmp))
  nc <- n[ind]
  normal_df <- data.frame(n = n, value = tmp)
  plot1 <- ggplot(discrete_df, aes(x = n, y = value)) +
    geom_line(color = "blue") +
    geom_hline(yintercept = 0, color = "red") +
    geom_point(color = "blue") +
    geom_vline(xintercept = nd, color = "red") +
    labs(
      title = "Objective Vs n to find optimal tickets sold",
      x = "n",
      y = "Objective"
    )

  # Continuous (Normal Approximation) Plot
  plot2 <- ggplot(normal_df, aes(x = n, y = value)) +
    geom_line(color = "black") +
    geom_hline(yintercept = 0, color = "blue") +
    geom_vline(xintercept = nc, color = "blue") +
    labs(
      title = "Objective Vs n to find optimal tickets sold",
      x = "n",
      y = "Objective"
    )

  print(plot1)
  print(plot2)
  return(list(nd = nd, nc = nc, N = N, p = p, gamma = gamma))
}
