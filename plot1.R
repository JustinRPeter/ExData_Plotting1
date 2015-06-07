#Produces the first plot of Project1 of Exploratory Data Analysis


#Justin Peter, 15 June 2015


#Read in the data
source("loadData.R")


#Produce first plot
png("plot1.png",width=480,height=480)
hist(data$Global_active_power,col="red",
     main="Global Active Power",
     xlab="Global active power (kilowatts)")
dev.off()

