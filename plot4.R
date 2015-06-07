#Produces the fourth plot of Project1 of Exploratory Data Analysis


#Justin Peter, 15 June 2015


#Read in the data
source("loadData.R")

#Produce fourth plot. This is a multi-panel plot
    png("plot4.png",width=480,height=480)

#Specify the layout
    par(mfrow=c(2,2))

#First plot. Top-left
    plot(data$DateTime,data$Global_active_power,
         type="l",
         xlab="",ylab="Global Active Power")

#Second plot. Top-right
    plot(data$DateTime,data$Voltage,
         type="l",
         xlab="datetime",ylab="Voltage")

#Third plot. Bottom-left
    plot(data$DateTime,data$Sub_metering_1,
         type="l",col="black",
         xlab="",ylab="Energy sub metering")

    lines(data$DateTime,data$Sub_metering_2,
          col="red")

    lines(data$DateTime,data$Sub_metering_3,
          col="blue")

    legend("topright",col=c("black","red","blue"),
           legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
           lwd=1,bty="n")

#Fourth plot. Bottom-right
    plot(data$DateTime,data$Global_reactive_power,
         type="l",
         xlab="datetime",ylab="Global_reactive_power")

dev.off()

