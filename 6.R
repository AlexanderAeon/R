#3
png(filename = 'plot-ex05.png', bg = 'transparent')

#1
par(mfrow = c(2, 1))
hist(x, freq = F, col = 'grey')
curve(dunif(x, 4, 15), col = "darkblue", lwd = 2, add = T)
lines(density(x), col = "red", lwd = 3)

#2
hist(e, freq = F, col = 'grey')
#аргумент xname необходим функции curve для корректной работы с переменной e
curve(dnorm(e, mean = mean(e), sd = sd(e)), col = "darkblue", lwd = 2, add = T, xname = "e")
lines(density(e), col = "red", lwd = 3)
par(mfrow = c(1, 1))

#3
png(filename = 'plot-ex05.png', bg = 'transparent')
