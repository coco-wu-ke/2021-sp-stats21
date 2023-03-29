# STATS 20 REVIEW PRACTICE NOTE
12 %/% 5 # quotient 
q
final_balance <- function(initial){
  interest_rate <- 0.25/100
  years <- 20
  final <- initial * (1 + interest_rate)^years
  final 
}

final_balance(5000)
num <- c(1,5,6,3,7)
park <- c("jiwon","emma","coco")
dat <- c(TRUE,T,F,T,FALSE)
mode(num) 
mode(park)
mode(dat)
mode(c(num,park))
mode(c(num,dat))
c(num,park)
c(num,dat)
seq(1,10,2)
seq(1,10,length = 5)
seq(1, by=5, length=5)
pi:10
0:0
0:0.0001
rep(seq(1,by=5,length=10),rep(3,10))
running_times <- c(51,40,57,34,47,50,50,56,41,38)
running_times[1:10]
running_times[-(1:5)]
running_times[0]
running_times[]
good <- numeric(4)
good[1:2] <- c(4,5)
good
x = c(2,seq(3,by=4,length=9))
y = rep(seq(2,10,length=5),2)
x
y
cumsum(x)
sort(x,decreasing = TRUE)


variance <- function(x){
  sum_sq_dev <- sum((x-mean(x))^2)
  var <- sum_sq_dev / (length(x) - 1)
  var
}
variance(running_times)
var(running_times)
running_times <- c(running_times[1:5],NA,running_times[6:10])
running_times
mean((running_times), na.rm = TRUE)
round(49 * (4 / 49)) == 4 #ronded result is TRUE
49 * (4 / 49) == 4 #exact result is FALSE
one_ten <- 1:10 #integer
seq_ten <- seq(10) #integer
identical(one_ten,seq_ten)
is.na(c(4,7,NA,NaN,Inf)) #is.na returns TRUE if na and nan
is.null(running_times) #is.null returns TRUE only if all elements are NULL
is.nan(c(4,7,NA,NaN,Inf)) #is.nan returns TRUE only if nan

running_times[running_times <= 35]
running_times[c(TRUE,FALSE)] # extract odd-indexed values
which(running_times>=50) #extract index
running_times[running_times >= 50]

some_nums <- c(4,1,2,6,8,5,3,7)
some_nums > 3
which(some_nums > 3)
some_nums > 4 & some_nums < 6
!(some_nums > 4 & some_nums < 6)

A <- matrix(1:6,nrow=2,ncol=3)
A
B <- matrix(1:9,nrow = 3,byrow = TRUE)
B
dim(A)[1]
attributes(A) # matrices have "dim" attribute
attributes(1:10) # vectors don't have attributes -> NULL
mode(A) # mode -> numeric/character/logical
typeof(A)# typeof -> integer/double/character/logical
class(A) # class -> integer/numeric/matrix/list
class(c(1,4,5)) 
length(attributes(A)) 
length(A) # matrix is stored as integers so # of elements 
rownames(A) <- c("JIWON","EMMA")
colnames(A) <- c("Income","height","weight")
A
attributes(A)
dimnames(A) # rownames and colnames 
dimnames(B) # NULL
dimnames(A) <- list(NULL,NULL) # remove rownames and colnames to convert into a vector
dimnames(A)
dimnames(A) <- list(c("JIWON","EMMA"), c("Income","height","weight")) # convert a vector into a matrix by adding dimnames

A[2,2]
A[-2,-3]
A[1,]

C <- matrix(rep(1:3,2),nrow = 2,ncol = 3)
C
A
C ^ A
diag(4)
diag(0:3)
cbind(diag(0:3),0)
A %*% B
solve(diag(3))

group <- c("control","treatment","control","treatment","treatment")
group <- factor(group) # a factor is not a character vector since it doesn't have quotation mark
group + 1
as.integer(group) #a factor is internally stored as integers based on the index of levels
levels(group)
levels(group)[1] <- "placebo" #you can change the level value to a new value
table(group)
nlevels(group)
group[5] <- "control" #change a factor value to a non-level value is NOT allowed -> throw warning message
group #NA is generated since "control" is NOT one of the level values

hurricanes <- factor(c(3,1,2,5,3,3,5),levels=c(1,2,3,4,5))
hurricanes 
levels(hurricanes)[length(levels(hurricanes))+1] <- 0 #can manually add level values 
levels(hurricanes) 
hurricanes[1:5,drop = T] #drop unused level values in the factor vector
month.name
month_day <- rep(month.name,c(31,28,31,30,31,30,31,31,30,31,30,31)) 
f_month_day <- factor(month_day) # Convert into a factor levels(f_month_day)
levels(f_month_day) #not in chronological order but alphabetic order
f_month_day <- factor(month_day,levels = month.name,ordered = T)#now in chronological order
levels(f_month_day)

search() #see current loaded packages 
?mode # = help(mode) #search for functions in the currently loaded packages
??regression # = help.search("regression") # search for functions in all currently installed packages
library(help = "MASS") #get help info on a package
data(package = "MASS") #list all datasets in "MASS" pkg
library(MASS) # load the installed MASS package into search path
data(geyser) # load geyser dataset from MASS package and save a copy in global env     
data(trees)
head(trees,n=10)
head(1:20,n=-6) # display all 20 numbers except the last 6
tail(1:20,n=-6) # display all 20 numbers except the first 6

parks_df <- data.frame("Name"=c("Leslie","Ron","April"),"Height"=c(62,71,66), "Weight"=c(115,201,119),"Income"=c(4000,NA,2000))
parks_df
mode(parks_df) #data frame is internally stored as list
class(parks_df) #data frame is externally displayed as data frame
dim(parks_df)
dimnames(parks_df) #rownames are index, colnames are characters
attributes(parks_df) #names, class, rownames
parks_df2 <- rbind(parks_df,list("Ron",74,194,5000))
attributes(parks_df2)
length(attributes(parks_df2))
parks_df2[4,1] # character vectors in a data frame is automatically converted to factors
parks_df[,"Name"] # output is displayed as a factor 
parks_df[,"Name",drop = FALSE] # output still remains as a data frame
parks_df$Age <- c(34,46,14) #add a new variable "Age" with values 
parks_df[[2]][2] #extract the second entry from the second columm
parks_df[["Height"]] # double bracket only retains the content values
parks_df["Height"]# single bracket retains both data frame and values


Height #not found -> throw an error
attach(parks_df) #attach the data frame to R search path so variable names can be directly accessible
Height #now display as a vector but not shown in workspace
search() #parks_df is in search path now
detach(parks_df)  #detach the data from from R search path so variables are NOT accessible 
with(parks_df,Height[Height > 60]) #with can extract variable without [[]] or $
with(parks_df,Income[Height > 60])


#a list is an ordered collection of objects (=generic vectors)
L <- list(1:10,matrix(1:6,nrow=2,ncol=3),parks_df,list(1:5,matrix(1:9,nrow=3,ncol=3))) 
L[[4]][[2]][,3] #L[[4]] returns the 4th component (top level) of L
L[[2]][1,2]
parks_df[[2]] 
L[[1]][-c(2,3)] #[[]] can only extract a single top level but [] can extract multiple entries
L[[4]][[2]] # = L[[c(4,2)]]
L[3] # extract a list object
L[[3]] # extract a data frame object
L$`data frame` # =L[[3]] or L[["data frame"]]
length(L) # of top levels 
names(L) <- c("vector","matrix","data frame","list")
attributes(L)
names(parks_df) #names(df) is the same as colnames(df)
first.five <- 1:5
names(first.five) <- c("One","Two","Three","Four","Five") 
class(first.five) #still an integer but with names 
L$matrix <- NULL #delete the 'matrix' component 

#export and import R objects to a .R file
setwd("~/2021-sp-stats21/R")
# dump() can export a vector of R objects into an .R file
dump(list = c("parks_df","trees","L"),"dump_Rscript_demo.R") #dump(list = c(object1,object2), "filename.R")
rm(parks_df,trees,L)
#source() can import a .R file, console will only execute any print(command), but all objects in this script will appear in workspace
source("dump_Rscript_demo.R") 

#export and import workspace image as a .RData file 
save.image("Workspace.RData")
#rm(list=ls())
load("Workspace.RData")

# import and export tables/csv files
oz <- read.table("https://web.stanford.edu/~hastie/ElemStatLearn/datasets/LAozone.data", header=TRUE,sep=",", fill = TRUE)
head(oz)
dim(oz)
class(oz) # data frame
# count.fields("https://web.stanford.edu/~hastie/ElemStatLearn/datasets/LAozone.data",sep=",")
# count.field counts the number of entries separated by sep = in each line
setwd("~/2021-sp-stats21/R")
write.table(parks_df,"Parks.txt") #this data frame is exported as a text script. Table has whitespace as sep default. 
read.table("Parks.txt") # read this data frame from text script into R
write.csv(parks_df,"Parks.csv") #this data frame is exported as a csv file. CSV has , as sep default. 
read.csv("Parks.csv")

# str() and summary()
str(L)
summary(L)
summary(parks_df)

vec <- numeric(0)

for (i in 1:ncol(trees)) {
  vec[i] <- mean(trees[[i]])
}
vec
apply(trees,2,mean) #apply works for matrix or data frame
apply(parks_df,2,mean) #apply(df) will conerce df into a matrix first then apply the mean function
apply(trees,2,range) 
summary(trees) # output a summary table
apply(trees,2,summary) # output a named matrix
lapply(parks_df,summary) #input a list or df, output a list
lapply(trees,range) # output a list
sapply(trees,range) # output a matrix

fib <- numeric(0)
fib[1:2] <- c(1,1)
for(i in 3:20){
  fib[i] <- fib[i-1] + fib[i-2]
}
fib

x <- -1
y <- if(x > 1){
  x
} else {
  x + 1
}
y

while (x <= 20) {
  x <- x + 6
}
x

num <- -1
repeat{
  num <- num+6
  if(num > 20){break}
}
num




hist(trees$Girth,breaks = 6,freq = FALSE,col = c("yellow","blue"),xlab = "Girth of Black Cherry Trees", main = "Histogram of Girth\nof Black Cherry Trees")
boxplot(trees)

volume_index <- with(trees,Volume > mean(Volume))
plot(Girth ~ Height, data = trees)
points(Girth ~ Height, data = trees[volume_index,], pch = "+", col = "blue", cex = 1.5)


plot((1:10)^2)
text(6,50,expression(y == x^2))
locator(2)

plot((1:10)^2)
polygon(4)

pdf("trees-scatterplots.pdf")
plot(Girth ~ Height, data = trees)
dev.off()

sample(100,size = 10)
sample(100,size = 10,replace = TRUE)
runif(10,0,100)

set.seed(100)
waiting_time <- runif(10000,0,12)
hist(waiting_time,probability = TRUE,xlab="Waiting Times (in minutes)",col="purple")
mean(waiting_time)

set.seed(123)
prob <- numeric(10000)
for (i in seq_len(10000)) {
  prob[i] <- sum(runif(10000,0,12) >= 4 & runif(10000,0,12) <= 10) / 10000
}
hist(prob,probability = TRUE)
mean(prob)

pnorm(2) - pnorm(-2)



# dplyr package 
library(nycflights13)
library(dplyr)
# filter() select rows based on conditions 
flights %>% filter(year == 2013, day == 1)
# select() select columns 
select(flights, year, month)
# mutate() adds new columns but does not change the original flights df
mutate(flights, 
       diff_delay = arr_delay - dep_delay,
       ave_speed = distance / air_time
       )
#arrange() sorts df by columms in order
flights %>% arrange(year, dep_time)
#desc() sorts df by descending order 
flights %>% arrange(year, desc(month))
#summarise() takes all values in a column and condenses them into 1 number
summarise(flights, range(month))
#group_by() classifies a df into groups; summarise() then outputs desired stats for each group
by_tailnum <- flights %>% group_by(tailnum)
# by_tailnum is still a tibble/df object 
head(by_tailnum) 
attributes(by_tailnum) 
delay <- summarise(by_tailnum,
                   count = n(),
                   dist = mean(distance, na.rm = T),
                   arr_delay = mean(arr_delay, na.rm = T))
head(delay)
# delay is a tibble that contains all tailnum groups 
delay %>% filter(count > 20, dist > 2000)



#ggplot2
library(ggplot2)

#boxplot on selected rows and grouped by origins 
flights %>% 
  filter(arr_delay <= 200) %>%
  ggplot(aes(x = factor(month), y = arr_delay, color = origin)) + 
  geom_boxplot() + 
  ggtitle("Mild Delay by Month") +
  xlab("Month") +
  ylab("Arrival Delay (min)")

#point plot on selected rows and grouped by origins 
flights %>% 
  filter(month == 1, arr_delay > 100, dep_delay >100) %>%
  ggplot(aes(x = arr_delay, y = dep_delay, color = origin)) + 
  geom_point() + 
  ggtitle("Correlation between arrival and departure delay") +
  xlab("Arrival Delay (min)") +
  ylab("Departure Delay (min)")






