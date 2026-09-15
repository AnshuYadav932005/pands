

# n <- 4
# p <- 0.5
# 
# dp2=dbinom(2,n,p);
# dp2
# 
# #at least two head
# at_least_two=1-pbinom(1,n,p) # till a particular value
# at_least_two
# 
# #to get the entire distribution 
# input = 0:n
# input
# 
# px=dbinom(input,n,p)
# px
# 
# expected_value= weighted.mean(value,input)
# expected_value
# 
# var= weighted.mean(input^2, px) - px^2;# here the x(input) is squared 
# var_2=var(input,px)
# var
# var_2
# 
# 
# plot(input,px, col="red", type="l")
# 
# #now the poisson probability now 
#   
# x <- 0:6
# f <- c(20, 28, 24, 15, 8, 4, 1) 
# lambda=weighted.mean(x,f)
# n <- sum(f)
# 
# px= dpois(x,lambda)
# expected= px* n;
# expected 
# 
# result <- data.frame(x=x, frequency=f, probabiltiy=px, expected=expected)
# result
# 
# barplot(rbind(f,expected),beside=TRUE, names.arg=x , col=c("red","blue"))
# 

# BINOMIAL DISTRIBUTION

n <- 4
p <- 0.5

x <- 0:n

observed <- c(0, 1, 2, 3, 4)

px <- dbinom(x, n, p)

plot(x, px,
     type = "l",
     col = "red",
     main = "Binomial Distribution",
     xlab = "Number of Success",
     ylab = "Probability")

barplot(rbind(observed, px),
        names.arg = x,
        col = c("red", "blue"),
        beside = TRUE,
        legend.text = c("Observed", "Probability"),
        xlab = "Number of Success",
        ylab = "Probability")




















random_values <- 0:20

lambda <- 0.1

probability_values <- dpois(random_values, lambda)

plot(random_values, probability_values,
     type = "l",
     main = "Poisson Distribution",
     xlab = "random values",
     ylab = "Probability values")


x <- 0:6
f <- c(20, 28, 24, 15, 8, 4, 1) 

plot(x,f,type ="o")
n=sum(f)

lambda=weighted.mean(x,f);
px=dpois(x,lambda)*n
plot(x,px,type="l")

barplot(rbind(f,px),names.arg=x, beside=TRUE ,col=c("red","blue"), legend.text= c("Observed", "Fitted"))







