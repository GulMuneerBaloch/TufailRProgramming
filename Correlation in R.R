Correlation in R
#install packages for correlation 
install.packages("psych")
install.packages("corrplot")
install.packages("RColorBrewer")
library(corrplot)
library(RColorBrewer)
#package psych
data(iris)
x <- corr.test(iris[-5])
x
pairs.panels(iris[-5])

#corrplot
x1 <- cor(mtcars[-1])
x1
corrplot(x1)

corrplot(x1, type = "upper")

corrplot(x1, type = "lower")

corrplot(x1, type = "full")
corrplot(x1, type = "upper", order="hclust")
#pie shape
corrplot(x1, type = "upper", order="hclust", method = "pie")

corrplot(x1, type = "upper", order="hclust", method = "ellipse")
corrplot(x1, type = "upper", order="hclust", method = "square")

corrplot(x1, type = "upper", order="hclust", method = "shade")



corrplot(x1, type = "upper", order="hclust", method = "number")






corrplot(x1, type = "upper", order="hclust", method = "pie",
         color=brewer.pal(n=8, name=RdYlBu))


#mixed corr plot

corrplot.mixed(x1)
#different upper and lower 

corrplot.mixed(x1, lower.col  = "black", number.cex = 0.8)

corrplot.mixed(x1, lower = "square", upper = "pie", color= "red")
corrplot.mixed(x1, lower = "square", upper = "pie", tl.col= "Blue")
corrplot.mixed(x1, lower = "number", upper = "pie", tl.col= "red")

#with spearman

x1 <- cor(mtcars[-1],method =  "pearson")
x1 <- cor(mtcars[-1],method =  "spearman")
