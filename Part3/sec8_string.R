install.packages("reshape2")
library(reshape2)
fruits
melt(Fruits,id='Year')
read.csv(fruits_10.csv)
melt(fruits.id=c('year','name'))
read.csv(fruits_10.csv)


install.packages("stringr")
library(stringr)
fruits<-c('apple','Apple','banana','pineapple')
str_detect(fruits,'A')
str_detect(fruits,'a')
str_detect(fruits,'^a')
str_detect(fruits,'e$')
str_detect(fruits,'^[aA]')
str_detect(fruits,'[aA]')

str_detect(fruits,ignore.case('a'))
str_detect(fruits, regex('a', ignore_case=T))

fruits
str_count(fruits, 'a')

str_c("apple","banana")
str_c("Fruits: ",fruits)
str_c(fruits," name is ",fruits)
str_c(fruits,collapse="")
str_c(fruits,collapse="-")

str_dup(fruits,3)

str_length('apple')
str_length('fruits')
str_length(fruits)
str_length('과일')

str_locate('apple','a')
str_locate(fruits,'a')
str_locate('apple','app')

str_replace('apple','p','*')
str_replace('apple','p','**')
str_replace_all('apple','p','*')

fruits <- str_c('apple','/','orange','/','banana');fruits
str_split(fruits,"/")       #list

fruits
str_sub(fruits,start=1,end=3)
str_sub(fruits,start=6,end=9)
str_sub(fruits,start=7)
str_sub(fruits,start=-5)      # -는 뒤에서부터 시작

str_trim('  apple banana berry  ')
str_trim('\t   apple banana berry  ')
str_trim('  apple banana berry  \n  apple banana berry  ')
str_trim('  apple banana berry  \n  ')

