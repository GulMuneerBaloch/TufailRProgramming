#package for reading from excel
install.packages("readxl")
library(readxl)
my_data <- read_excel("Book1.xlsx", sheet = "Sheet1", col_types = c("text", "numeric", "numeric"))
View(my_data)
#to check your data
str(my_data)
head(my_data)
tail(my_data)

#plotting data
plot(my_data)
boxplot(my_data$Height, my_data$Weight)
boxplot(my_data$Height~my_data$Crop)
