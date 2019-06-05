date4 <- seq(from=as.Date("2015-01-01"),
             to=as.Date("2015-01-31"),by=1)
date4

vec1 <- c('사과','배','감','버섯','고구마')
vec1[-3]
vec1 <- c('봄','여름','가을','겨울')
vec2 <- c('봄','여름','늦가을','초가을')
union(vec1,vec2)
setdiff(vec1,vec2)
intersect(vec1,vec2)

1
season <- matrix (c('봄','여름','가을','겨울'),nrow=2,);season
season <- matrix (c('봄','여름','가을','겨울'),nrow=2,byrow=T);season
2
season[,2]
3
season2 <- rbind(season,c('초봄','초가을'));season2
4
season3 <- cbind(season2,c('초여름','초겨울','한겨울'));season3

data1 <- read.csv('data1.csv') ;data1
apply (sum(2:15))
