library(ggplot2)
data("cars")
View(cars)
ggplot(data = cars, aes(speed, dist)) + geom_point()+ 
  geom_smooth(method = "lm", se = T, level = 0.75)

#scatter plot with multiple line 
data("Orange")
View(Orange)
ggplot(Orange, aes(age, circumference, color = Tree))+geom_point(size = 2, shape= 19)

ggplot(Orange, aes(age, circumference, shape = Tree))+geom_point(size = 2)


ggplot(Orange, aes(age, circumference, color = Tree))+geom_point(size = 2, aes(alpha = Tree))

#spearate by shape

ggplot(Orange, aes(age, circumference, color = Tree))+geom_point(size = 2, shape = 19)

ggplot(Orange, aes(age, circumference, color = Tree))+
  geom_point(size = 2, shape = 19)+
  geom_line(linetype = 1, size= 1)
#old paper graph style
ggplot(Orange, aes(age, circumference,))+
  geom_point(size = 2, shape = 19)+
  geom_line(aes(linetype =Tree), size= 1)

ggplot(Orange, aes(age, circumference,color  = Tree))+
  geom_point(size = 2, shape = 19)+
  geom_line(aes(linetype =Tree), size= 1)+
  labs(x = "Age", y = "Circumference", title = "Graph")+
  ggsave("scatterplot2.pdf")

#bubble plot (type of scatter plot)
install.packages("viridis")
library(viridis)
data("quakes")
View(quakes)
  q_sample <- quakes[seq(from = 1, to= 1000, by = 10),]
View(q_sample)
nrow(q_sample)
ggplot(q_sample, aes(lat, long))+ geom_point(aes(size = mag, color = mag))+
  guides(size = F)
#removing size by color
ggplot(q_sample, aes(lat, long))+ geom_point(aes(size = mag, color = mag))+
  guides(color = F)
#different coloring based on size
ggplot(q_sample, aes(lat, long))+ geom_point(aes(size = mag, color = mag))+
  guides(size = F)+
  scale_color_viridis_b(option = "B")

ggplot(q_sample, aes(lat, long))+ geom_point(aes(size = mag, color = mag))+
  guides(size = F)+
  scale_color_viridis_b(option = "B")+
  scale_size_continuous(range = c(1,9))+
  labs(x = "Latitude", y = "Longitude", title = "Graph")+
  ggsave("bubbleplot1.pdf")
  
#jitter plot
data("diamonds")
nrow(diamonds)
d_sample <- diamonds[seq(from = 1, to= 49000, by = 100),]
nrow(d_sample)

ggplot(d_sample, aes(cut, price, color=cut))+ geom_jitter()

ggplot(d_sample, aes(cut, price, color=cut))+ geom_point()   


ggplot(d_sample, aes(cut, price))+ geom_point()

ggplot(d_sample, aes(cut, price))+ geom_jitter()
