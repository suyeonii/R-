install.packages("ggplot2")
library(ggplot2)
all graphs
install.packages("gridExtra")
library(gridExtra)

korean <- read.table("학생별국어성적_new.txt", header=T, sep=",")
korean
ggplot(korean, aes(x=이름, y=점수)) + geom_point()                # positional argument
ggplot(data=korean, mapping=aes(x=이름, y=점수)) + geom_point()   # keyword argument

ggplot(korean, aes(x=이름, y=점수)) + geom_bar(stat='identity') 
ggplot(korean, aes(x=이름, y=점수)) + geom_bar(stat='identity',fill="grey", colour="black")
gg <- ggplot(korean, aes(x=이름, y=점수)) + geom_bar(stat='identity', fill="black", colour="black")
gg + theme(axis.text.x=element_text(angle=45, hjust=1, vjust=1, color="blue", size=8))

score_kem <- read.csv("학생별과목별성적_국영수_new.csv", header=T);score_kem
library(dplyr)
sort_kem <- arrange(score_kem,이름,과목);sort_kem
sort_kem2 <- ddply(sort_kem, "이름", transform, 누적합계=cumsum(점수));sort_kem2
sort_kem3 <- ddply(sort_kem, "이름", transform, 누적합계=cumsum(점수), label=cumsum(점수)-0.5*점수)
sort_kem4 <- sort_kem %>% group_by(이름) %>% mutate(누적합계=cumsum(점수));sort_kem4
sort_kem5 <- sort_kem %>% group_by(이름) %>% mutate(label=cumsum(점수)-0.5*점수);sort_kem5
sort_kem6 <- sort_kem %>% group_by(이름) %>% mutate(label=cumsum(점수)) %>%
  mutate(label=cumsum(점수)-0.5*점수);sort_kem6
sort_kem7 <- sort_kem %>% group_by(이름) %>% 
  mutate(누적합계=cumsum(점수), label=cumsum(점수)-0.5*점수);sort_kem7

ggplot(sort_kem3, aes(x=이름, y=점수, fill=과목)) + geom_bar(stat="identity") + 
  geom_text(aes(y=label,label=paste(점수,'점')),colour="black", size=4)

gg2 <- ggplot(sort_kem3, aes(x=이름, y=점수, fill=과목)) + 
  geom_bar(stat="identity") + geom_text(aes(y=label=pates(점수,'점')),colour="black",size=4) + 
  guides(fill=guide_legend(reverse=T))

gg2 <- theme(axis.text.x=element_text(angle=45, hjust=1, vjust=1, colour="black", size=8))

score <- read.table("학생별전체성적_new.txt", header=T, sep=",");score
score[,c("이름","영어")]

ggplot(score,aes(x=영어, y=reorder(이름,영어)))+ geom_point(size=6) + theme_bw() + 
        theme(panel.grid.minor.x=element_blank(), 
        panel.grid.major.y=element_line(color="red", linetype="dashed"))

ggplot(score,aes(x=영어, y=reorder(이름,영어)))+ geom_point(size=6) + theme_bw() + 
  theme(panel.grid.minor.x=element_blank(), 
        panel.grid.major.y=element_line(color="red", linetype="dashed"))

ggplot(score, aes(x=영어, y=reorder(이름,영어))) + 
  geom_segment(aes(yend=이름), xend=0, color="blue") + 
  geom_point(size=6, color="green") + 
  theme_bw() + 
  theme(panel.grid.major.y=element_blank())

v_mt <- mtcars
str(mtcars)
graph1 <- ggplot(v_mt, aes(x=hp, y=mpg)) + geom_point();graph1
graph2 <- ggplot(v_mt, aes(x=hp, y=mpg)) + geom_point(colour="blue");graph2
graph3 <- ggplot(v_mt, aes(x=hp, y=mpg)) + geom_point(colour="blue") + 
  geom_point(aes(color=factor(am)));graph3
graph4 <- ggplot(v_mt, aes(x=hp, y=mpg)) + geom_point(aes(color=factor(am)), size=5);graph4
graph5 <- graph1 + geom_point(aes(size=wt));graph5
graph6 <- graph1 + geom_point(aes(shape=factor(am), size=wt));graph6
# 종류별로 크기, 모양, 색상 지정하기
graph7 <- graph1 + geom_point(aes(shape=factor(am), color=factor(am), size=wt)) + 
  scale_color_manual(values=c("red","green"));graph7
graph8 <- graph1 + geom_point(color="red") + geom_line();graph8
graph9 <- graph1 + geom_point(color="blue") + labs(x="마력", y="연비(mile/gallon)");graph9


library(dplyr)
three <- read.csv("학생별과목별성적_3기_3명.csv", header=T);three
sort_score <- arrange(three,이름,과목); sort_score
ggplot(sort_score, aes(x=과목, y=점수, color=이름, group=이름)) + geom_line()
ggplot(sort_score, aes(x=과목, y=점수, color=이름, group=이름)) + geom_line() + geom_point()
ggplot(sort_score, aes(x=과목, y=점수, color=이름, group=이름, fill=이름)) + geom_line(linetype=20) + geom_point(size=6, shape=22)
ggplot(sort_score, aes(x=과목, y=점수, color=이름, group=이름, fill=이름)) + geom_line() + 
  geom_point(size=3, shape=22) + ggtitle("학생별 과목별 성적")

# geom_area
dis <- read.csv("1군전염병발병현황_년도별.csv", stringsAsFactors=F);dis
str(dis)
ggplot(dis, aes(x=년도별, y=장티푸스, group=1)) + geom_line()
ggplot(dis, aes(x=년도별, y=장티푸스, group=1)) + geom_area()
ggplot(dis, aes(x=년도별, y=장티푸스, group=1)) + geom_area() + geom_point()
ggplot(dis, aes(x=년도별, y=장티푸스, group=1)) + geom_area(fill="cyan", alpha=0.3) + geom_line(color="blue")
