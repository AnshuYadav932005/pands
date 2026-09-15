# EXP 1

# Vectors
v1 <- c(3,1,TRUE,3+2i)
v1

v2 <- c(3,2,4,5)
v2

v3 <- c(3,-4,32,4+4i)
v3


# Vector operations
A <- c(4,5,2,1)
B <- c(9,1,3,6)

A+B
A-B
A*B
A/B

A%%B
A%/%B


# Comparison operators
A>B
A<B
A==B
A>=B
A<=B
A!=B


# Logical operators
s1 <- c(TRUE)
s2 <- c(FALSE)

s1 && s2
s1 || s2


# Matrix
matA <- matrix(c(1,2,3,4,5,6),nrow=3,ncol=2)
matA

matA <- matrix(c(1,2,3,4,5,6),nrow=3,ncol=2,byrow=TRUE)
matA


# Combining vectors
matB <- cbind(c(1,2),c(3,4),c(5,6))
matB

matC <- rbind(c(1,2),c(3,4),c(5,6))
matC


# Matrix indexing
matC[3,1]
matC[2,2]

matC[1,1]
matC[,1]

matC[,1:2]
matC[1:2,]


# Another matrix
matD <- matrix(1:18,nrow=2)
matD

matD[c(1,2),c(2,8)]


# Mean
y <- c(1,2,3)
mean(y)