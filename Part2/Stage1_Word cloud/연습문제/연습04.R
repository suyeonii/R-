setwd("d:/Workspace/TIL/R_Data_Analysis/Part2/Stage1_Word cloud/연습문제/")
library(KoNLP)
library(wordcloud)
library(RColorBrewer)
library(stringr)
useSejongDic()



data1 <- readLines("응답소_2015_04.txt")
data2 <- sapply(data1, extractNoun, USE.NAMES=F) ;data2
data3 <- unlist(data2) ;data3
data3 <- str_replace_all(data3, "[^[:alpha:]]", "") ;data3
data3 <- Filter(function(x) {nchar(x) > 1}, data3) ;data3
head(unlist(data3), 30)

data3 <- gsub("\\d+", "", data3)
data3 <- gsub("제목", "", data3)
data3 <- gsub("서울시장", "", data3)
data3 <- gsub("상담내용", "", data3)
data3 <- gsub("서울", "", data3)
data3 <- gsub("통장님", "", data3)
data3 <- gsub("그정도는", "", data3)
data3 <- gsub("이것", "", data3)
data3 <- gsub("문밖", "", data3)
data3 <- gsub("미국이나", "", data3)
data3 <- gsub("저희", "", data3)
data3 <- gsub("민원", "", data3)
data3 <- gsub("시장", "", data3)
data3 <- gsub("사람", "", data3)
data3 <- gsub("요청", "", data3)
data3 <- gsub("이유", "", data3)
data3 <- gsub("사업", "", data3)
data3 <- gsub("내용", "", data3)
data3 <- gsub("들이", "", data3)
data3 <- gsub("하게", "", data3)
data3 <- gsub("경우", "", data3)
data3 <- gsub("답변", "", data3)
data3 <- gsub("문제", "", data3)
data3 <- gsub("시민", "", data3)
data3 <- gsub("공개", "", data3)
data3 <- gsub("주민", "", data3)
data3 <- gsub("당시", "", data3)
data3 <- gsub("우리", "", data3)
data3 <- gsub("안녕", "", data3)
data3 <- gsub("생각", "", data3)
data3 <- gsub("시", "", data3)

write(unlist(data3), "응답소4.txt")
data4 <- read.table("응답소4.txt")
data4
nrow(data4)
wordcount <- table(data4)
wordcount

head(sort(wordcount, decreasing=T), 20)
set.seed(1212)
palete <- brewer.pal(7,"Set2")
wordcloud(names(wordcount), freq=wordcount, scale=c(5,1), rot.per=0.25, min.freq=2,
          random.order=F, random.color=T, colors=palete)
legend(0.3, 1, "2015년 4월 응답소", cex=0.8, fill=NA, border=NA, bg="white", text.col="grey", text.font=2, box.col="black")
par(mar=c(0.1,0.1,0.1,0.1))

