#Function
mat1 <- matrix(c(1:6),nrow=2,byrow=T);mat1
a <- c(1,1,1)
a <- rep(1,3)
sweep(mat1,2,a)
b <- matrix(c(2,2));b
sweep(mat1,1,b)   # 행 방향으로 sweep

a <- c(1:5); length(a)
length(mat1)
library(googleVis)
length(Fruits)

log(10)
log10(10)
sin(pi)
abs(-1)      #절대값
v2 <- c(1,-2,3,-4)
abs(v2)

ceiling(2.3) #올림
floor(2.3)   #내림
ceiling(-2.3)
floor(-2.3)
round(2.5)   #반올림
choose(5,3) ㅜ ㅜ 수학 시렁 

#함수를 직접 만들어 사용하기~~~~
myfunc <- function(){
  return(10)
}
myfunc()
myfunc2 <- function(x) {
  y=x*x;
  return(y)
}
myfunc2(-3)

#연습문제
myfunc3 <- function(a,b){
  c <- a-b
  return(c)
}
myfunc3(3,2)
myfunc3(2,3)

myfunc4 <- function(a,b){
  c <- abs(a-b)
  return(c)
}
myfunc4(2,3)
myfunc4(3,2)

위에서 작성한 함수 활용
myfunc4 <- function(a,b){
  c <- abs(myfunc3(a,b))
  return(c)
}
myfunc4(2,3)
myfunc4(3,2)

