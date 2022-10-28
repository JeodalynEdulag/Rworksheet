#Assignment (setosa)
#EDULAG, JEODALYN R. BSIT 2-A

#1.Data(iris).

data <- data.frame(iris)
data

#2.Subset the iris set ito 3files per species.

a_data <- subset(data, Species == 'setosa')
a_data

a_sepal <- iris$Sepal.Length[1:50]
a_sepal

b_sepal <- iris$Sepal.Width[1:50]
b_sepal

a_petal <- iris$Petal.Width[1:50] 
a_petal 

b_petal <- iris$Petal.Width[1:50]
b_petal

t_mean <- c(a_sepal, b_sepal, a_petal, b_petal)
t_mean

#3. Get the total mean for each species.

tl_mean <- mean(t_mean)
tl_mean

#4. Get the mean of each characteristics of the species.

h1 <- mean(a_sepal)
h1

h2 <- mean(b_sepal)
h2

h3 <- mean(a_petal)
h3

h4 <- mean(b_petal)
h4