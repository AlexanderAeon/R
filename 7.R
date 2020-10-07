png(filename = 'plot-ex07.png', width = 1000, height = 1200, bg = 'transparent')
par(mfrow = c(2, 1))

d <- read.csv("data_ex-07.csv", stringsAsFactors = F, row.names = 1)
lbls <- c(colnames(d), "Другие")
lbls <- lbls[-1]

#2007
l <- c(d[1, T, drop = F]) # список 2007
v <- unlist(l, use.names = F) # достаем числа из списка
v[6] <- 2*v[1] - sum(v) # добавляем другие доходы
v <- v[-1] # убираем Доходы-всего

pie(v, lbls, main = "Доход в Магаданской области, 2007")

#2017
l <- c(d[2, T, drop = F]) # список 2017
v <- unlist(l, use.names = F) # достаем числа из списка
v[6] <- 2*v[1] - sum(v) # добавляем другие доходы
v <- v[-1] # убираем Доходы-всего

pie(v, lbls, main = "Доход в Магаданской области, 2017")

par(mfrow = c(1, 1))
dev.off()
