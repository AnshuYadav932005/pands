x1 = c(30,40,20,50,60,40,20,60)
x2 = c(11,10,7,15,19,12,8,14)
y = c(110,80,70,120,150,90,70,120)

# reg=lm(y~x1+x2)
# summary(reg)
# 
# library(scatterplot3d)
# 
# graph =scatterplot3d(x1,x2,y, color="red", pch=4, xlab='x1', ylab='x2', zlab='y',
#               main='Multiregression Model')
# 
# graph$plane3d(reg, col="red",lty=4)# the model of the 3d is flatten and the reg model is passed into it
# 
# data(mtcars)
# head(mtcars)
# 
# model= lm(mpg ~ wt + hp, data=mtcars)
# summary(model)
# 
# newvalue= data.frame(wt= 4, hp= 32)
# 
# pre=predict(model, newdata=newvalue , interval='prediction' )
# pre

reg=lm(y~x1+x2)
coef(reg)

library(scatterplot3d)

graph=scatterplot3d(x1,x2,y,pch="+",xlab="x1",ylab="x2", zlab="y",main="multi linear regression")

graph$plane3d(reg,col="blue", lty=3)

newvalue=data.frame(x1=2,x2=3)

pre=predict(reg,newdata=newvalue, interval="prediction")
pre


