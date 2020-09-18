#Problem 1

#A
x <- -abs(seq(-7,7)) + 8

#B
x <- rep(1:5,seq(1,5))

#C
x <- rep(seq(1,11,by=4), each = 4) + c(0,0,0,2)

#D
x <- rep(seq(20, 4, by = -4), seq(1,5))

#E
x <- 0.1^seq(3,39,by=3) * 0.2^seq(1,37, by=3)

#F
matrix(c(0,1,1,1,0,1,1,1,0), nrow = 3, ncol = 3)

#G
matrix(c(0,2,3,0,5,0,7,0,0), nrow = 3, ncol = 3)

#H
x <- abs(seq(-4,4)) + 1
matrix(c(x[5:9], x[4:8], x[3:7], x[2:6], x[1:5]), nrow = 5)

#Problem 2
#lapply and sapply
head(flags)
dim(flags)
class(flags)
cls_list <- lapply(flags, class)
cls_list
class(cls_list)
as.character(cls_list)
cls_vect <- sapply(flags, class)
class(cls_vect)
lapply(flag_colors, sum)
sapply(flag_colors, sum)
sapply(flag_colors, mean)
sum(flags$orange)
flag_colors <- flags[, 11:17]
head(flag_colors)
flag_shapes <- flags[, 19:23]
lapply(flag_shapes, range)
sapply(flag_shapes, range)
shape_mat <- sapply(flag_shapes, range)
shape_mat
class(shape_mat)
unique(c(3, 4, 5, 5, 5, 6, 6))
lapply(flags, unique)
unique_vals <- lapply(flags, unique)
unique_vals
unique_vals <- sapply(flags, length)
lapply(unique_vals, length)
sapply(unique_vals, length)
sapply(flags, unique)
lapply(unique_vals, function(elem) elem[2])

#vapply and tapply
sapply(flags, unique)
vapply(flags, unique, numeric(1))
ok()
sapply(flags, class)
vapply(flags, class, character(1))
?tapply
table(flags$landmass)
table(flags$animate)
tapply(flags$animate, flags$landmass, mean)
tapply(flags$population, flags$red, summary)
tapply(flags$population, flags$landmass, summary)

#Problem 3
#A
auto.stats <- read.csv(file.choose())

#B
apply(auto.stats, 2, max, na.rm = TRUE)

#C
sapply(auto.stats, mean, na.rm = TRUE)

#D
cargrp <- cut(auto.stats[,9], c(0, 2500, 3500, 5000), labels = c("Small", "Medium", "Large"))
tapply(auto.stats[,9], cargrp, median)

#E
with(auto.stats, tapply(Miles.per.gallon, list(cargrp, Repair..1978.), mean))

#Problem 4
library("MASS")
Rabbit
Treatment <- unstack(Rabbit, Treatment ~ Animal)[,1]
Dose <- unstack(Rabbit, Dose ~ Animal)[,1]
BPchange <- unstack(Rabbit, BPchange ~ Animal)
Rabbit.ex <- BPchange
Rabbit.ex$Treatment <- Treatment
Rabbit.ex$Dose <- Dose
col_order <- c("Treatment", "Dose", "R1", "R3", "R3", "R4", "R5")
Rabbit.ex <- Rabbit.ex[,col_order]
Rabbit.ex

#Problem 5
xx <- rep(1:10, 10)
yy <- rep(1:10, rep(10,10))
plot(xx, yy, col = colors()[1:100], pch = 15, cex = 5, xaxt = "n", yaxt = "n", xlab = "", ylab = "",
     xlim = c(-1,11), ylim = c(-1,11), axes = F)
axis(1, seq(0,11), tick = TRUE, line = seq(0,11), pos = -2, outer = T)
axis(2, seq(0,11), tick = TRUE, line = seq(0,11), pos = -2, outer = T)
mtext("This is mtext at side 1, line = −1. Use pch = 15, cex = 5", side = 1, line = -1)
text(xx ~ yy, labels = t(matrix(seq(1,100), ncol = 10)), cex = 1.2)
title(main = "Display the first 100 colors in colors()", 
      sub = "This is a subtitle. Use cex = 1.2 for the numbers")

