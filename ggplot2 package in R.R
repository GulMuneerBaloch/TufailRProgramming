install.packages("ggplot2")
library(ggplot2)
#ggplot (function)
#data (data1)
#mapping (x-axis, y-axis)
#geometry (line, scatter, box)

library(readxl)
ggdata <- read_excel("ggdata.xlsx", col_types = c("text", 
                                                  "numeric", "text", "text"))
View(ggdata)
ggplot(data= ggdata, aes(x = crop, y = height)) +
  geom_point()
View(ggdata)

ggplot(data= ggdata, aes(x = crop, y = height)) +
  geom_point(size = 2) + geom_line()

#basic boxplot with points
ggplot(data= ggdata, aes(x = crop, y = height)) +
  geom_boxplot() + geom_point(size = 3,color = "#FFDA00", alpha = 0.4)
#empty boxplot color
ggplot(ggdata, aes(crop, height, color = water))+ 
  geom_boxplot()
#fill boxplot color
ggplot(ggdata, aes(crop, height, fill = water))+ 
  geom_boxplot()
#fill boxplot color with points color
ggplot(ggdata, aes(crop, height, color = water))+ 
  geom_boxplot() + 
  geom_point(size = 3,color = "#FFDA00", alpha = 0.4)





ggplot(ggdata, aes(crop, height, color = water))+ 
  geom_boxplot()+
  #divide the data based on fert.type
  facet_wrap(~fert.type)

#change labels
ggplot(ggdata, aes(crop, height, color = water))+ 
  geom_boxplot()+
  #divide the data based on fert.type
  facet_wrap(~fert.type) +
  labs(x = "Crop Type", y = "Plant Height (cm)",
       title = "Plant Growth") 
#theme
ggplot(ggdata, aes(crop, height, color = water))+ 
  geom_boxplot()+
  #divide the data based on fert.type
  facet_wrap(~fert.type) +
  labs(x = "Crop Type", y = "Plant Height (cm)",
       title = "Plant Growth") + 
  theme_bw()
#save this plot   
ggplot(ggdata, aes(crop, height, color = water))+ 
  geom_boxplot()+
  #divide the data based on fert.type
  facet_wrap(~fert.type) +
  labs(x = "Crop Type", y = "Plant Height (cm)",
       title = "Plant Growth") + 
  theme_bw()+
  ggsave("ggplot.tiff", units = "in", width = 8, height = 6, dpi = 300, compression = "lzw")


#flip the graph


ggplot(ggdata, aes(crop, height, color = water))+ 
  geom_boxplot()+
  #divide the data based on fert.type
  facet_wrap(~fert.type) +
  labs(x = "Crop Type", y = "Plant Height (cm)",
       title = "Plant Growth") + 
  theme_bw()+
  coord_flip()
  ggsave("ggplot.tiff", units = "in", width = 8, height = 4, dpi = 300, compression = "lzw")

