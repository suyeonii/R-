setwd("d:/Workspace/TIL/R_Data_Analysis/Part2/Stage1_Word cloud/연습문제/")
library(KoNLP)
library(wordcloud)
library(RColorBrewer)
library(stringr)
useSejongDic()

data1 <- readLines("응답소_2015_01.txt")
data1
data2 <- sapply(data1, extractNoun, USE.NAMES=F)
data2
data3 <- unlist(data2)
data3 <- Filter(function(x) {nchar(x) <= 8} , data3)
head(unlist(data3), 30)

data3 <- gsub("\\d+", "", data3)
data3 <- gsub("제목", "", data3)
data3 <- gsub("시장", "", data3)
data3 <- gsub("님", "", data3)
data3 <- gsub("한", "", data3)
data3 <- gsub("부터", "", data3)
data3 <- gsub("것", "", data3)
data3 <- gsub("뿐", "", data3)
data3 <- gsub("누구", "", data3)
data3 <- gsub("담당자", "", data3)
data3 <- gsub("안녕", "", data3)
data3 <- gsub("시장님", "", data3)
data3 <- gsub("리", "", data3)
data3 <- gsub("상담내용", "", data3)
data3 <- gsub("년", "", data3)
data3 <- gsub("일", "", data3)
data3 <- gsub("저", "", data3)
data3

write(unlist(data3), "응답소1.txt")
data4 <- read.table("응답소1.txt")
nrow(data4)
wordcount <- table(data4)
wordcount

head(sort(wordcount, decreasing=T), 20)
txt <- readLines("응답소gsub.txt")
txt
for(i in 1:length(txt)) {
  data3 <- gsub((txt[i], "", "data3")
 }

head(sort(wordcount, decreasing=T), 30)







