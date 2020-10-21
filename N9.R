N9 <- function(seed, min, max, mean, sd, n = 300) {
  set.seed(seed)
  x <- runif(n, min, max)
  e <- rnorm(n, mean, sd)
  y <- 0.75*x + e
  
  par(mfrow = c(2, 1))
  #графики x
  hist(x, freq = F, col = 'grey')
  curve(dunif(x, min, max), col = "darkblue", lwd = 2, add = T)
  lines(density(x), col = "red", lwd = 3)
  
  #графики e
  hist(e, freq = F, col = 'grey')
  curve(dnorm(e, mean = mean(e), sd = sd(e)), col = "darkblue", lwd = 2, add = T, xname = "e")
  lines(density(e), col = "red", lwd = 3)
  
  par(mfrow = c(1, 1))
  
  #Среднее арифметическое, посчитанное по значениям,
  #которые больше первого квартиля и меньше третьего квартиля
  IQM.x <- mean(x[(x > quantile(x)["25%"]) & (x < quantile(x)["75%"])])
  IQM.y <- mean(y[(y > quantile(y)["25%"]) & (y < quantile(y)["75%"])])
  IQM.e <- mean(e[(e > quantile(e)["25%"]) & (e < quantile(e)["75%"])])
  test <- data.frame(
    var = c("x", "y", "e"),
    IQM = c(IQM.x, IQM.y, IQM.e)
  )
  return(test)
}
