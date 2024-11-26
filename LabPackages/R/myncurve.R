#' display the curve, shaded area between the curve and x axis from -∞ to x=a
#'
#' @param mu mean
#' @param sigma standard deviation
#' @param a end point of x
#' @return (probability, P(X<=a))
#' @importFrom graphics barplot curve polygon text
#' @export
#' @usage myncurve(mu=10, sigma=5, a=6)
myncurve <-  function(mu = 10, sigma = 5, a = 6) {
  x <- NULL

curve(dnorm(x, mean=mu, sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma),
      ylab="Density", xlab="X", main=paste("Normal Distribution with mu =", mu, "and sigma =", sigma))

xcurve = seq(-10, a, length=1000)
ycurve = dnorm(xcurve, mean=mu, sd=sigma)

polygon(c(-10, xcurve, a), c(0, ycurve, 0), col="skyblue")
prob = pnorm(a, mean=mu, sd=sigma)

text(x=a, y=max(ycurve) / 2, paste("P(X <= ", a, ") = ", round(prob, 4), sep=""), pos=4, col="blue")

return(list(mu = mu, sigma = sigma, a = a, probability = round(prob, 4)))
}

