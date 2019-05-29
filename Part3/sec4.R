setwd("d:/Workspace/TIL/R_Data_Analysis/Part3/Data")
txt1 <- read.csv("factor_test.csv.txt")
txt1
factor1 <- factor(txt1$blood)
factor1
summary(factor1)
sex1 <- factor(txt1$sex)
summary(sex1)

Sys.Date()
Sys.time()
date()
