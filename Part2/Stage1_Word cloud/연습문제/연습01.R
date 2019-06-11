setwd("d:/Workspace/TIL/R_Data_Analysis/Part2/Stage1_Word cloud/연습문제/")
library(KoNLP)
library(wordcloud)
library(RColorBrewer)
library(stringr)
useSejongDic()

data1 <- readLines("응답소_2015_01.txt")
data2 <- sapply(data1, extractNoun, USE.NAMES=F) ;data2
head(unlist(data2), 30)
data3 <- unlist(data2) ;data3
data3 <- str_replace_all(data3, "[^[:alpha:]]", "") ;data3
data3 <- Filter(function(x) {nchar(x) <= 6 & nchar(x) > 1}, data3) ;data3
head(unlist(data3), 30)

data3 <-gsub("제목" ,"", data3)
data3 <-gsub("안녕" ,"", data3)
data3 <-gsub("시장공개일" ,"", data3)
data3 <-gsub("상담내용" ,"", data3)
data3 <-gsub("있는걸로" ,"", data3)
data3 <-gsub("다름이 아니고" ,"", data3)
data3 <-gsub("생각" ,"", data3)
data3 <-gsub("들이" ,"", data3)
data3 <-gsub("ㅎㅎ" ,"", data3)
data3 <-gsub("추울까봐" ,"", data3)
data3 <-gsub("사실입니다만" ,"", data3)
data3 <-gsub("사실" ,"", data3)
data3 <-gsub("하게" ,"", data3)
data3 <-gsub("서울시" ,"", data3)
data3 <-gsub("답변" ,"", data3)

data3

write(unlist(data3), "응답소1.txt")
data4 <- read.table("응답소1.txt")
data4
nrow(data4)
wordcount <- table(data4)
wordcount

head(sort(wordcount, decreasing=T), 30)
txt <- readLines("gsub1.txt")

par(mar=c(0.1,0.1,0.1,0.1))
set.seed(1212)
palete <- brewer.pal(7,"Set2")
wordcloud(names(wordcount), freq=wordcount, scale=c(5,1), rot.per=0.25, min.freq=2,
          random.order=F, random.color=T, colors=palete)
legend(0.3, 1, "2015년 1월 응답소", cex=0.8, fill=NA, border=NA, bg="white", text.col="grey", text.font=2, box.col="black")