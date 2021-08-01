data(iris)
nrow(iris)
View(iris)
#principal component analysis
pca <- prcomp(iris[, -5], center= T, #to centralize the data,
                      scale. = T, #when data has two different units. 
              )
pca
summary(pca)
#ggplot2 visualization and grouping
library(ggplot2)
iris <- cbind(iris, pca$x)
View(iris)
ggplot(iris, aes(PC1, PC2, color=Species, fill = Species))+ 
  stat_ellipse(geom = "polygon", col = "black", alpha= 0.5)+
  geom_point(shape= 21, col = "black")

#install packages for PCA analysis 

#PCA plot
install.packages("factoextra")
library(factoextra)
install.packages("FactoMineR")
library(FactoMineR)
iris.pca <- PCA(iris[,-5], graph=T, scale.unit=T)

if(!require(installr)) {
  install.packages("installr"); 
  require(installr)}
  
updateR()
  
#screep plot

#to present most of the data screeplot
fviz_eig(iris.pca, addlabels = TRUE, ylim=c(0,80))

#PCA plot

fviz_pca_var(iris.pca, col.var = "cos2", 
             gradient.col=c("#FFCC00", "#CC9933", "#660033", "#330033"), repel =T)+
  labs(title = "PCA Parameters", x="PC1 (83.3%)", y="PC2 (6.8%)",
       colour = "cos2")+
  ggsave("PCA.png", units = "in", width = 6.5, height = 5.5)
