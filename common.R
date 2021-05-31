library(data.table)
library(dplyr)
library(ggplot2)
library(lubridate)
library(gridExtra)

dataSurceURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
textFileName = "household_power_consumption.txt"

getDataset<- function(URL){
  download.file(URL,"ds.zip")
  unziped <- unzip("ds.zip")
  if(length(unziped)>0){
    print(unziped)
    file.remove("ds.zip")
  }
}

getDataTable <- function(fn="household_power_consumption.txt"){
  # The dimension of : (2075259, 9)
  # Descriptions of variables as:
  # Date: Date in format dd/mm/yyyy
  # Time: time in format hh:mm:ss
  # Global_active_power: household global minute-averaged active power (in kilowatt)
  # Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
  # Voltage: minute-averaged voltage (in volt)
  # Global_intensity: household global minute-averaged current intensity (in ampere)
  # Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
  # Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
  # Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.
  dt<-fread(fn)
  dt[,DateCasted:=as.Date(dt$Date,format = "%d/%m/%Y")]
  dt <- dt %>% filter(DateCasted >="2007-02-01" & DateCasted <= "2007-02-02")
  dateTime <- paste(dt$Date,dt$Time," ")
  dt[,DateTime:= as.POSIXct(dateTime, format = "%d/%m/%Y %H:%M:%S")]
  dt$Global_active_power <- as.numeric(dt$Global_active_power)
  dt$Global_reactive_power <- as.numeric(dt$Global_reactive_power)
  dt$Sub_metering_1 <- as.numeric(dt$Sub_metering_1)
  dt$Sub_metering_2 <- as.numeric(dt$Sub_metering_2)
  dt$Sub_metering_3 <- as.numeric(dt$Sub_metering_3)
  dt$Voltage <- as.numeric(dt$Voltage)
  
  dt
}

save <- function(p,fn){
  ggsave(device = "png",
         filename = fn, 
         plot=p,
         dpi = 72,
         width = 6.67,
         height = 6.67)
  
}

plot1 <- function(dt){
  
  ggplot(data = dt) + 
    geom_histogram(mapping = aes(x = Global_active_power),
                   fill="red",
                   color="black",
                   binwidth = 0.5,
                   boundary = 0) +
    scale_x_continuous(breaks = c(0,2,4,6)) +
    scale_y_continuous(breaks = c(0,200,400,600,800,1000,1200)) +
    labs(x="Global Active Power(Killowatts)",
         y="Frequency") +
    theme(panel.background = element_rect(fill = "white", colour = "grey50"))
  
}

plot2 <- function(dt,ylab="Global Active Power(Killowatts)"){
  ggplot(data = dt) + 
    geom_line(mapping = aes(x=DateTime,y=Global_active_power)) + 
    scale_x_datetime(breaks = c(as.POSIXct("2007-02-01 00:00:00"), 
                                as.POSIXct("2007-02-01 23:59:30"),
                                as.POSIXct("2007-02-02 23:59:00")),
                       labels = c("Thu","Fri","Sat")) +
    labs(x="",y=ylab) +
    theme(panel.background = element_rect(fill = "white", colour = "grey50"))
  
}

plot3 <- function(dt){
  ggplot(data = dt) + 
    geom_line(mapping = aes(x=DateTime,y=Sub_metering_1), color="black") + 
    geom_line(mapping = aes(x=DateTime,y=Sub_metering_2), color="red") + 
    geom_line(mapping = aes(x=DateTime,y=Sub_metering_3), color="blue") + 
    scale_x_datetime(breaks = c(as.POSIXct("2007-02-01 00:00:00"), 
                                as.POSIXct("2007-02-01 23:59:30"),
                                as.POSIXct("2007-02-02 23:59:00")),
                     labels = c("Thu","Fri","Sat")) +
    labs(x="",y="Energy sub metering") +
    theme(panel.background = element_rect(fill = "white", colour = "grey50"))
  
}

plot4_1<- function(dt){
  
  ggplot(data=dt)+ geom_line(mapping = aes(x=DateTime,y=Voltage)) + 
    scale_x_datetime(breaks = c(as.POSIXct("2007-02-01 00:00:00"), 
                                as.POSIXct("2007-02-01 23:59:30"),
                                as.POSIXct("2007-02-02 23:59:00")),
                     labels = c("Thu","Fri","Sat")) +
    labs(x="datetime",y="voltage") +
    theme(panel.background = element_rect(fill = "white", colour = "grey50"))
  
}

plot4_2<- function(dt){
  
  ggplot(data=dt)+ geom_line(mapping = aes(x=DateTime,y=Global_reactive_power)) + 
    scale_x_datetime(breaks = c(as.POSIXct("2007-02-01 00:00:00"), 
                                as.POSIXct("2007-02-01 23:59:30"),
                                as.POSIXct("2007-02-02 23:59:00")),
                     labels = c("Thu","Fri","Sat")) +
    labs(x="datetime",y="Global_reactive_power") +
    theme(panel.background = element_rect(fill = "white", colour = "grey50"))
}

plot4<- function(dt){
  p<-arrangeGrob(plot2(dt,"Global Active Power"), 
                 plot4_1(dt), 
                 plot3(dt),
                 plot4_2(dt),
                 nrow = 2,
                 ncol=2)
  # grid.arrange(plot2(dt,"Global Active Power"), plot4_1(dt),plot3(dt),plot4_2(dt), nrow = 2,ncol=2)
}

plot4Display<- function(dt){
 
  grid.arrange(plot2(dt,"Global Active Power"), plot4_1(dt),plot3(dt),plot4_2(dt), nrow = 2,ncol=2)
}
