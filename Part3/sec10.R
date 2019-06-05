# 정규표현식

char <- c('apple','Apple','APPLE','banana','grape')
grep('apple',char)

char2 <- c('apple','banana')

grep(paste(char2, collapse='|'),char,value=T)
grep ('pp', char)
grep ('pp', char, value = T)
grep ('^A', char, value = T)
grep ('e$', char, value = T)

char2 <- c('grape1','apple1','apple','orange','Apple')
grep('ap',char2,value = T)
grep('[1-9]',char2,value = T)
grep('\\d',char2,value = T)
grep('[[:upper:]]',char2,value = T)
grep('[A-Z]',char2,value = T)

nchar(char)
nchar("suyeoni")
nchar("수여니")

paste('수','연','이')
paste('su','yeon','ii',sep = '')
paste('su','yeon','ii',sep = '/')
paste('i','\'m','hungry')

substr('abc123',3,3)
substr('abc123',3,4)

strsplit('2014/11/22',split='/')

grep('-','010-3091-9776')
regexpr('-','010-3091-9776')

