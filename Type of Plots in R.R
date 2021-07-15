library(readxl)
my_data <- read_excel("Book1.xlsx", sheet = "Sheet1", 
                    col_types = c("text", "numeric", "numeric"))
View(my_data)
#strip chart
stripchart(my_data$Height)
stripchart(my_data$Height ~ my_data$Weight)

#hitogram
hist(my_data$Height)
hist(my_data$Weight)

#plot/scatter plot
plot(my_data$Weight, my_data$Height)

#qqnorm plot
qqnorm(my_data$Height)

#barplot
barplot(my_data$Height)

#mosaic plot
mosaicplot(~ my_data$Crop+my_data$Height)


#boxplot
boxplot(my_data$Height ~ my_data$Crop)










