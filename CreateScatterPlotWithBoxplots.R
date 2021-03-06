# Функция генерирует случайные числа по заданным параметрам распределений.
# Затем, функция создаёт изображение, содержащее диаграмму рассеивания,
# медианы, нанесённые пунктирной линией, и два ящика с усами.
#
# Аргументы:
# nMean - среднее значение для нормального распределения
# nSD - стандартное отклонение для нормального распределения
# uMin - минимальное значение для непрерывного равномерного распределения
# uMax - максимальное значение для непрерывного равномерного распределения
#
CreateScatterPlotWithBoxplots <- function(nMean, nSD, uMin, uMax) {
  set.seed(26) # ядро ГСЧ - номер варианта
  e <- rnorm(300, nMean, nSD) # количество наблюдений равно 300
  x <- runif(300, uMin, uMax) # по условию задачи
  y <- 0.75*x + e
  
  # создаем необходимое полотно графика
  layout(matrix(c(1, 2, 2,
                  1, 2, 2,
                  4, 3, 3), nrow = 3, byrow = T)) 
  boxplot(y) 
  plot(x, y) 
  abline(v = median(x), lty = 5) # нанесение медиан пунктирной линией
  abline(h = median(y), lty = 5)
  boxplot(x, horizontal = TRUE)
}
