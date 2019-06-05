# 조건식과 반복
myAbs <- function(x) {
  if (x >=0) {
    return(x)
  } else {
    return(-x)
  }
}

myAbs(-3.2)
myAbs(4.5)
myAbs2 <- function(x) {
  if (x >=0) {
    return(x)
  }
    return(-x)
}
myAbs2(-3.2)
myAbs2(4.5)

myf <- function(x) {
  if(x>0){
    return(x*x)
  }else{
      return(0)
    }
}
myf(4.6)
myf(-2.4)

mf <- function(x) {
  if (x>0){
    return(2*x)
  }else if (x==0) {
    return(0)
  } else {
    return(-2*x)
    }
    }
mf(4.6)
mf(0)
mf(-2.4)

no<-scan()
result <- ifelse(no%%2==0,'짝수','홀수')
result


1.
myf1 <- function(x) {
  # return(ifelse(x > 5, 1, 0))
  if(x>5) {
    return(1) }
  else if (x<=5){
    return(0)
  }
}

2.
myf2 <- function(x) {
  # return(ifelse(x > 0, 1, 0))
  if(x>0){
    return(1)
  }else{
    return(0)
  }
}

3. 
myf3 <- function(a,b) {
  # return(ifelse(x > y, -x , -y))
  if(a>b){
    return(a-b)
  }else{
    return(b-a)
  }
}

4.
myf4 <- function(x) {
  if (x>1 & x<5) {
    return(1)
  } else if (x>5) {
    return(10)
  }
}



xx <-c(T,T,F)
yy <-c(F,T,F)
xx&yy
xx && yy



5.
mf5<-function(input){
  if (input == 'Y'|| input == 'y'){
    return('yes')
  }else{
    return('Not yes')
  }
}
ans <- scan(what = "")
mf5(ans)


myrealD <- function(a, b, c) {
  D = b*b - 4*a*c
  if (abs(0) < 1e-5) {
    return(1)
  } else if (D > 0) {
    return(2)
  } else {
    return(0)
  }
}
  
a<- 1.000000001
b<- -2.000000001
c<- 1.000000002
myrealD(a,b,c)




