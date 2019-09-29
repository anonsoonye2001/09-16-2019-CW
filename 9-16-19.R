getwd()

setwd("C:/Users/username/Desktop/R programming")
list.files(pattern="txt")
list.files(pattern=".txt")
list.files()

d<-read.table(file="ISIIS201405291242.txt",
              sep="\t", skip=10, header=TRUE, fileEncoding="ISO-8859-1",
              stringsAsFactors = FALSE,quote = "\"", check.names=FALSE,
              encoding="UTF-8",na.strings="9999.99")

d<-read.table(file="ISIIS201405291242.txt",
              sep="\t", skip=10, header=TRUE, fileEncoding="ISO-8859-1",
              stringsAsFactors = FALSE,quote = "\"", check.names=FALSE,
              encoding="UTF-8",na.strings="9999.99")
names(d)
head(d)
d
date<-scan(file="ISIIS201405291242.txt",
           what="character", skip=1, nlines=1, quiet= TRUE)
date

date<-date[2]
date

library("stringr")
mm<-str_sub(string=date, start=1,end=2)
mm

dd<-str_sub(date,4,5)
dd
dd<-as.numeric(dd)

yy<-str_sub(date,7,8)
yy

dateNextDate<- str_c(mm,as.character(dd+1),yy,sep="/")
dateNextDate
dateNextDate<- str_c(mm,as.character(dd+1),yy,sep="bacon")
dateNextDate

d$hour<-as.numeric(str_sub(d$Time,1,2))
head(d$)
d$date<-date
d$min<-as.numeric(str_sub(d$Time,4,5))

d$sec<-as.numeric(str_sub(d$Time,7,11))
head(d$min)
getwd()

setwd("C:/Users/username/Desktop/R programming")
list.files(pattern="txt")
list.files(pattern=".txt")
list.files()

d<-read.table(file="ISIIS201405291242.txt",
              sep="\t", skip=10, header=TRUE, fileEncoding="ISO-8859-1",
              stringsAsFactors = FALSE,quote = "\"", check.names=FALSE,
              encoding="UTF-8",na.strings="9999.99")

d<-read.table(file="ISIIS201405291242.txt",
              sep="\t", skip=10, header=TRUE, fileEncoding="ISO-8859-1",
              stringsAsFactors = FALSE,quote = "\"", check.names=FALSE,
              encoding="UTF-8",na.strings="9999.99")
d
names(d)
head(d)
d
date<-scan(file="ISIIS201405291242.txt",
           what="character", skip=1, nlines=1, quiet= TRUE)
date

date<-date[2]
date

library("stringr")
mm<-str_sub(string=date, start=1,end=2)
mm

dd<-str_sub(date,4,5)
dd
dd<-as.numeric(dd)

yy<-str_sub(date,7,8)
yy

dateNextDate<- str_c(mm,as.character(dd+1),yy,sep="/")
dateNextDate
dateNextDate<- str_c(mm,as.character(dd+1),yy,sep="bacon")
dateNextDate
date<-str_c(mm,dd,yy sep="/")
d$hour<-as.numeric(str_sub(d$Time,start=1,end=2))

d$minute<-as.numeric(str_sub(d$Time,start=4,end=5))
d$secs<-as.numeric(str_sub(d$Time,start=-5,end=-1))
head(d)
d$date<-date
d$minute<-as.numeric(str_sub(d$Time,4,5))
d$secs<-as.numeric(str_sub(d$Time,7,11))
d$time<-str_c(d$hour, d$minute, d$secs, sep=":")
head(d$min) 

options("digit.secs"=3)
d$dateTime<-str_c(d$date, d$time, sep=" ")
d$dateTime<-as.POSIXct(strptime(x=d$dateTime, format="%m/%d/%y %H:%M:%OS", tz="America/New_York"))
head(d)
str(d)
d$dateTime
d$dateTime<-d$dateTime-time.zone.change*3600  # to be able to alter time zone back to the one i have set my data


# to read excel files
install.packages("openxlsx")
library(openxlsx)
openXL(file=)
d<-read.table(file="import_datasets/Aurelia_SEAMAP_2012-2018_30minCell.csv",,sep=",",header=T,
              stringsAsFactors = F)
head(d)
str(d)
getwd()
load("import_datasets/aurelia_15minCell_statareas.Rdata")
list.files(path="import_datasets/")

#Aurelia text file
library(data.table)
d1<-fread(input="import_datasets/aurelia_15minCell_statareas.txt", sep = ",",
         header = T,stringsAsFactors = F)
head(d1)
d2<-read.csv(file="import_datasets/aurelia_15minCell_statareas.txt",header=T,sep=",",
            stringsAsFactors = F)
head(d2)
d3<-read.table(file="import_datasets/aurelia_15minCell_statareas.txt",header=T,sep=",",
               stringsAsFactors = F)
head(d3)
library(tidyverse)
d4<-read_csv(file="import_datasets/aurelia_15minCell_statareas.txt")
head(d4)            

#Excel file
library(readxl)
e<-read_xlsx(path ="import_datasets/Aurelia_SEAMAP_2012-2018_30minCell.xlsx",sheet=1, col_names=T)
head(e)
#Saving data as a ".Rdata" file type
# save the object of interest and write out 

save(d4, file="aurelia_data.Rdata")
load("aurelia_data.Rdata")
