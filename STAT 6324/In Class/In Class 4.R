#Q1
data(cars)
?cars
head()
head(cars)
plot()
plot(cars)
doTryCatch(return(expr), name, parentenv, handler)
?plot
plot(speed, dist)
plot(cars$speed, cars$dist)
plot(cars$dist, cars$speed)
plot(cars$speed, cars$dist, xlab = "Speed")
plot(cars$speed, cars$dist, xlab = "Speed", ylab = "Stopping Distance")
plot(cars$speed, cars$dist, ylab = "Stopping Distance")
plot(cars$speed, cars$dist, xlab = "Speed", ylab = "Stopping Distance")
plot(cars$dist, cars$speed, main = "My Plot")
plot(cars, main = "My Plot")
plot(cars, subtitle = "My Plot")
plot(cars, sub = "My Plot Subtitle")
plot(cars, col =2)
plot(cars, xlim = c(10, 15))
plot(cars)
plot(cars, pch = 2)
data(mtcars)
?boxplot
boxplot(mpg ~ cyl, data = mtcars)
hist (mtcars$mpg)

#Q2
x<-seq(0,30,length=10)
y<-rep(1/30,10)
plot(x,y,type="l",lwd=3,xlim=c(0,30),ylim=c(0,0.035))
title(main = "Uniform distribution(0,30)",
      sub = "lwd=3,shaded color=grey40,text at(23,0.025),cex=1.2")
x <- c(5,15,15,5)
y <- c(0, 0, 1/30, 1/30)
polygon(x,y,col=40)
text(23, 0.025, labels = "Shade Area= Pr(5<X<15)", cex = 1.2)

#Q3
x <- seq(0,1,length=10)
y <- 2*x
plot(x,y,type="l",lwd=2,ylab="f(x)")
title("Probability Density Function f(x)= 2x, 0 < x < 1")
x <- c(0, 0.5, 0.5)
y <- c(0, 0, 1)
polygon(x, y, col = "green")
arrows(x = 0.2, y = 1.4, x1 = 0.3, y1 = 0.2, col = 'red', lwd = 3)
text(c(0.1, 0.22, 0.3), c(1.5, 1.5), labels = c(expression(integral(2*x*dx, 0, 0.5) =="["),
                                           expression(x^2),
                                          expression("]"[0]^(1/2) == frac(1,4))))


