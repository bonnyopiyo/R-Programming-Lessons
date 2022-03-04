#More about the iris dataset
?iris

#attach the dataset to the environment
data("iris")
#rename your dataset
datasetIrisOne <- iris

#Summarize a dataset
# 1. Dimensions of the dataset.
# 2. Types of the attributes.
# 3. Peek at the data itself.
# 4. Levels of the class attribute.
# 5. Breakdown of the instances in each class.
# 6. Statistical summary of all attributes.

# 1. Dimensions of the dataset.
dim(datasetIrisOne)
View(datasetIrisOne)
# 2. Types of the attributes.
#list types for each attribute
sapply(datasetIris, class)

#Having a look at the entire dataset
View(datasetIris)

# 3. Peek at the data itself.

head(datasetIris) #displays data for the first six rows
head(datasetIris, 10) #displays the first 10 rows
tail(datasetIris) #displays data for the last 6 rows
tail(datasetIris, 3) # displays DATA for last 3 rows

# 4. Levels of the class attribute.
#list the levels/labels that our dataset had
levels(datasetIrisOne$Species)

# 5. Breakdown of the instances in each class.
#summarize the class attributes

Total <- prop.table(table(datasetIris$Species)) * 100
cbind(freq=table(datasetIris$Species), percentage=Total)


# 6. Statistical summary of all attributes.
summary(datasetIrisOne)





