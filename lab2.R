empid=c(1,2,3,4,5,6,7,8,9,10)
empid

age=c(30,25,40,34,55,50,35,23,54,44)
age

gender=c(1,0,1,0,1,1,1,1,0,1)
gender

status=c(1,1,2,2,1,2,1,2,2,1)
status

empinfo=data.frame(empid,age,gender,status)
empinfo

nrow(empinfo)
ncol(empinfo)

empinfo$gender=factor(empinfo$gender, level=c(0,1), label=c("Male","Female"))
empinfo

empinfo$status=factor(empinfo$status,
                      levels=c(1,2),
                      labels=c("Staff","Faculty"))
empinfo

summary(empinfo)

empinfo$age
empinfo[,"age",drop=FALSE]

empinfo[,1]
empinfo[,2]

empinfo[1,]
empinfo[2,]

empinfo[3,3]

empinfo[1:5,2:3]

plot(age,type="o",
     main="Age of subjects",
     xlab="Employee order",
     ylab="Age in years",
     col="blue")

Table1=table(empinfo$gender)
Table1

pie(Table1)

Table3=table(empinfo$gender,empinfo$status)
Table3

barplot(Table3,beside=TRUE,col=c('blue','red'),legend.text=c("Staff","Faculty"))

