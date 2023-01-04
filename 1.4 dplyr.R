#deplyr package: is a structure of data manipulation.
#Very useful in advanced data analysis task
#does not provide any "new" functionality in R 
#In  the sense that everything dplyr does could already be done with base R,
# but it greatly simplifies existing functionality in R.





install.packages("dplyr")
library(dplyr)

##nycflights13 package is only for the dataset that we are going to study
install.packages("nycflights13")
library(nycflights13)

#find dimensions of flights, see flight, see flights as a table in different tab,
#see first and last rows, check no of rows and columns, check structure 
#display names of columns 


dim(flights)
View(flights)
head(flights,20) #first 20 records
tail(flights) #by default 6 records
nrow(flights)
ncol(flights)
str(flights)
names(flights) #OR colnames(flights)
help(flights)


#----filter out records based on some criteria- display records  of 1st Jan
filter(flights, month==1, day==1)

filter(flights, month== 12, day==13)




#Pipe/Chaining operator %>%(output of 1 as input to other function)

flights %>% filter(month==10, day==8)

#eg. log(sin(exp(cos(x))))
# x %>% cos() %>% exp() %>% sin() %>% log()

#eg. gun(fun(x,y),z)
#x %>% fun(y) %>% gun(z)


##- arrange first by year then month then day in ascending order 
arrange(flights, year, month, day)

##------
arrange(flights, desc(arr_delay))

##-----
#select columns by names
select(flights, year, month, day)
#select all columns between year and day (inclusive)
view(flights)
select(flights, year:day)
#select all columns except those from year to day(inclusive)
select(flights, -(year:day))



#Create/add new columns-------
newdf<-mutate(flights,
              gain= arr_delay - dep_delay,
              speed = distance/air_time * 60
              )

View(newdf)

##--- only output... not storing
mutate(flights,
       gain= arr_delay - dep_delay,
       speed = distance/air_time * 60,
)


##---------
sample_n(flights, 10) #select any 10 random samples
sample_frac(flights, 0.01) # 1% records to be selected at random


##------
flights$dest
unique(flights$dest)
length(unique(flights$dest))


##-----
# another example
dfdept <- data.frame(name=c("a","b","snehal","saloni","sakshi","shruti","avantika","pooja","vaishnavi","anamika"),
                     dept=c("trainer","Admin","trainer","trainer","sales","mkt","sales","HR","sales","mkt"),
                     salary=c("90000","80000","85000","75000","60000","80000","75000","65000","85000","82000"))
dfdept

depgrp <- group_by(dfdept, dept)
summarise(depgrp,
          sal = n_distinct(salary),
          depgrp = n()
          )

#year represents the integer 1
 select(flights,year)
 select(flights,3)
 
 ##-------
 filter(
   summarise(
     select(
       group_by(flights, year, month, day),
       arr_delay, dep_delay
     ),
     arr = mean(arr_delay, na.rm = TRUE),
     dep = mean(dep_delay, na.rm = TRUE)
   ),
   arr > 30 | dep > 30
 )
 
 ###################################
