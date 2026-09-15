#lab 3

x= mtcars$hp
z= mtcars$wt
y = mtcars$mpg

sd_x=sd(x)
sc_y=sd(y)

var_x=var(x)
var_y=var(y)

cov_xy=cov(x,y)

cor=cov_xy/(var_x*var_y)

model=lm(mtcars$mpg~mtcars$hp)
model

plot(x,y, col="red")
abline(lm(mpg~hp,data=mtcars),col="blue", lwd=2)

newvalue= data.frame(wt=c(2,3,46,24,12))
pre=predict(lm(mpg~ wt,data=mtcars), newdata=newvalue, interval="prediction")
pre

