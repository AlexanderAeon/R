ExFive <- function(nMean, nSD, uMin, uMax) {
  set.seed(26) # ядро ГСЧ - номер варианта
  e <- rnorm(300, nMean, nSD) # количество наблюдений равно 300
  x <- runif(300, uMin, uMax) # по условию задачи
  y <- 0.75*x + e
  
  # создаем необходимый макет графика
  layout(matrix(c(1, 2, 2,
                  1, 2, 2,
                  4, 3, 3), nrow = 3, byrow = T)) 
  boxplot(y) # ящик с усиками
  plot(x, y) # график
  abline(v = median(x), lty = 5) # нанесение медиан пунктирной линией
  abline(h = median(y), lty = 5)
  boxplot(x, horizontal = TRUE) # ящик с усиками 2
}