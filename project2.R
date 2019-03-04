setwd("C:/Users/riham/OneDrive/Documents/BigData/rReq2")
data <- read.csv("EconomistData.csv")
library("ggplot2")
#print((data))
#print(str(data))
#Create a scatter plot with CPI on the x axis and HDI on the y axis.
p <- ggplot(data, aes(y = HDI, x = CPI))
p + geom_point()
#Color the points blue.
p + geom_point(color = "blue")

#Map the color of the points to Region.
p + geom_point(aes(color = Region))

#Smooth the points in the plot to explore the trend in data.
p + geom_smooth(color = "red")

#Label the points with the country name.
p2 <- ggplot(data, aes(y = HDI, x = CPI , label = Country))
p2 + geom_point(color = "red") + geom_text(aes(label=Country), hjust=0, vjust=0,check_overlap=TRUE)

##########################################
p + geom_point(color="green", size=2)

##########################################
p + geom_point(color="green", aes(size=HDI.Rank))

#Filter data to be only that has Region=East EU Cemt Asia
newData = data[data$Region=="MENA",]

p3 <- ggplot(newData, aes(y = HDI, x = CPI))
p3 + geom_point()
p3 + geom_point(aes(color = Region))
p3 + geom_smooth(color = "red")

p4 <- ggplot(newData, aes(y = HDI, x = CPI , label = Country))
p4 + geom_point(color = "red") + geom_text(aes(label=Country), hjust=0, vjust=0,check_overlap=TRUE)
p4 + geom_point(color="green", aes(size=HDI.Rank))


#Filter data to be only that has Region=East EU Cemt Asia
newData = data[data$Region=="EU W. Europe",]

p5 <- ggplot(newData, aes(y = HDI, x = CPI))
p5 + geom_point()
p5 + geom_point(aes(color = Region))
p5 + geom_smooth(color = "red")

p6 <- ggplot(newData, aes(y = HDI, x = CPI , label = Country))
p6 + geom_point(color = "red") + geom_text(aes(label=Country), hjust=0, vjust=0,check_overlap=TRUE)
p6 + geom_point(color="green", aes(size=HDI.Rank))



#Filter data to be only that has Region=East EU Cemt Asia
newData = data[which(data$Region=="EU W. Europe" | data$Country=="Egypt"), ]

p7 <- ggplot(newData, aes(y = HDI, x = CPI))
p7 + geom_point()
p7 + geom_point(aes(color = Region))
p7 + geom_smooth(color = "red")

p8 <- ggplot(newData, aes(y = HDI, x = CPI , label = Country))
p8 + geom_point(color = "red") + geom_text(aes(label=Country), hjust=0, vjust=0,check_overlap=TRUE)
p8 + geom_point(color="green", aes(size=HDI.Rank))

