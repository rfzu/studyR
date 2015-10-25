library(datasets)
data(iris)
# iris?

# what is the mean of 'Sepal.Length' for the species virginica?
mean(iris$Sepal.Length[which(iris$Species == 'virginica')])

# How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?

