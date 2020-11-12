# Функция генерирует случайные числа по заданным параметрам распределений.
# Затем, функция создаёт графики, содержащие гистограммы x и e,
# на гистограммы нанесены теоретические функции плотности распределений
# и ядерные оценки плотностей. 
# Функция возвращает фрейм с описательной статистикой по переменным,
# рассчитанной вручную от исходных данных
# Аргументы:
# seed - источник энтропии
# min - минимальное значение для непрерывного равномерного распределения
# max - максимальное значение для непрерывного равномерного распределения
# mean - среднее значение для нормального распределения
# sd - стандартное отклонение для нормального распределения
# n = 300 - количество измерений каждой СВ
#
RandomiseAndReturnIQM_Frame <- function(seed, min, max, mean, sd, n = 300) {
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
  frameIQM <- data.frame(
    var = c("x", "y", "e"),
    IQM = c(IQM.x, IQM.y, IQM.e)
  )
  return(frameIQM)
}
