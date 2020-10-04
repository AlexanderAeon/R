#1
data("rock")

#2
?rock
# Перевод излишен
#[,1]	area	area of pores space, in pixels out of 256 by 256
#[,2]	peri	perimeter in pixels
#[,3]	shape	perimeter/sqrt(area)
#[,4]	perm	permeability in milli-Darcies

#3
str(rock)
# В фрейме 4 числовых стобца. В фрейме нет переменных-факторов.

#4
head(rock, 5)
tail(rock, 5)
summary(rock)

#5
colnames(rock)

#6
rock # все показатели фрейма количественные
