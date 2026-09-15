x= c(5,10,15,20,25)
y = c(16,19,23,26,30)

sd_x=sd(x)
sd_y=sd(y)
sd_x
sd_y

var_x=var(x)
var_y=var(y)
var_x
var_y

cov_xy=cov(x,y)
cov_xy

cor_xy=(cov_xy)/(sd_x*sd_y)
covp_xy=cov(x,y,method="pearson");
covs_xy=cov(x,y,method="spearman")
covp_xy
covs_xy


x = c(1,2,3,4,5)
y = c(40,50,55,65,70)

reg=lm(y~x)
reg

data=mtcars;
slr=lm(mpg ~ wt, data=mtcars)
summary(slr)

plot(data$wt,data$mpg,pch="*",col="red")

newvalue=data.frame(wt=c(4,56,23,5,10))

abline(lm(mpg~wt, data=mtcars), col="blue")

pre=predict(lm(mpg~wt, data=mtcars), newdata=newvalue, interval='prediction')
pre



# data = mtcars
# slr = lm(data$mpg ~ data$wt)
# slr
# summary(slr)
# 
# plot(
#   mtcars$hp,
#   mtcars$mpg,
#   main="MPG VS horsepower",
#   xlab="Horsepower",
#   ylab="Miles per gallon",
#   pch="*" ,              # plot character
#   col="blue"
# )
# 
# abline(
#   lm(mpg ~ hp, data=mtcars), # for the albine directly pass the linear model into it
#   col="red",
#   lwd=2                    #line width
# )
# 
# newvalue= data.frame(wt=c(2,3,1,40,25)) ##data.frame is necessary and hte wt is the name for the col for which we are providing the values for
# pre=predict(lm( mpg ~ wt, data=mtcars ), newdata=newvalue, interval="prediction")#new data , interval
# pre




