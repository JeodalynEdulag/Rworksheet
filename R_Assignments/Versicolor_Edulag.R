#Assignment (versicolor)
#EDULAG, JEODALYN R. BSIT 2-A

#1.Data(iris).

a_data <- data.frame(iris)
a_data

#2.Subset the iris set into 3files per species.

b_data <- subset(a_data, Species == 'versicolor')
b_data

s_len <- iris$Sepal.Length[51:100]
s_len

s_wid <- iris$Sepal.Width[51:100]
s_wid

a_ptl <- iris$Petal.Length[51:100]
a_ptl

b_ptl <- iris$Sepal.Width[51:100]
b_ptl

m <- c(s_len, s_wid, a_ptl, b_ptl)
m

#3. Get the total mean for each species.

tmean1 <- mean(m)
tmean1

#4. Get the mean of each characteristics of the species.

he_1 <- mean(s_len)
he_1

he_2 <- mean(s_wid)
he_2

he_3 <- mean(a_ptl)
he_3

he_4 <- mean(b_ptl)
he_4


