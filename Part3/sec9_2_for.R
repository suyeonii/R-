# 반복문
number <- 0
while (number < 5) {
  print(number)
  number <- number + 1
}

number <- 0
while (number < 5) {
  print(number)
  if (number == 3)
    break
  number <- number + 1
}

짝수
number <- -1
while (number <= 10) {
  number <- number + 1
  if (number %% 2 ==1)
    next
  print(number)
}

홀수
number <- 0
while (number <= 10) {
  number <- number + 1
  if (number %% 2 ==0)
    next
  print(number)
}

for (i in 1:10) {
  print(i)
}

sum <- 0
for (i in 1:100) {
  sum <- sum + i
}
print(sum)

sum <- 0
for (i in 1:100) {
  if(i %% 3 == 0)
    sum <- sum + i
}
print(sum)

multiple <- function(limit, number) {
  sum <- 0 
  for (i in 1:limit) {
    if (i %% number == 0)
      sum <- sum + i
  }
  return(sum)
}
multiple(1000, 4)

colors <- c()
for (i in 1:length(my_ray4)) {
  if(my_ray[i]>=10) {
    colors <-c(colors,"red")}
  else if(my_ray4[i]>=6) {
    colors <-c(colors,"yellow") }
  else{
    colors <- c(colors,"green")}
}

library(stringr)
for (i in 1:5) {
  line <- ''
  for (k in 1:i) { 
    line <- str_c(line,'#')
  }
print(line)
}

for (i in 5:1) {
  line <- ''
  for (k in 1:i) { 
    line <- str_c(line,'#')
  }
  print(line)
}

mf4 <- function(a,b) {
  if((a > 0) && (b > 0)) {
    c <- a * b
    return(c)  }
  else {
    c <- a + b
    return(c)  }
}
mf4(2,3)
mf4(2,-1)


for (i in 1:5) {
  line <- ''
  if (i != 1) {
    for (k in 1:(i-1))
      line <- str_c(line, ' ')
  }
  for (k in i:5) {
    line <- str_c(line, '#')
  }
  print(line)
}


for (i in 1:5) {
  line <- ''
  for (k in 1:i) { 
    line <- str_c(line,'#')
  }
  print(line)
}


# 구구단
for (i in seq(1:9)) {
  for (k in 1:9) {
    print(paste(i,'*',k,'=',i*k))
  }
}

# 다이아몬드
while (T) {
  for (i in 1:4) {
    line <- ''
    if (i != 4) {
      for (k in 1:(3 - (i -1)))
        line <- str_c(line, ' ')
    }
    for (k in 1:(2*i - 1))
      line <- str_c(line, '#')
    print(line)
  }
  for (i in 3:1) {
    line <- ''
    for (k in 1:(3 - (i -1)))
      line <- str_c(line, ' ')
    for (k in 1:(2*i - 1))
      line <- str_c(line, '#')
    print(line)
  }
  break;
}
    
# 약수구하기
getDenominator <- function(x) {
  den <- c(1)
  if(x >= 2) {
    for (i in 2:x) {
      if (x %% i == 0)
        den <- c(den, i)
    }
  }
  return(den)
}

getDenominator(60)