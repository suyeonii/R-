# 1-1. 성형수술 부작용 관련 키워드 분석하기
setwd("D:/Workspace/TIL/R_Data_Analysis/Part2/Stage1_Word cloud/ex02_여고생 성형/")
library(RColorBrewer)
library(wordcloud)
library(KoNLP)
useSejongDic()
library(stringr)

data1 <- readLines("remake2.txt")
data2 <- sapply(data1, extractNoun, USE.NAMES=F)
data3 <- unlist(data2)
data3 <- Filter(function(x) {nchar(x) < 5 & nchar(x) > 1 }, data3)
head(unlist(data3), 30)
data3 <- str_replace_all(data3, "[^[:alpha:]]", "")
data3

data3 <- gsub("부작", "", data3)
data3 <- gsub("답변", "", data3)
data3 <- gsub("이수", "", data3)
data3 <- gsub("필요", "", data3)
data3 <- gsub("조회", "", data3)
data3 <- gsub("재수", "", data3)
data3 <- gsub("해당", "", data3)
data3 <- gsub("성형", "", data3)
data3 <- gsub("의사", "", data3)
data3 <- gsub("상담", "", data3)
data3 <- gsub("추천", "", data3)
data3 <- gsub("네이버", "", data3)
data3 <- gsub("경우", "", data3)
data3 <- gsub("자세", "", data3)
data3 <- gsub("하게", "", data3)
data3 <- gsub("외과", "", data3)
data3 <- gsub("지식in", "", data3)
data3 <- gsub("지식iN", "", data3)
data3 <- gsub("의료", "", data3)
data3 <- gsub("감사", "", data3)
data3 <- gsub("수술", "", data3)
data3 <- gsub("질문", "", data3)
data3 <- gsub("문제", "", data3)
data3 <- gsub("안녕", "", data3)
data3 <- gsub("때문", "", data3)
data3 <- gsub("용", "", data3)
data3 <- gsub("문제", "", data3)
data3 <- gsub("생각", "", data3)
data3 <- gsub("계속", "", data3)


write(unlist(data3), "remake2-2.txt")
data4 <- read.table("remake2-2.txt")
data4
wordcount <- table(data4)
wordcount

head(sort(wordcount, decreasing=T) ,30)

palete <- brewer.pal(7,"Set2")
wordcloud(names(wordcount), freq=wordcount, scale=c(5,1), rot.per=0.25, min.freq=2,
          random.order=F, random.color=T, colors=palete)

