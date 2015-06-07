#Produces the second plot of Project1 of Exploratory Data Analysis

#Justin Peter, 15 June 2015

#Read in the data
source("loadData.R")

#Produce second plot
    png("plot2.png",width=480,height=480)

    plot(data$DateTime,data$Global_active_power,
         type="l",
         xlab="",ylab="Global Active Power (kilowatts)")

    dev.off()
