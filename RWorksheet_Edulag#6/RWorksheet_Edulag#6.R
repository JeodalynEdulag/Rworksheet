#WorkSheet-6
#EDULAG, JEODALYN R. BSIT 2-A

library(dplyr)
library(ggplot2)

data(mpg)

dt1 <- as.data.frame(mpg)
dt1

#1. How many columns are in mpg dataset? How about the number of rows? Show the
#codes and its result.
#Answer: It has 11 columns and 234 of rows.

mpgdata <- glimpse(dt1)

#2. Which manufacturer has the most models in this data set? Which model has 
#the most variations? Ans:
mfacturer <- mpgdata %>% group_by(manufacturer, model) %>% count()
mfacturer

colnames(mfacturer) <- c("Manufacturer","Model", "Counts")

#a. Group the manufacturers and find the unique models. 
#Copy the codes and result.
unique_mod <- mpgdata %>% group_by(manufacturer) %>% 
  distinct(model) %>% count()
unique_mod

colnames(unique_mod) <- c("Manufacturer", "Unique Counts")

#b. Graph the result by using plot() and ggplot(). 
#Write the codes and its result.
plot(mfacturer)

ggplot(mfacturer, aes(Manufacturer, Model)) + geom_point()

#3. Same dataset will be used. You are going to show 
#the relationship of the model and the manufacturer.
#a. What does ggplot(mpg, aes(model, manufacturer)) 
#+ geom_point() show?
#+ 
#Answer: A model- and manufacturer-specific point graph 
#from the mpg data set that makes it simple for 
#the user to assess the data

ggplot(dt1, aes(model, manufacturer)) + geom_point()

#b. For you, is it useful? If not, how could you modify the data to make it more informative?

#Answer: Despite the fact that the data is already sorted, 
#it may still be made to appear more instructive by adding a 
#legend that makes it clear how the data differs from the 
#scatter plot.

#4. Using the pipe (%>%), group the model and get the 
#number of cars per model. Show codes and its result.

cmodel <- mpgdata %>% group_by(model) %>% count()
cmodel

colnames(cmodel) <- c("Model", "Counts")

#a. Plot using the geom_bar() + coord_flip() just 
#like what is shown below. Show codes and its result.

qplot(model,data = dt1, 
      main = "Number of Cars per Model",
      xlab = "Model",
      ylab = "Number of Cars", geom = "bar", 
      fill = manufacturer) + coord_flip()

#b. Use only the top 20 observations. Show code and results.
jtop <- cmodel[1:20,] %>% top_n(2)
jtop

ggplot(jtop,aes(x = Model, y = Counts)) + 
  geom_bar(stat = "Identity") +coord_flip()

#5. Plot the relationship between cyl - number of cylinders and displ - engine displacement using geom_point with aesthetic colour = engine 
#displacement. Title should be “Relationship between No. of Cylinders and Engine Displacement”.
#a. Show the codes and its result.
ggplot(data = mpgdata , mapping = aes(x = displ, y = cyl, main = "Relationship 
                                    between No of Cylinders and 
                                    Engine Displacement")) + 
  geom_point(mapping=aes(colour = "engine displacement")) 

#b. How would you describe its relationship?
#Answer: In order to clearly distinguish the clustered data,
#which represent the engine displacement, the scatter plot displays 
#that the cyl is in the y axis and the displ are in the x axis.

#6. Get the total number of observations for drv - type of 
#drive train (f = front-wheel drive, r = rear wheel drive,
#4 = 4wd) and class - type of class (Example: suv, 2seater, 
#etc.).

#Plot using the geom_tile() where the number of observations
#for class be used as a fill for aesthetics.
#a. Show the codes and its result for the narrative in #6.
ggplot(data = mpgdata, mapping = aes(x = drv, y = class)) +
  geom_tile(aes(fill=class))

#b. Interpret the result.
#Answer: By mapping a geometric tile, the data was graphed 
#in a tile graph that was displayed in various colors,
#with the class on the Y axis and the drv on the X axis.

#7. Discuss the difference between these codes. 
#Its outputs for each are shown below.

#Answer: The graphs are nearly identical,
#but the first code is much simpler to study because
#it has a legend that can identify jittered data
#whereas the second code only appears in a blue-hued graph.

#first code
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ,
                           y = hwy, colour = "blue"))

#second code
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), 
             colour = "blue")

#8. Try to run the command ?mpg. What is the result of this command?
#Answer: The description for the mpg data set is displayed
#in the help option's result.
comd <-?mpg
comd

#a. Which variables from mpg dataset are categorical?
#Answer: The categorical variables from the data set of mpg 
#are the manufacturer, model, trans, drv, fl, and class.

#b. Which are continuous variables?
#Answer: The dsipl, year, cyl, cty, and hwy are the 
#continuous variables of the mpg data set.

#c. Plot the relationship between displ (engine displacement)
#and hwy(highway miles per gallon). Mapped it with a 
#continuous variable you have identified in #5-b.
#What is its result? Why it produced such output?

#Answer: Using the displ for hWy and cty scattered plot, the data that have been graphed 
#demonstrate that they are in the positive rate.

ggplot(mpg, aes(x = cty, y = hwy, colour = displ)) + 
  geom_point()

#9. Plot the relationship between displ (engine displacement) 
#and hwy(highway miles per gallon) using geom_point(). 
#Add a trend line over the existing plot 
#using geom_smooth() with se = FALSE. 
#Default method is “loess”.

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping=aes(color=class)) +
  geom_smooth(se = FALSE)

#10. Using the relationship of displ and hwy, add a trend 
#line over existing plot. Set these = FALSE to remove
#the confidence interval and method = lm to check 
#for linear modeling.

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  geom_smooth(se = FALSE, method = lm)


