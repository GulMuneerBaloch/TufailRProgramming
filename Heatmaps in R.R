data(mtcars)
x <- mtcars
heatmap(x)
x <-as.matrix(mtcars)
heatmap(x, scale = "column")

#another way to generate map
install.packages("gplots")
library(gplots)
heatmap.2(x, scale = "column", col = bluered(100),
          trace="none")
#3rd kind of heatmap
install.packages("pheatmap")
library(pheatmap)
#not cute in heatmap
pheatmap(x, scale = "column")
#cut in heat map
pheatmap(x, scale = "column", cutree_rows = 4, cutree_cols = 2)

#ggplot
#changes columns to one column
library(ggplot2)
install.packages("reshape")
library(reshape)

y <- iris
y1 <- melt(y)
ggplot(y1, aes(y1$Species, y1$variable,fill = y1$value))+ geom_tile()+
  scale_fill_gradient(low= "yellow", high = "red")

