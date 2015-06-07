#The script loads the household power consumption data set.
#It is available from
#http://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption

#Justin Peter, 7 Jun 2015.


#Clean up the workspace
    rm(list=ls())

#---Read the data set

    fname <- "../data/household_power_consumption.txt"

    #The data is separated by semicolons.
    #Ned to specify colClasses, otherwise each variable is read in as a factor
    #Invalid data is represented by a "?"
    data <- read.table(fname,sep=";",header=TRUE,
                       colClasses=c("character","character",rep("numeric",7)),
                       na.strings="?")


#---Extract just the dates we need (2007-02-01 and 2007-02-02)
    #This should be done first to speed up the date/time conversions below.

    exdates <- which(data$Date == "1/2/2007" | data$Date == "2/2/2007")

    exdata <- data[exdates,]


#---Put the date in POSIXlt format
    datetimestr <- paste(exdata$Date,exdata$Time)

    exdata$DateTime <- strptime(datetimestr,format="%d/%m/%Y %H:%M:%S")

#---Assign the extracted data set to data and clean up.
    data <- exdata
    rm(exdata)
