#Relational Operators with Vectors
marks<-c(60,70,80,50,90)
marks>50

marks[marks>50]
marks==80

names<-c("Snehal","Pooja","Vidya","Ganesh")
"Pooja" %in% names
"Meenal" %in% names
"Mona" %in% names


#Slicing
marks
marks[3:7]
marks[4]
marks[-3]<-

price<-c(2999,449,29,650,2800192,9398,373,474,4745)


#Basic Functions on Factors
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
mode(price)


#data frames
#slicing data frames
a<-c(42,18,91,87,66)
b<-c("p","q","r","s","t")
data.frame(a,b)
df<-data.frame(a,b)


df1<-data.frame(
  Training=c("strength","stamina","Other"),
  Pulse=c(100,150,120),
  Duration=c(60,30,45)
)
df1

df1[,1]#all rows, 1st column
df1[2,]
df1[,]

df1$Training

df2<-data.frame(height=c(150,160),weight=c(65,72))

food<-data.frame(name=c("pav bhaji","paneer","kaju katli","butter chicken","gulab jamun","mutton biryani"),
                 type=c("veg","veg","Veg","nonveg","veg","nonveg"),
                 taste=c("spicy","spicy","sweet","spicy","sweet","spicy"),
                 price=c(120,235,420,340,90,315))
food

#Rows with food type: veg
food[food$type=="veg",]

#food names and prices of all nonveg items

food[food$type=='nonveg',c(1,4)]

#or
food[food$type=='nonveg',c("name","price")]

#all spicy food with price less than 300
food[food$taste=='spicy'& food$price<300,]


#Orange,mtcars are built in data set. Learn with this dataset.
Orange
mtcars

dim(mtcars) #no of rows and no of columns
nrow(mtcars) #no of rows
ncol(mtcars) #no of columns 
str(mtcars) #structure-col names data type and values
summary(mtcars) #
help(mtcars) #info of dataset
mtcars$cyl #indivisual col cyl values
table(mtcars$cyl) #there are 11 cars having 4 cylinder
table(mtcars$gear)

#USArrests - another dataset
USArrests
Help("USArrests")
View(USArrests) #dataset opens in new windows in table structure

head(USArrests) #by default shoWS first 6 records
tail(USArrests)
head(USArrests,8)


#check all available dataset
data()


