library(dplyr)
library(ggplot2)

## total ticket data set 
df <- Citations.issused.starting.8.29.22

# How many citations are there per lot? 
df<- df[,1:5]
summary(df)
n_distinct(df$Location)
locations <- as.data.frame(table(df$Location))

# how many citations are there per type?  
summary(df)
n_distinct(df$Base.Amount)
amounts <- table(df$Base.Amount)
percents<- (amounts/sum(amounts))*100
amounts

# how many citations are there >$100 by lot? 
expensive_tx <-filter(df, Base.Amount > 100)
expensive_locs <- as.data.frame(table(expensive_tx$Location))


# total appeals  
df2 <- Appealed_Citations_By_Appeal

# what percent of appeals are accepted? 73.727%
   # 8,427 completed appeals and 6,123 appeals resulted in a voided citation, a fine reduction, or the citation was dropped to a warming
    6213/8427
   # what percent of appeals resulted in a fine reduction? 41.189%   
    3471/8427
   # what percent of appeals resulted in a void? 32.526%   
    2741/8427
   # what percent of appeals resulted in a warning? 1%>
    7/8427 

# what percent of second appeals get accepted? 10.909%
   # there are 55 completed second appeals, 3 resulted in a voided citation and three resulted in a fine reduction  
    6/55

# what percent of appeals get accept by lot? The parking ticket appeal data does not have the lot variable
# how many appeals are there per lot? The parking ticket appeal data does not have the lot variable
    