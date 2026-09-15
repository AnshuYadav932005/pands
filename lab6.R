# Set up
x = 0:40
m = 20
s = 5

px=dnorm(x,m,s)
px
plot(x,px,type="l")



x1=seq(0,15)
y1=dnorm(x1,m,s)
polygon(c(0,x1,15),c(0,y1,0),col="red")

x2=seq(15,25)
y2=dnorm(x2,m,s)
polygon(c(15,x2,25),c(0,y2,0),col="blue")

x3=seq(25,40)
y3=dnorm(x3,m,s)
polygon(c(25,x3,40),c(0,y3,0),col="green")

p1=pnorm(15,m,s)
p2=pnorm(25,m,s)-pnorm(15,m,s)
p3=1-pnorm(25,m,x)

df=dataframe(p1,p2,p3)
df