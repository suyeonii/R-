install.packages('sqldf')
library(sqldf)
library(googleVis)
Fruits

sqldf('select * from Fruits WHERE Fruit=\'Apples\'') 
sqldf('select * from Fruits LIMIT 3,5')   # LIMIT 0,3
sqldf('select * from Fruits LIMIT 3') 

sqldf('select * from Fruits order by year') 
sqldf('select * from Fruits order by year desc') 
sqldf('select Fruit, sum(sales) from Fruits group by fruit') 
sqldf('select Fruit, sum(sales), sum(expenses), sum(profit) from Fruits group by fruit') 
sqldf('select year, avg(sales), avg(expenses), avg(profit) from Fruits group by year') 
sqldf('select year, avg(sales), avg(expenses), avg(profit) from Fruits group by year order by avg(profit) desc') 
sqldf('select max(sales), min(sales) from Fruits') 
sqldf('select min(sales), max(sales) from Fruits') 

sqldf('select * from Fruits WHERE sales=81')
sqldf('select * from Fruits WHERE sales=
      (select min(sales) from Fruits)')
sqldf('select * from Fruits WHERE expenses=
      (select max(expenses) from Fruits)')
sqldf('select * from Fruits WHERE sales in
      (select min(sales), max(sales) from Fruits)')

sqldf('select * from Fruits WHERE sales in (select sales from Fruits where sales > 90)')

song <- read.csv("song.csv",header = F, fileEncoding = 'utf8');song
names(song) <-c('_id','title','lyrics','girl_group_id')
song
girl_group <- read.csv("girl_group.csv",fileEncoding = 'utf8',header = F);girl_group
names(girl_group) <- c('_id','name','debut');girl_group

sqldf("select gg._id, gg.name, gg.debut, s.title
      from girl_group AS gg 
      inner join song as s
      on gg._id = s.girl_group_id")
sqldf("select gg._id, gg.name, gg.debut, s.title
      from girl_group gg 
      join song s
      on gg._id = s.girl_group_id")

sqldf(c('update Fruits SET profit=40 where fruit=\'Apple\' AND year=2008','select * from Fruits'))
# 화면에 보이는 내용만 변경
sqldf(c('delete from Fruits where fruit=\'Apple\' AND year=2008','select * from Fruits'))


