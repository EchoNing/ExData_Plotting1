## load the needed data to RAM

myFile <- "./data/household_power_consumption.txt"
require(data.table)

# read the first column to find the rows in Feb.1 and Feb.2
findRows<-fread(myFile, header = TRUE, select = 1)
all<- which(findRows$Date %in% c("1/2/2007", "2/2/2007"))
skip<- min(all)
keepRows<- length(all)

# read the first row the get the header(rownames)
findNames <- fread(myFile, header = TRUE, nrows=0)
name <- names(findNames)

# read the needed data using read.csv
DF <- read.csv(myFile, sep=";", nrows=keepRows, header=FALSE,
              na.strings=c("?"), stringsAsFactors=FALSE,
              skip=skip, col.names=name)

# take the data within the relevant timeframe
# add datetime column
DF2d <- DF[DF$Date %in% c("1/2/2007","2/2/2007"), ]
DF2d <- data.table(DF2d)
DF2d[, datetime := as.POSIXct(paste(DF2d$Date, DF2d$Time), 
                              format="%d/%m/%Y %H:%M:%S")]
# drop not needed columns
DF2d[, c("Date","Time") := NULL]