#Data Types in R 

my_num <- 15
company_name <- "National College of Ireland"
flag <- TRUE
my_int<- 5L
complex_num<- 5+3i

#Print results
my_num
company_name
flag
my_int
complex_num

# In R, you can create a variable var to store value 5 as follows:

var<- 5

#Let's create a variable num to store the value 101 and print it on the R Console. 
# Observe the code and click on submit to see the output.

# Assign the value 101 to num
num <- 101

# Print the value of num
num

# Lets create a variable total_students to store the total number of students in the class 

# Assign the value 60 to total_students

total_students <- 60

# Print the value of total_students
total_students

#Operators in R

# 1 --> Assignment Operator

# Assign 5 to my_variable using -> operator
5 -> my_variable
my_num <- 5

#Print my_variable
my_variable

# 2 --> Arithmetic Operator 

# Assign 8 to x and 15 to y
x <- 15
y <- 8

# Add x and y
x + y

# Subtract x and y
x-y

#Multiply x and y
x*y

# Divide y by x
y/x

# Modulus of y by x
y%%x

# Integer divide y by x
y%/%x

# Calculate exponent or y by x
y^x

# 3 --> Relational Operators 

# Assign value 25 to x and 15 to y
x <- 25
y <- 15

# Check if x is less than y
x<y 

# Check if x is greater than y
x>y

# Check if x is less than or equal to y
x<=5

# Check if x is greater than or equal to y
y>=2

#Check if x is equal to 25
x == 20

# Check if y is not equal to 10
y != 15

# 4 --> Logical Operators

# Vector x and y with values 
x = c(6, 1, TRUE, FALSE)
y = c(TRUE, TRUE, TRUE, FALSE, 8)

# Compare x and y using logical AND operator
x & y

#Compare x and y using logical OR operator
x | y

# Compare x and y using Element-wise logical AND operator
x && y

# Compare x and y using Element-wise logical OR operator
x || y

#Check NOT of vector x
!x

# Reserved Words and Constants
help("reserved")

## VECTORS IN R ##

# A vector is a one-dimensional array. The following are the examples for the numeric, character, and logical multi element vectors:

num_vector <- c(14, 36, -27, 37.5, 110)                     # numeric vector
char_vector <- c("john", "jonathan", "stefanos", "lizan")   # character vector
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)  #logical vector


# Creating Vectors
# 
# In R, vectors can be created using 3 different ways. They are:-

# Creating Vector using c()

x <- c(1,5,7,9,11)  #numeric vector
x
y <- c("lina", "steven","josh", "mitchell")  # char vector
y
z <- c(FALSE, TRUE, TRUE, FALSE)  #logical vector
z


# Creating vector using colon : operator
# The following code creates vector of 10 numbers from 1 to 10

vec2 <- 1:10
vec2

#Note: If the final element doesn't belong to the sequence, then it is discarded from the vector.
#For example: 

vec3 <- 1: 9
vec3


# Lets create a vector my_vect containing a sequence from 1.1 to 10.1

# Create my_vect
my_vect <- 1.1:10.1

# Print my_vect
my_vect

logical_vector <- c(1:10)
logical_vector>5

# Print value strictly above 5
logical_vector[(logical_vector>5)]

# Print 5 and 6
logical_vector <- c(1:10)
logical_vector[(logical_vector>4) & (logical_vector<7)]
logical_vector

#Creating a vector using seq()

vect2 <- seq(1,10)
vect2


#You can also increment the element by a particular value using the "by" parameter as follows:

vect3 <- seq(4,40,4)
vect3

#In the above code, a vector from 4 to 40 is created incrementing by 4, which is the third parameter.

# Exercise: Create a vector seq_vect from 5 to 20 incremented by 2.5

# Create vector seq_vect
seq_vect <- seq(5,20,2.5)

#Print seq_vect
seq_vect


#Naming a vector


eg_vector <- c("Sam Jones", "Cricket")
names(eg_vector) <- c('Name', 'Hobby')

eg_vector

#Vector Operations and Element Recycling

#Basically we can apply all arithmetic operations on vectors like we do with a variable but in terms of vector it is done member-by-member.

A <- c(1, 2, 3, 4, 5) 
B <- c(6, 7, 8, 9, 10)

# Adding vector A and B would result in the addition of each corresponding element in A and B such that :
# A+B <- c(1+6, 2+7, 3+8, 4+9, 5+10) 

A+B
A-B
A*B
B/A

# Vector Element Recycling:
# In R, when applying an operation to two vectors that are not of equal or same length, it automatically repeats, or recycles, elements of the shorter one, until it is long enough to match the longer Vector. 
# Suppose we have two Vectors c(1,3,5) and  c(2,4,8,10,12), 
# As you can see, the first one is shorter with only 3 elements. Now if we apply sum on these two, R will throw a warning message

c(1,3,5) + c(2,4,6,8,10, 15)   # Actual c(1,3,5,1,3) + c(2,4,6,8,10)

# Combining two vectors-- Value Coercion
# In R, when you combine two vectors of different types, the resulting vector element type would be coerced to the most flexible type. 
# Data types from least to most flexible are: logical, integer, double, and character.
# For example: When we try to combine a numeric and character vector, the resulting vector would be of character type. 
# typeof() or class() function can be used to check the data type of the vector.

A <- c(1,2,3,4,5)
B <- c('a','b','c','d','e')
new_vector<- c(A, B)
new_vector

typeof(A)
typeof(B)
typeof(new_vector)

#Using class() function
class(A)
class(new_vector)

#We can see that the resultant vector is a character vector.

#Accessing vectors elements:

# Let's create vectors milk_sale and yogurt_sale and assign names to it as shown below:

milk_sale <- c(2500,3000,2000,3500,5000,2200)
yogurt_sale <- c(1000,1200,1420,1000,1500,1200)
weekday_names <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" )
names(milk_sale ) <- weekday_names
names(yogurt_sale ) <- weekday_names

milk_sale

# to select the first element of the vector, you can type
milk_sale[1]  
# and second vector, you can type
milk_sale[2] 


#Define a new variable based on a selection
milk_thursday <- milk_sale [4]


#Selecting multiple Vector elements
milk_selection <- milk_sale[c(2,3,4,5)] 
milk_selection

#or it can be done as 
milk_selection <- milk_sale[2:5]
milk_selection

# Next, let's select the yogurt sales from Tuesday to Friday using c() and colon operator

#Selection using c()
yogurt_selection <- yogurt_sale[c(2,3,4,5)]  

# Selection using : operator
yogurt_selection <- yogurt_sale[2:5]


#Selecting vector elements by names
milk_name_selection <- milk_sale[c("Monday","Wednesday")]

# Curd sales selection using name
yogurt_name_selection <- yogurt_sale[c("Tuesday","Wednesday","Thursday")]

milk_name_selection

yogurt_name_selection

#Selecting vector elements using logical values

#To select the milk sales done on Monday and Saturday, you can type:
milk_selection <- milk_sale[c(TRUE, TRUE, FALSE, FALSE, FALSE, TRUE)]

# Curd sales selection using logical value
yogurt_selection <- yogurt_sale[c(TRUE, FALSE, FALSE, FALSE, FALSE, TRUE)]

milk_selection

yogurt_selection

#Sorting Vector Elements

num_vec <- c(20, 50, 22, 4, 17, 35)
sort(num_vec) 

char_vec<- c("Data","Vectors","Matrix", "Science", "Python")
sort(char_vec)





### List in R ###

# You can create a list using the list() function and print it by just typing the name of the list on the console.
# Create a list movie_detail consisting of vectors movie_name and tkt_price.

movie_name<- c("GOT", "Infinity War", "Avengers","Titanic" )
tkt_price <- c(150,250,200,100)

# Create list movie_detail
movie_detail <- list(movie_name, tkt_price)

# Print my_detail
movie_detail


#creating list with logical vector, character vector and numeric vector
log_vec <-  c(TRUE, FALSE, FALSE, TRUE, FALSE)
char_vec <- c("R", "Python", "Hadoop", "Spark")
numeric_vec <- c(3, 8, 2, 5)

create_list <- list(log_vec, char_vec, numeric_vec)

movie_name <- c(movie_name, "Social Dilemma")

typeof(movie_name)

tkt_price <- append(tkt_price, 50)

tkt_price

class(create_list)

# Naming a List
# Assign names to the list element
names(movie_detail) <- c("Title", "Price")

#Print results
movie_detail

#Merging List
#creating first list
first_list <- list(3, 8, 2, 5)
#creating second list
second_list <- list("R", "Python", "Hadoop","Spark")

#merging first and second list
final.list <- c(second_list, first_list)
final.list  


#Accessing list elements
# By Position using []
# By name of the element using $

#Accessing the movie_name by position 
movies_bypos <- movie_detail[1] 

movies_bypos

#Accessing the movie_name by name
movies_byname <- movie_detail$Title

movies_byname

#Manipulating List Elements  

#creating named list 
create_list <- list(c(TRUE, FALSE, FALSE, TRUE, FALSE), c("R", "Python", "Hadoop", "Spark"), c(3, 8, 2, 5))

#naming the list elements using names function
names(create_list) <- c("log_vec", "char_vec", "numeric_vec")
create_list

#adding a new element at the end of the list
create_list[4] <- "New List Element"

#accessing the last element in the list
create_list[4]         

create_list

#deleting the last element in the list
create_list[4] <- NULL       
create_list[4]

#updating 2nd element in the list
create_list[2] <- "Updated Character Vec"       
create_list[2]

create_list

create_list$numeric_vec

create_list

# Matrix in R

# A matrix is a two-dimensional representation of a collection of elements, that is, columns and rows. 
# A simple 2*2 matrix is represented as:
# Mat =  [1 2]
#        [4 6]


#Creating a matrix
# we can create a 2*3 matrix A by typing the below command:

eg_mat <- matrix(c(1:6), nrow= 2, byrow = TRUE, dimnames = list( c("Row1", "Row2"), c("Col1", "Col2", "Col3")))
eg_mat          


# Alternatively, for simplicity of code We can also do this by specifying the names of rows and columns explicitly as follows:

rnames <- c("Row1", "Row2")
cnames <- c("Col1", "Col2", "Col3")

A <- matrix(1:6, nrow=2, dimnames=list(rnames, cnames))

A

#Naming a Matrix

# dimnames(matrix_name) <- list( c(rownames, colnames))

B <- matrix(1:9, nrow=3)

B

row_names <- c("row1", "row2", "row3")
col_names <- c("col1", "col2", "col3")
dimnames(B) <- list(row_names, col_names)

B

# Suppose we want to record the temperature of 3 days in a week in three cities in Ireland with the below data as vectors
dub_temp<- c(16, 14, 22)
cor_temp<- c(13, 14, 15)
gal_temp<- c(10, 12, 11)


temp_matrix <- matrix(c(dub_temp ,cor_temp, gal_temp), nrow = 3, byrow = FALSE)

temp_matrix

# Create vectors rnames containing Mon, Tue, Wed
rnames <- c("Mon","Tue", "Wed") 

# Create vectors rnames containing Dublin, Cork, Galway
cnames <- c("Dublin","Cork","Galway")

#Assign names to the columns and rows
dimnames(temp_matrix) <- list(rnames, cnames)

# Print matrix and observe the results
temp_matrix


# Accessing matrix elements

# Temperature of Monday recorded for all the cities
mon_temp <- temp_matrix[ 1, ]
mon_temp

# Temperature of Galway on Tuesday
temp <- temp_matrix[3, 2]
temp

# Calculating the average temperature 
# rowSums() to calculate the sum of all the values in each row and 
# colSums() to calculate the sum of all the values in each column.

# Average temperature of each city
avg_temp <- colSums(temp_matrix / 3)
avg_temp

# Modifying a Matrix element
# Assign the value 33 as the temperature 
temp_matrix[3,2] <- 33

# Print and check the results
temp_matrix


#Transposing a Matrix
# The current matrix 
temp_matrix

# Don't you think the cities names would look better as row and the weekdays as columns?

# Create transpose and assign it to the same variable temp_matrix
tranpose_matrix <- t(temp_matrix) 
tranpose_matrix

# Adding Column and Row to the Matrix

# new_matrix<- cbind(old_matrix, vector) -- To add column
# new_matrix <- rbind( old_matrix, vector) -- To add row

# Add avg_temp as a column using cbind() and assign to temp_matrix
temp_matrix <- cbind(temp_matrix, avg_temp) 

# Print Temp_matrix and see the results
temp_matrix


#Arithmetic Operations on Matrix

# Similar to vectors, the standard operators like +, -, /, *, etc. work in an element-wise on matrices in R

# Create matrix A
A <- matrix(c(1:16), nrow=4)
A
# Add 6 to A
A+6


# Subtract 2 from A
A-2

# Divide A by 2
A/3



# Array in R

# Unlike matrices, Arrays are the data object which can store data in more than two dimensions. 
# For example − If we create an array of dimension (2, 3, 3) then it creates 3 rectangular matrices 
# each with 2 rows and 3 columns. Arrays can store only data type.

# Creating an array

vector1 <- c('green','yellow','red')
vector2 <- c(5,7,9,11,15,20,48)
final <- array(c(vector1,vector2),dim=c(2,3,3))
final


# Create two vectors of different lengths.
odd <- c(1,3,5)
even <- c(10,12,14,16,18,20)
typeof(odd)

# Take these vectors as input to the array.
result <- array(c(odd ,even),dim = c(3,3,2))
result

#Naming the column and row in an Array

#Give the col.names, row.names and matrix.names , assign names to the array result, columns, rows and matrix names.

# Create col.names, row.names and matrix.names vector
col.names <- c ("C1","C2","C3")
row.names <- c ("R1","R2","R3")
matrix.names <- c ("MATRIX1", "MATRIX2")

# Assign names to result array
dimnames(result)<- list(row.names, col.names, matrix.names)

# Print result array
result  


# Accessing Array Elements

# The Syntax for accessing any value in R array is :
#   array_name[row_position, column_position, matrix_level]

#Print 3rd element of 2nd row in 2nd matrix of the result array
result[ 2,3,2]    

# Print only the 3rd row in the First Matrix.
result[3, , 1]    

# Print only the 3rd column in the First Matrix.
result[ ,3, 1]    



# Factors:
#   
# Registration forms where there are only a finite number of choices to be filled in certain fields like 
# Gender( Male, Female, NA) or Title( Mr, Ms, Mrs).
# Factors are categorical variables in R, i.e. they take values from a limited known set of values. 

# Creating Factors 

# Factors are created using the factor() function 
# For example, below we have created factor for 4 colors. 

# Create a vector
colors <- c('black', 'black', 'yellow', 'red', 'yellow' ,'red', 'green')

# Create a factor object
factor_colors <- factor(colors)

# Print the factor
factor_colors

#Count the number of level
nlevels(factor_colors)


# Another example: Create a vector gender_vec that contains the gender of 5 different individuals 
# and then create a factor gender_factor containing the two levels Female and Male.

# Create vector gender_vec
gender_vec <- c("Male", "Female", "Male", "Male", "Female", "Male")

# Create factor gender_factor from gender_factor 
gender_factor <- factor(gender_vec) 

# Print gender_factor 
gender_factor

# Changing the Order of Levels

# We can change the order of the levels by specifying the levels parameter in the factor() function as the second argument.
# Value to this argument would be a vector with the levels in the desired order.

# Change the level to Male and Female as by default it is Female and Male
new_gender_factor <- factor( gender_vec, levels= c("Male", "Female"))

new_gender_factor

# Generating Factor Levels

# We can create levels automatically without manually giving value for each data point using the gl() function.
# It takes  two parameters as input, one for how many levels and other for how many times each level.
# gl( m, n, labels)

v <-gl(2, 3, labels=c("True", "False"))
print(v)


##### Dataframes in R -- Very Important ############


# # While doing the analysis, You will often work with data sets that contain different data types instead of only one. 
# So here the data frames comes into the picture A data frame is like a table or a two-dimensional array-like structure 
# in which each column contains values of one variable and each row contains one set of values from each column.                    
#                     
# Observe the inbuilt R data set or data frame mtcars. Just type mtcars and hit enter

# Run the command mtcars
mtcars

#Looking at data using basic functions   

head(df)
tail(df)

head(df, n=3)
tail( df, n=3)

# Call head and tail function on mtcars. Also print first 10 and last 10 observations of the mtcars dataset.

# Call head() on mtcars
head(mtcars)

# Call tail() on mtcars
tail(mtcars)

# Specify n in head() 
head(mtcars, n=10)

# Specify n in tail()
tail(mtcars, n=10)

# Getting the structure of Data frame

# Observe the structure of mtcars using the str().

# Call str() on mtcars
str(mtcars)

# Getting the summary of the Data.

# R has a function called summary() which give you statistics of your data all at once.
# Calculate the statistics of mtcars dataset using summary() function.
# Call summary() on mtcars

summary(mtcars)


# Creating a Dataframe

# df <- data.frame(df, stringsAsFactors = TRUE)

# Create a student data frame containing the student id, name and marks as shown below:

student.data <- data.frame(
  student_id = c (1:5),
  student_name = c("Sam","Den","Michael","John","Gary"),
  marks = c(62.5, 51.2,61.0,72.0,84.5))

student.data

# Another way is to Define two vectors and pass to data.frame as input .
# Lets create a student.df dataframe containing subject and percentage vector.

# create vectors subject and percentage
subject  <- c("English","Maths","Science","History")
percentage <- c(90,100,80,70) 

# Create student.df 
student.df <- data.frame(subject,percentage)

# Print student.df
student.df



# Rename the columns of Dataframe

# You can easily change the names of the column using the names() function. 

# Syntax -->  names(df) <- c(“col1_name”, “col2_name”, …)

# Rename the columns in student.df to course and score.

# Rename to course and score
names(student.df) <- c("Course", "Score")

# Print student.df
student.df



# Accessing the elements of a Dataframe

# Unlike str, you can also individually get the number of rows, columns and dimension of a dataframe using the following::

# nrow(df)           # Get the total number of observations
# ncol(df)           # Get the total number of variables
# dim(df)            # Get the dimension of dataframe
# df[ 1,2]           # Access first row and second column of the data frame
# df[,1]             # Access all the elements of the first column

# Total number of columns
ncol(mtcars)

# Total number of rows
nrow(mtcars)

# Get the dimension of mtcars
dim(mtcars)

# Access the entire third column of mtcars
mtcars[ , 3]

# Access the 5th element of the 7the column of mtcars
mtcars[ 5, 7]


# Row bind and column bind on data frame
# You can extend your data frame by adding rows and columns by required using rbind() and cbind() function.
# cbind( old_dataframe, vector_to_add)

# Add a column marks to our student.df data frame and assign it to new_student.df

# Create vectors subject and percentage
courses <- c("Python","Statistics","R","Tableau")
pass_percentage <- c(70,50,60,60) 

# Create student.df 
student.df <- data.frame(subject,percentage)

# Create vector marks and assign values
marks <- c(180, 200, 160,140)

# Add column marks to student.df
new_student.df <- cbind( student.df, marks)

#Print new_student.df
new_student.df


# syntax to use rbind() is:
# rbind( df1, df2)

#Create two data frame emp.df1 and emp.df2 containing emp_id, emp_name, emp_salary and merge them 

# Create first data frame emp_df1
emp_df1<- data.frame(
  emp_id = c(1,2,3), 
  emp_name = c("John", "Shovon", "Pietro"),
  salary = c(18000, 19000, 25000),
  stringsAsFactors = FALSE)

# Create second data frame emp_df2
emp_df2<- data.frame(
  emp_id = c(4,5,6), 
  emp_name = c("James", "Anton", "Sam"),
  salary = c(17000, 10000, 20000),
  stringsAsFactors = FALSE)

# Bind emp_df1 and emp_df2
emp_final_df <- rbind(emp_df1, emp_df2)

#Print emp_final_df
emp_final_df

# Extracting data from data frame

#You can extract a specific column from a dataframe  by column name using $(dollar) notation as
# df_name$column_name

# Extract salary column from the emp_final_df, you can type:
emp_final_df$salary

# You can also create a data frame of the two or more extracted columns.
# For Example:The following code snippet will create a new data frame emp_salary containing the emp_name and salary

emp_salary <- data.frame(emp_final_df$emp_name,  emp_final_df$salary)

#The syntax  for accessing the value from the data frame is: 
#df_name[Row,Column]

# If Row value is left empty, it will select all rows and if Column value is left empty, it will select all columns.
#Print 2nd to 5th row of the emp_salary, you can type:

emp_salary[2:5, ]


# Create a data frame emp_info which would contain the emp_id and emp_name from emp_final_df and extract 1st to 4th row of 1st to 2nd column.

# Create emp_info
emp_info <- data.frame(emp_final_df$emp_id, emp_final_df$emp_name)


# Extract 1st to 4th row of 1st to 2nd column
emp_info[1:4, 1:2]

#### Example of boolean syntax

### IF construct
# if(Boolean_expression) { ## THis returns the value in  yes or no..
#   This block of code will execute if the Boolean expression returns TRUE.
# }

#example of IF
x <- "MSc Data Analytics"
if(is.character(x)) {  
  print("X is a Character")
}

## Else construct
# if(Boolean_expression) {  
#   ## This block of code executes if the Boolean expression returns TRUE.
# } else {  
#   ##This block of code executes if the Boolean expression returns FALSE.
# }




###Nested If Else

# if(Boolean_expression1) {   
#   This block of code executes if the Boolean expression 1 returns TRUE
# } else if(Boolean_expression2) {   
#   This block of code executes if the Boolean expression 2 returns TRUE
# } else if(Boolean_expression3) {   
#   This block of code executes if the Boolean expression 3 returns TRUE 
# } else {   
#   This block of code executes if none of the Boolean expression returns TRUE
# }


###example 
x <- c("MSc Data Analytics","R","Tutorial") 
if("MSc" %in% x) 
{  
  print("MSc Data Analytics")
}else if ("Tutorial" %in% x) {
  print("Tutorial")
} else {  
  print("Not found")
}


### Switch Statement
# switch(expression, case1, case2, case3....)

##Example of Switch statement
y <- switch(  
  3,  
  "Data Science",  
  "R",  
  "Tutorial"
  
)
print(y)


### While Loop
# while (Boolean_expression) {
#   statement
# }

v <- 9
while(v>5){
  print(v)
  v = v-1
}

#### For Loop
# for (value in vector)
# {
#   statements
# }

#Examples 
v <- c(1:5)
for (i in v) {
  print(i)
}

### For with If
v <- c(1:5)
for (i in v) {
  if(i == 3){
    break
  }
  print(i)
}

### Break
v <- c(0:6)
for (i in v) {
  if(i == 3){
    break
  }
  print(i)
}

## SKip
v <- c(0:6)
for (i in v) {
  if(i == 3){
    next
  }
  print(i)
}

#### Functions in R #######

### Built-in functions

sum(c(1,2,3,4,5,6))
log10(10)
log2(10)
sqrt(5)
sqrt(c(1,2,3,4,5,6,7,8))

# aggregating functions
mean(c(1,2,3,4,5,6,7,8))
median(c(1,2,3,4,5,6,7,8))


## User-defined functions

# R gives you the ability to define your own functions based on specific 
# operations and computations to be  performed on the data and execute those 
# functions again and again wherever needed. You can define your own function

# function_name <- function(arguments) 
# {
#   computations or operations on the arguments to be done
#   some other code
# }

# For example

square <- function(x){
  return (x*2)
} 

square(5)

square(c(1,2,3,4,5))


# Creating a function

#In R, it is easy to create a function. For eg. to define a function called addition that simply adds
#two numbers x and y, respectively:

addition <- function(a, b) {
  a + b
}

# The syntax function (a, b) specifies the arguments of the function. In other words, 
# the function takes two arguments named a and b. The { a + b } is the function body that
# contains a series of expressions expressed in terms of a, b or other symbols. 
# The value of the last expression inside the function determines the value returned by the 
# function unless return() is called as the last statement. Finally, the function is assigned to
# addition so that we can call this function using "addition" later on. 

# To  see what object addition refers to, just type addition at the console:
# Create a function "multiply"  to multiply two numbers and print the result.

multiply<- function(a, b)
{
  result <- a*b
  print(result)
}


#Calling a function

#Once the function is defined in R, we can call the function just as we do by passing the values. 
#The calling requires the same syntax: name (arg1, arg2, .). 

addition(10,20)

# A function can be called in multiple ways: 

# Create a function without an argument.
square <- function() {
  for(i in 1:5) {
    print(i^2)
  }
}	


# Call the function without supplying an argument.
square()

# Calling a Function with argument Values (by position and by name)
# Arguments can be supplied in same sequence as defined while creating the 
# function or they can be supplied in any order using the names of the arguments and assigning values to them.

# For eg, Recall the addition function:

# Call the function by position of arguments.
addition(10,20)

# Call the function by names of the arguments.
addition(a = 10, b = 20)

# Calling a Function with Default Argument

add <- function(a=10, b=20)
{
  result <- a+b
  print(result)
}

# Calling the function
add()
add(14,6)

# Exercise: Create a function tax_calc to calculate the 10% tax on the given salary and store
# it in tax variable and print it. Pass the salary as 10000 in the funcion call

tax_calc <- function(sal)
{
  tax <- 0.1* sal
  print(tax)
}


tax_calc(10000)


# Dynamic typing

# Functions in R can be very flexible since it is not strongly typed. In other words, the type of
# inputs are not fixed prior to the calling. Even if the function is originally designed to work
# for scalar numbers, it is automatically generalized to also work with all vectors as long as +
# works with them. For example, we can run the following code without any change in the
# Function:

addition(c(8, 6), 4)

#The above example does not really depict the flexibility of dynamic typing because scalar is also a vector in R. 
# A more appropriate example is:

addition(as.Date("2019-02-01"), 1)

# The function put the two arguments into the expression without any type checking.  
# as.Date() function creates a Date object, which has a date representation. Without changing any
# code of addition function, it works perfectly with Date values. The function does not work only when + is not well defined for the two arguments: 

addition(list(a = 1), list(a = 2))

# Generalizing a function

# Developers often want a function to be general and reusable enough to solve a wide range of similar use cases without 
# writing different specialized functions separately for each problem. That is called generalization. 

# To make addition() more general so that it can handle different primitive algebraic operations,
# we can define another function called calculate. This new function accepts three arguments
# where num1 and num2 are the two vectors, and optype accepts a character vector which is the kind of 
# algebraic operation the user wants to perform.

# The following code implements such a function using if elseif control.
# In this code, the choice of expression to be evaluated depends on the value of argument optype

calculate <- function(num1, num2, optype) {
  if (optype == "add") {
    num1 + num2
  } else if (optype == "minus") {
    num1 - num2
  } else if (optype == "multiply") {
    num1 * num2
  } else if (optype == "divide") {
    num1 / num2
  } else {
    stop("Unknown type of operation")
  }
}

# Once the function is created, we can call it by passing appropriate arguments:

#The function also works with numeric vectors:
calculate(c(2, 5), c(3, 6), "multiply")

# The function is also generalized to work with non-numeric vectors for which + is well defined like Date values:
calculate(as.Date("2019-03-01"), 5, "add")

#Default value for function arguments

# To set the default value of an argument in a function, use arg = value. This will make the argument as optional. In the following example  we create a function with an optional argument:

increase <- function(a, b = 1) {
  a + b
}

# The new function increase() allows us to call it with only "a". In this case, "b" automatically
# takes 1 unless it is explicitly specified in the function call.

increase(1)

increase(c(1, 2, 3))










