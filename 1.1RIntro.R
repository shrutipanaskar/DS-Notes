"Hello... Welcome to R Programming"
'ExcelR'
20
8.0
8.7
#This is a comment

name <- "Amit"
name <- "Snehal"
age <- 25
num <- "20"
age+5
num+5

text <- "Excellent"
paste("ExcelR is",text) #concatenate/combine text using paste()function

#Assign same value to multiple variables in one line
var1 <- var2 <- var3 <- "Orange"

#legal variable names
myvar <- "snehal"
my_var <- "meenal"
MYVAR <- "ganesh"
myVar <- "manisha"
myvar2 <- "lathika"
this.year <- 2022
.myvar <- "sagar"

#illegal 
2myvar <- "s"
my-var <- "s"
my var <- "s"
_my_var <- "s"
my_v@r <- "s"

TRUE <- "s"

#Data Types in R
# NUmeric/Float - decimal whole +ve -ve
x <- 10.5
class(x)

#Integer - whole +ve -ve L
y <- 1000L
class(y)

#character/string
x <-"R is exciting"
class(x)

#logical/boolean
x <- TRUE
class(x)
x <- F

3>5
5>3
5==5
1 != 6


#Arithmatic Operators
x <- 20
y <- 3

x+y
x-y
x*y
x/y #float/decimal result
x^2
x %% y #modulus
x %/% y #integer division

2 * pi *6378
??Constants

#Assignment operator
x <- 50
50 -> x

#Built in Math Functions
max(25,78,10)
min(2,10,3)
sqrt(25)
abs(-4.5)


#Data structure: vectors, DataFrames
#Homogeneous vectors
#vector of string
fruits <- c("Banana","Apple","Orange","Strauberry")
class(fruits)

#vector of numerical
n1 <- c(1,2,3,4)
n2 <- c(T,F,TRUE,FALSE)
class(n1)
class(n2)

#Heterogeneous
mix <- c(81,5.2,TRUE,"mango",5L,F)
class(mix)


x <- c(2,0,0,4)
y <- c(1,9,9,9)

x+y
x*5
(x+y)*1.5


#sequence
1:1000
40:45
seq(1,50,5) #start value,end value, step/increment value
seq(1,50,by=3)

n1 <- 1.5:6.3 #default increment value is 1
n1

n1 <- 1.5:6.5
n1