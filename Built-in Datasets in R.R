setwd("D:/R-files/Tufail/TufailRProgramming")
#check built in R datasets
data() #all datasets in R
View(CO2) #to view R datasets in R console
View(PlantGrowth)
#commonly used datasets
View(iris)
#commonly used datasets
view(iris)
View(trees)
View(mtcars)
#check data
head(CO2) #to show first 6 rows of data
names(CO2) #to show the names of columns
nrow(CO2) #to look for number of rows
ncol(CO2) #to look for number of columns

#save R builtin datasets
install.packages("writexl") #to save .xlsx files
library(writexl)

write_xlsx(CO2, path="D://R-files//Tufail//TufailRProgramming//CO2.xlsx")



library(ggplot2)
ggplot(trees, aes(Girth, Height))+ geom_point()+geom_smooth()

ggplot(trees, aes(Girth, Height))+ geom_point()+geom_smooth(method = "lm")


