library(readxl)
my_data <- read_excel("Book1 - Copy.xlsx", 
                         sheet = "Sheet1", col_types = c("text", 
                                                         "numeric", "numeric", "text"))
View(my_data)

##basic statistics

mean(my_data$Height)
median(my_data$Height)
mean(my_data$Weight)
median(my_data$Weight)
min(my_data$Height)
min(my_data$Weight)
max(my_data$Weight)

range(my_data$Height)

quantile(my_data$Height, 0.25)
quantile(my_data$Height, 0.75)

#standard deviation
sd(my_data$Height)

var(my_data$Height)


lapply(my_data[, 2:3], mean)


lapply(my_data[, 2:3], sd)

lapply(my_data[, 2:3], summary)

summary(my_data)


##ANOVA
aov(my_data$Height ~my_data$Crop)
aov1 <- aov(my_data$Height ~my_data$Crop)
summary(aov1)

##Tukey HSD test 

aov1 <- aov(my_data$Height ~my_data$Crop)
TukeyHSD(aov1)

#groupwise ANOVA
aov2 <- aov(my_data$Height ~ my_data$Crop * my_data$Water)
summary(aov2)
TukeyHSD(aov2)

#boxplot
boxplot(my_data$Height ~ my_data$Crop)

#multiple comparison of means

#1. Tukey HSD test

install.packages("agricolae")

library(agricolae)
help("agricolae-package")
?agricolae
model <- aov(Height ~ Crop, data = my_data)
output <- HSD.test(model, "Crop", group = T, console = T, main = "Tukey Test")
plot(output)


#2. LSD test

model <- aov(Height ~ Crop, data = my_data)
output2 <- LSD.test(model, "Crop", group = T, console = T, main = "LSD Test")
plot(output2)


#3. Duncan Test
model3 <- aov(Height ~ Crop, data = my_data)
output3 <- duncan.test(model3, "Crop", group = T, console = T, main = "Duncan Test")
plot(output3)


#grouping
boxplot(Height ~ Crop * Water, data= my_data)
boxplot(Height ~ Crop * Water, data= my_data, las = 2, xlab="")
model4 <- aov(Height ~ Crop * Water, data= my_data)
output4 <- HSD.test(model4, c("Crop", "Water"), group = T, console = T, main = "Tukey Test")
plot(output4)
plot(output4, horiz = F, las = 2)
plot(output4, horiz = T, las = 2)
plot(output4, horiz = T, las = 1)


jpeg(filename = "Tukey HSD.tiff",
     width=6, height=4,units="in",res=600)
plot(HSD.test(model4, c("Crop", "Water"), group = T, console = T, main = "Tukey Test"))
dev.off()


jpeg(filename = "Tukey.tiff",
     width=6, height=4,units="in",res=600)
boxplot(Height ~ Crop * Water, data= my_data, las = 2, xlab="")
dev.off()
