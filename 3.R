#1
frame <- read.csv("FGLab.csv", stringsAsFactors = F, row.names = 1)
select <- c('Имя', 'Рост')
newframe <- frame[frame$Пол == "муж", select]

#2
newframe1 <- frame[c(-2, -6), 'Имя', drop = F]

#3
mean(frame[frame$Пол == "жен", "Рост"])

#4
frame[frame$Возраст == min(frame[,"Возраст"]) & frame$Пол == "муж", "Имя"]
