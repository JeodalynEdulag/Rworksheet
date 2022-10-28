#Assignment (virginica)
#EDULAG, JEODALYN R. BSIT 2-A

#1.Data(iris).

jdata <- data.frame(iris)
jdata

#2. Subset the iris set into 3files per species.

c_data <-subset(jdata, Species == 'virginica')
c_data

sep_len <- iris$Sepal.Length[101:150]
sep_len

sep_wid <- iris$Sepal.Width[101:150]
sep_wid

p_len <- iris$Petal.Length[101:150]
p_len 

p_wid <- iris$Petal.Width[101:150]
p_wid

vm <- c(sep_len, sep_wid, p_len, p_wid)
vm

#3. Get the total mean for each species.
tvm <- mean(vm)
tvm 

#4. Get the mean of each characteristics of the species.

hls_1 <- mean(sep_len)
hls_1

hls_2 <- mean(sep_wid)
hls_2

hls_3 <- mean(p_len)
hls_3

hls_4 <- mean(p_wid)
hls_4

