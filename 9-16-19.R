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