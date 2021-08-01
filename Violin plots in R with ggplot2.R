library(ggplot2)
data("diamonds")
d_sample <- diamonds[seq(1,53000, by = 10),]
nrow(d_sample)
vio <- ggplot(d_sample, aes(cut, price))+ geom_violin()
#to change the color
vio <- ggplot(d_sample, aes(cut, price, color= cut))+ geom_violin()
vio + geom_boxplot(width = 0.1)
vio + geom_boxplot(width = 0.1)+geom_point()
vio + geom_boxplot(width = 0.1)+geom_jitter(size=0.5)

#dilute dataset
d_sample2 <- diamonds[seq(1,53000, by = 100),]
vio <- ggplot(d_sample2, aes(cut, price, color= cut))+ geom_violin()
vio + geom_boxplot(width = 0.1)
vio + geom_boxplot(width = 0.1)+geom_point()
vio + geom_boxplot(width = 0.1)+geom_jitter(size=0.5)

#fill color
vio <- ggplot(d_sample2, aes(cut, price, fill= cut))+ geom_violin()
vio + geom_boxplot(width = 0.1)
vio + geom_boxplot(width = 0.1)+geom_point()
vio + geom_boxplot(width = 0.1)+geom_jitter(size=0.5)

vio <- ggplot(d_sample2, aes(cut, price, color= cut))+ geom_violin()
vio + geom_boxplot(width = 0.1)
vio + geom_boxplot(width = 0.1)+geom_point()
vio + geom_boxplot(width = 0.1)+geom_jitter(size=0.5)+
  ggsave("violoinplot.pdf")
