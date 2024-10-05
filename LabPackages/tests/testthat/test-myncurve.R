library(testthat)

# Test 1: Check mu
test_that("myncurve returns correct value for mu", {
  result <- myncurve(mu = 5, sigma = 2, a = 1)
  expect_equal(result$mu, 5)
})

# Test 2: Check sigma`
test_that("myncurve returns correct value for sigma", {
  result <- myncurve(mu = 5, sigma = 2, a = 1)
  expect_equal(result$sigma, 2)
})

# Test 3: Check probability
test_that("myncurve returns correct probability", {
  result <- myncurve(mu = 5, sigma = 2, a = 6)
  expected_prob <- pnorm(6, mean = 5, sd = 2)
  expect_equal(result$probability, round(expected_prob, 4))
})
