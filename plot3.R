#Produces the third plot of Project1 of Exploratory Data Analysis


#Justin Peter, 15 June 2015


#Read in the data
source("loadData.R")


#Produce third plot
png("plot3.png",width=480,height=480)

plot(data$DateTime,data$Sub_metering_1,
     type="l",col="black",
     xlab="",ylab="Energy sub metering")

lines(data$DateTime,data$Sub_metering_2,
      col="red")

lines(data$DateTime,data$Sub_metering_3,
      col="blue")

legend("topright",col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lwd=1)

dev.off()

