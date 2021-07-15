my_data <- read_excel("Book1.xlsx", sheet = "Sheet1", 
                    col_types = c("text", "numeric", "numeric"))
View(my_data)
data <- read_excel("Book1.xlsx", sheet = "Sheet1", 
                   col_types = c("text", "numeric", "numeric"))
View(data)
#remove data
remove(data)
#create boxplot
boxplot(my_data$Height ~ my_data$Crop)
#labeling
boxplot(Height ~ Crop, data = my_data)
boxplot(Height ~ Crop, data = my_data, main = "Boxplot of Experiment", 
        xlab = "Crop Type", ylab = "Plant Height (cm)")
#coloring
boxplot(Height ~ Crop, data = my_data, main = "Boxplot of Experiment", 
        xlab = "Crop Type", ylab = "Plant Height (cm)",
        col= "Green", border = "red")
#coloring of our own choice
#go to google and search 'color picker' and choose color of your choice
#copy the hex code of color of your interest/choice
#I liked color which has this code #ebb434
#or search on google 'microsoft powertoys' and after installing
#press [Windows button, Shift button+ C], you can get hex code of any color.


boxplot(Height ~ Crop, data = my_data, main = "Boxplot of Experiment", 
        xlab = "Crop Type", ylab = "Plant Height (cm)",
        col= "#ebb434", border = "grey")
#grouping of treatment
my_data2 <- read_excel("Book1 - Copy.xlsx", 
                         sheet = "Sheet1", col_types = c("text", 
                                                         "numeric", "numeric", "text"))

View(my_data2)

my_data2$Crop <- factor(my_data2$Crop, levels = c("Wheat", "Maize", "Rice", "Potato"))
boxplot(my_data2$Height ~ my_data2$Crop *my_data2$Water)

ggplot



