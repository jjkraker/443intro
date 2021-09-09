x = c(4:6,10:12)  # stored some vector of numbers in x
A = matrix(c(1:4,9:12),ncol=2)

# Example code line 
1+1
8*7

# Vectors and arrays 
# try typing y; what happens?
# y is not a defined variable

x = 7
x     # a single value can be stored in the location x

x = c(4:6,10:12)
x     # a "column vector", which is what the c() command denotes, stored in x

A = matrix(c(1:4,9:12),ncol=2)
A     # we can us the matrix function to store a two-dimensional array

# Data subsets
#this is a comment
print(c("x-vector is", x))
x[1]  # first element of x
x[1:3]  # first three elements of x
x[c(2,4)]  # second and fourth elements of x

pizza = c(9, 12, 15)  #call a variable whatever you like
pizza
piz_za = c(16,-3)  # adding symbols makes a new variable
piz_za
Pizza  = c(1, 8, -5)  # so does capitalization, importantly and annoyingly

A  # matrix
A[1:2,1]  # first two rows and first column
A[1:2,][,1]  # ditto
A[c(2,4),]  # second and fourth rows
A[,1]  # first column

# Manipulating variables 
x 
3*x
x-3

A
3*A
A-3

# Using data frames 
data(iris)  # this is a "base" data frame / set in R
iris[c(1, 51,101),]
iris$Sepal.Length[1:5]  # recognizes values

# try typing Sepal.Length; what happens when you try to run?

attach(iris)
Sepal.Length  # now connected
detach(iris)  # remember to detach when you are done with analysis, if you attach! 

#  Comparison operators 
data(iris)  # this is a "base" data frame / set in R
iris$Petal.Length
iris$Petal.Length > 1.5
iris$Petal.Length <= 1.5
iris$Petal.Length == 1.5
iris$Petal.Length != 1.5

#using the logical vector to subset
iris$Sepal.Length[iris$Petal.Length == 1.5]

#  Simple functions 
??"histogram"  # search for how to make a histogram

hist(x = iris$Petal.Length)  # make a histogram of Petal Lengths, all other arguments defaults
hist(x = iris$Petal.Length, breaks = 8)  # make a histogram of Petal Lengths, specifying 8 groups
hist(iris$Petal.Length, 8)  # make a histogram of Petal Lengths, requires that arguments be in correct order

# Practice Exercise 
#1.  Install the package **ISLR** on your computer (virtual or real).
#2.  Open the package with the *library* function, and look at a summary of the **Auto** data set.
#Use the dataset **Auto** in R:  
library(ISLR)
Auto[1:2,]

#a. open the help file on **Auto** and report the number of autos and the number of variables.
help(Auto)   # help file about Auto
dim(Auto)
names(Auto)


