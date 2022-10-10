#WORKSHEET2 (EDULAG, JEODALYN R. BSIT 2-A)

#1. Ceate a vector using : operator
#1a. Sequence from -5 to 5. Write the R code and its output. Describe its output.
nmbr <- seq(-5,5)
nmbr 


#1b. x <- 1:7. What will be the value of x?
#answer: The value of x is numbers form 1 to 7
x<- 1:7
x

#2. Create a vector using seq() function
#2a. seq(1, 3, by=0.2) # specify step size Write the R code and its output. Describe the output.
jd <- seq(1, 3, by= 0.2)
jd


#3.A factory has a census of its workers. There are 50 workers in total. The following
#list shows their ages: 34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
#22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
#24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,18.

age <- c(34,28,22,36,27,18,52,39,42,29,35,31,27,
         22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
         24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,18)

#a. Access 3rd element, what is the value?
age[3]

#b. Access 2nd and 4th element, what are the values?
age[2]

age[4]

#c. Access all but the 1st element is not included. Write the R code and its output.
age[2:49]


#4.*Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector,names(x).
x <- c("first"=3, "second"=0, "third"=9)
names(x)


#a. Print the results. Then access x[c("first", "third")].Describe the output
x[c("first", "third")]


#5 Create a sequence x from -3:2.
x <- c(-3:32)
x

#a. Modify 2nd element and change it to 0;
x[2] <- 0
x

#b. Write the code and its output.
x[2] <- 0
x	

#6.*The following data shows the diesel fuel purchased by Mr. Cruz.
#a. Create a data frame for month, price per liter (php) and purchase-quantity (liter).
#Write the codes.
Month <- c("Jan", "Feb", "March", "Apr", "May", "June")
Month
Price <- c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00)
Price
Quantity <- c(25, 30, 40, 50, 10, 45)  
data_frame <- data.frame(Month, Price, Quantity)
data_frame

#b. What is the average fuel expenditure of Mr. Cruz from Jan to June? 
#Note: Use weighted.mean(liter, purchase)

weighted.mean(Price,Quantity)


#7.
##code
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data

#8. The table below gives the 25 most powerful celebrities and their annual pay as ranked 
    #by the editions of Forbes magazine and as listed on the Forbes.com website.

#a. Create vectors according to the above table. Write the codes.
Power_Ranking <- 1:25
Cel_Name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", 
                   "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the sopranos",
                   "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney",
                   "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling",
                   "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant")

Pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40,
         233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)

DataRanking <- data.frame(Power_Ranking, Cel_Name, Pay)
DataRanking

#b. Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 and pay to 90. Write the codes and its output.
Power_Ranking [19] <- 15
Power_Ranking
Pay [19] <- 90
Pay

Mag_Ranking <- data.frame(Power_Ranking, Cel_Name, Pay)
Mag_Ranking

#c. Interpret the data.

Cel_Pay<- data.frame(Power_Ranking, Cel_Name, Pay)
Cel_Pay

