#1
set.seed(26)
x <- runif(300, 4, 15)
e <- rnorm(300, 0, 2)
y <- 0.75*x + e

#3
png(filename = 'plot-ex05.png', bg = 'transparent')

#2
layout(matrix(c(1, 2, 2,
                1, 2, 2,
                4, 3, 3), nrow = 3, byrow = T))
boxplot(y)
plot(x, y)
abline(v = median(x), lty = 5)
abline(h = median(y), lty = 5)
boxplot(x, horizontal = TRUE)

#3
dev.off()
