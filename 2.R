#1
regions <- c("Московская область", "Тульская область")
years <- c(2015, 2016)
months <- c("январь", "февраль", "март", "апрель", "май", "июнь", "июль", "август", "сентябрь", "октябрь", "ноябрь", "декабрь")
comb.num. <- length(regions)*length(years)*length(months) # 2*2*12=48
region <- rep(regions, comb.num./length(region))
years <- rep(years, comb.num./length(years))
months <- rep(months, comb.num./length(months))
file.names <- paste(region, paste(years, paste(months, ".csv", sep = ""), sep = "_"), sep = "_Y")

#2
n <- 27
flow <-  c("импорт", "экспорт", "реимпорт", "реэкспорт")
okpd.code <- 22
c <- length(regions)*length(flow)*length(okpd.code) # 2 * 4 * 1 = 8
num <- seq(from = n, to = n + (c - 1))
regions <- rep(regions, c/length(regions))
flow <-  rep(flow, each = c/length(flow))
df.seq <- data.frame(num, region, flow, okpd.code)

#3
set.seed(n*10)
df.rand <- data.frame(x.n = rnorm(9, 25, 8), x.u = runif(9, -3, 16), x.t = rt(9, 8))
