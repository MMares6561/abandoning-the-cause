#################################################################
##                       House Vote Data                       ##
##                  Data Cleaning & Filtering                  ##
#################################################################

#2004
##Cleaned up this section
total_house_nep2004 <- subset((DropNA(nep2004, "HOU04", message = TRUE)), HOU04!=0)
total_house_nep2004_result <-round(prop.table(table(total_house_nep2004$HOU04)),3)

##No Change
lgb_house_nep2004 <-subset(total_house_nep2004, GAY==1)
lgb_house_nep2004_result <- round(prop.table(table(lgb_house_nep2004$HOU04)),3)
straight_house_nep2004 <- subset(total_house_nep2004, GAY==2)
straight_house_nep2004_result <- round(prop.table(table(straight_house_nep2004$HOU04)),3)
lgb_men_house_nep2004 <- subset(lgb_house_nep2004, SEX==1)
lgb_men_house_nep2004_result <- round(prop.table(table(lgb_men_house_nep2004$HOU04)),3)
straight_men_house_nep2004 <- subset(straight_house_nep2004, SEX==1)
straight_men_house_nep2004_result <- round(prop.table(table(straight_men_house_nep2004$HOU04)),3)
lgb_women_house_nep2004 <- subset(lgb_house_nep2004, SEX==2)
lgb_women_house_nep2004_result <- round(prop.table(table(lgb_women_house_nep2004$HOU04)),3)
straight_women_house_nep2004 <- subset(straight_house_nep2004, SEX==2)
straight_women_house_nep2004_result <- round(prop.table(table(straight_women_house_nep2004$HOU04)),3)
lgb_white_house_nep2004 <- subset(lgb_house_nep2004, RACE==1)
lgb_white_house_nep2004_result <- round(prop.table(table(lgb_white_house_nep2004$HOU04)),3)
straight_white_house_nep2004 <- subset(straight_house_nep2004, RACE==1)
straight_white_house_nep2004_result <- round(prop.table(table(straight_white_house_nep2004$HOU04)),3)
lgb_white_men_house_nep2004 <- subset(lgb_men_house_nep2004, RACE==1)
lgb_white_men_house_nep2004_result <- round(prop.table(table(lgb_white_men_house_nep2004$HOU04)),3)
straight_white_men_house_nep2004 <- subset(straight_men_house_nep2004, RACE==1)
straight_white_men_house_nep2004_result <- round(prop.table(table(straight_white_men_house_nep2004$HOU04)),3)

##Added White Women
lgb_white_women_house_nep2004 <- subset(lgb_women_house_nep2004, RACE==1)
lgb_white_women_house_nep2004_result <- round(prop.table(table(lgb_white_women_house_nep2004$HOU04)),3)
straight_white_women_house_nep2004 <- subset(straight_women_house_nep2004, RACE==1)
straight_white_women_house_nep2004_result <- round(prop.table(table(straight_white_women_house_nep2004$HOU04)),3)

##Fixed POC
lgb_poc_house_nep2004 <- (subset((DropNA(lgb_house_nep2004, "RACE", message=TRUE)), RACE!=1))
lgb_poc_house_nep2004_result <- round(prop.table(table(lgb_poc_house_nep2004$HOU04)),3)

straight_poc_house_nep2004 <- subset((DropNA(straight_house_nep2004, "RACE", message=TRUE)), RACE!=1)
straight_poc_house_nep2004_result <- round(prop.table(table(straight_poc_house_nep2004$HOU04)),3)

##No Change
lgb_poc_men_house_nep2004 <- subset(lgb_poc_house_nep2004, SEX==1)
lgb_poc_men_house_nep2004_result <- round(prop.table(table(lgb_poc_men_house_nep2004$HOU04)),3)
straight_poc_men_house_nep2004 <- subset(straight_poc_house_nep2004, SEX==1)
straight_poc_men_house_nep2004_result <- round(prop.table(table(straight_poc_men_house_nep2004$HOU04)),3)
lgb_poc_women_house_nep2004 <- subset(lgb_poc_house_nep2004, SEX==2)
lgb_poc_women_house_nep2004_result <- round(prop.table(table(lgb_poc_women_house_nep2004$HOU04)),3)
straight_poc_women_house_nep2004 <- subset(straight_poc_house_nep2004, SEX==2)
straight_poc_women_house_nep2004_result <- round(prop.table(table(straight_poc_women_house_nep2004$HOU04)),3)

#2006
total_house_nep2006 <- DropNA(nep2006, "HOU", message = TRUE)
total_house_nep2006 <- subset(total_house_nep2006, HOU!=0)
total_house_nep2006_result <-round(prop.table(table(total_house_nep2006$HOU)),3)
lgb_house_nep2006 <-subset(total_house_nep2006, GAY==1)
lgb_house_nep2006_result <- round(prop.table(table(lgb_house_nep2006$HOU)),3)
straight_house_nep2006 <- subset(total_house_nep2006, GAY==2)
straight_house_nep2006_result <- round(prop.table(table(straight_house_nep2006$HOU)),3)
lgb_men_house_nep2006 <- subset(lgb_house_nep2006, SEX==1)
lgb_men_house_nep2006_result <- round(prop.table(table(lgb_men_house_nep2006$HOU)),3)
straight_men_house_nep2006 <- subset(straight_house_nep2006, SEX==1)
straight_men_house_nep2006_result <- round(prop.table(table(straight_men_house_nep2006$HOU)),3)
lgb_women_house_nep2006 <- subset(lgb_house_nep2006, SEX==2)
lgb_women_house_nep2006_result <- round(prop.table(table(lgb_women_house_nep2006$HOU)),3)
straight_women_house_nep2006 <- subset(straight_house_nep2006, SEX==2)
straight_women_house_nep2006_result <- round(prop.table(table(straight_women_house_nep2006$HOU)),3)
lgb_white_house_nep2006 <- subset(lgb_house_nep2006, RACE==1)
lgb_white_house_nep2006_result <- round(prop.table(table(lgb_white_house_nep2006$HOU)),3)
straight_white_house_nep2006 <- subset(straight_house_nep2006, RACE==1)
straight_white_house_nep2006_result <- round(prop.table(table(straight_white_house_nep2006$HOU)),3)
lgb_white_men_house_nep2006 <- subset(lgb_men_house_nep2006, RACE==1)
lgb_white_men_house_nep2006_result <- round(prop.table(table(lgb_white_men_house_nep2006$HOU)),3)
straight_white_men_house_nep2006 <- subset(straight_men_house_nep2006, RACE==1)
straight_white_men_house_nep2006_result <- round(prop.table(table(straight_white_men_house_nep2006$HOU)),3)
lgb_poc_house_nep2006 <- DropNA(lgb_house_nep2006, "RACE", message=TRUE)
lgb_poc_house_nep2006 <- subset(lgb_house_nep2006, RACE!=1)
lgb_poc_house_nep2006_result <- round(prop.table(table(lgb_poc_house_nep2006$HOU)),3)
straight_poc_house_nep2006 <- DropNA(straight_house_nep2006, "RACE", message=TRUE)
straight_poc_house_nep2006 <- subset(straight_house_nep2006, RACE!=1)
straight_poc_house_nep2006_result <- round(prop.table(table(straight_poc_house_nep2006$HOU)),3)
lgb_poc_men_house_nep2006 <- subset(lgb_poc_house_nep2006, SEX==1)
lgb_poc_men_house_nep2006_result <- round(prop.table(table(lgb_poc_men_house_nep2006$HOU)),3)
straight_poc_men_house_nep2006 <- subset(straight_poc_house_nep2006, SEX==1)
straight_poc_men_house_nep2006_result <- round(prop.table(table(straight_poc_men_house_nep2006$HOU)),3)
lgb_poc_women_house_nep2006 <- subset(lgb_poc_house_nep2006, SEX==2)
lgb_poc_women_house_nep2006_result <- round(prop.table(table(lgb_poc_women_house_nep2006$HOU)),3)
straight_poc_women_house_nep2006 <- subset(straight_poc_house_nep2006, SEX==2)
straight_poc_women_house_nep2006_result <- round(prop.table(table(straight_poc_women_house_nep2006$HOU)),3)

#2008
total_house_nep2008 <- DropNA(nep2008, "HOUUS08", message = TRUE)
total_house_nep2008 <- subset(total_house_nep2008, HOUUS08!=0)
total_house_nep2008_result <-round(prop.table(table(total_house_nep2008$HOUUS08)),3)
lgb_house_nep2008 <-subset(total_house_nep2008, GAY==1)
lgb_house_nep2008_result <- round(prop.table(table(lgb_house_nep2008$HOUUS08)),3)
straight_house_nep2008 <- subset(total_house_nep2008, GAY==2)
straight_house_nep2008_result <- round(prop.table(table(straight_house_nep2008$HOUUS08)),3)
lgb_men_house_nep2008 <- subset(lgb_house_nep2008, SEX==1)
lgb_men_house_nep2008_result <- round(prop.table(table(lgb_men_house_nep2008$HOUUS08)),3)
straight_men_house_nep2008 <- subset(straight_house_nep2008, SEX==1)
straight_men_house_nep2008_result <- round(prop.table(table(straight_men_house_nep2008$HOUUS08)),3)
lgb_women_house_nep2008 <- subset(lgb_house_nep2008, SEX==2)
lgb_women_house_nep2008_result <- round(prop.table(table(lgb_women_house_nep2008$HOUUS08)),3)
straight_women_house_nep2008 <- subset(straight_house_nep2008, SEX==2)
straight_women_house_nep2008_result <- round(prop.table(table(straight_women_house_nep2008$HOUUS08)),3)
lgb_white_house_nep2008 <- subset(lgb_house_nep2008, RACE==1)
lgb_white_house_nep2008_result <- round(prop.table(table(lgb_white_house_nep2008$HOUUS08)),3)
straight_white_house_nep2008 <- subset(straight_house_nep2008, RACE==1)
straight_white_house_nep2008_result <- round(prop.table(table(straight_white_house_nep2008$HOUUS08)),3)
lgb_white_men_house_nep2008 <- subset(lgb_men_house_nep2008, RACE==1)
lgb_white_men_house_nep2008_result <- round(prop.table(table(lgb_white_men_house_nep2008$HOUUS08)),3)
straight_white_men_house_nep2008 <- subset(straight_men_house_nep2008, RACE==1)
straight_white_men_house_nep2008_result <- round(prop.table(table(straight_white_men_house_nep2008$HOUUS08)),3)
lgb_poc_house_nep2008 <- DropNA(lgb_house_nep2008, "RACE", message=TRUE)
lgb_poc_house_nep2008 <- subset(lgb_house_nep2008, RACE!=1)
lgb_poc_house_nep2008_result <- round(prop.table(table(lgb_poc_house_nep2008$HOUUS08)),3)
straight_poc_house_nep2008 <- DropNA(straight_house_nep2008, "RACE", message=TRUE)
straight_poc_house_nep2008 <- subset(straight_house_nep2008, RACE!=1)
straight_poc_house_nep2008_result <- round(prop.table(table(straight_poc_house_nep2008$HOUUS08)),3)
lgb_poc_men_house_nep2008 <- subset(lgb_poc_house_nep2008, SEX==1)
lgb_poc_men_house_nep2008_result <- round(prop.table(table(lgb_poc_men_house_nep2008$HOUUS08)),3)
straight_poc_men_house_nep2008 <- subset(straight_poc_house_nep2008, SEX==1)
straight_poc_men_house_nep2008_result <- round(prop.table(table(straight_poc_men_house_nep2008$HOUUS08)),3)
lgb_poc_women_house_nep2008 <- subset(lgb_poc_house_nep2008, SEX==2)
lgb_poc_women_house_nep2008_result <- round(prop.table(table(lgb_poc_women_house_nep2008$HOUUS08)),3)
straight_poc_women_house_nep2008 <- subset(straight_poc_house_nep2008, SEX==2)
straight_poc_women_house_nep2008_result <- round(prop.table(table(straight_poc_women_house_nep2008$HOUUS08)),3)

#2010
total_house_nep2010 <- DropNA(nep2010, "HOU", message = TRUE)
total_house_nep2010 <- subset(total_house_nep2010, HOU!=0)
total_house_nep2010_result <-round(prop.table(table(total_house_nep2010$HOU)),3)
lgb_house_nep2010 <-subset(total_house_nep2010, GAY==1)
lgb_house_nep2010_result <- round(prop.table(table(lgb_house_nep2010$HOU)),3)
straight_house_nep2010 <- subset(total_house_nep2010, GAY==2)
straight_house_nep2010_result <- round(prop.table(table(straight_house_nep2010$HOU)),3)
lgb_men_house_nep2010 <- subset(lgb_house_nep2010, SEX==1)
lgb_men_house_nep2010_result <- round(prop.table(table(lgb_men_house_nep2010$HOU)),3)
straight_men_house_nep2010 <- subset(straight_house_nep2010, SEX==1)
straight_men_house_nep2010_result <- round(prop.table(table(straight_men_house_nep2010$HOU)),3)
lgb_women_house_nep2010 <- subset(lgb_house_nep2010, SEX==2)
lgb_women_house_nep2010_result <- round(prop.table(table(lgb_women_house_nep2010$HOU)),3)
straight_women_house_nep2010 <- subset(straight_house_nep2010, SEX==2)
straight_women_house_nep2010_result <- round(prop.table(table(straight_women_house_nep2010$HOU)),3)
lgb_white_house_nep2010 <- subset(lgb_house_nep2010, RACE==1)
lgb_white_house_nep2010_result <- round(prop.table(table(lgb_white_house_nep2010$HOU)),3)
straight_white_house_nep2010 <- subset(straight_house_nep2010, RACE==1)
straight_white_house_nep2010_result <- round(prop.table(table(straight_white_house_nep2010$HOU)),3)
lgb_white_men_house_nep2010 <- subset(lgb_men_house_nep2010, RACE==1)
lgb_white_men_house_nep2010_result <- round(prop.table(table(lgb_white_men_house_nep2010$HOU)),3)
straight_white_men_house_nep2010 <- subset(straight_men_house_nep2010, RACE==1)
straight_white_men_house_nep2010_result <- round(prop.table(table(straight_white_men_house_nep2010$HOU)),3)
lgb_poc_house_nep2010 <- DropNA(lgb_house_nep2010, "RACE", message=TRUE)
lgb_poc_house_nep2010 <- subset(lgb_house_nep2010, RACE!=1)
lgb_poc_house_nep2010_result <- round(prop.table(table(lgb_poc_house_nep2010$HOU)),3)
straight_poc_house_nep2010 <- DropNA(straight_house_nep2010, "RACE", message=TRUE)
straight_poc_house_nep2010 <- subset(straight_house_nep2010, RACE!=1)
straight_poc_house_nep2010_result <- round(prop.table(table(straight_poc_house_nep2010$HOU)),3)
lgb_poc_men_house_nep2010 <- subset(lgb_poc_house_nep2010, SEX==1)
lgb_poc_men_house_nep2010_result <- round(prop.table(table(lgb_poc_men_house_nep2010$HOU)),3)
straight_poc_men_house_nep2010 <- subset(straight_poc_house_nep2010, SEX==1)
straight_poc_men_house_nep2010_result <- round(prop.table(table(straight_poc_men_house_nep2010$HOU)),3)
lgb_poc_women_house_nep2010 <- subset(lgb_poc_house_nep2010, SEX==2)
lgb_poc_women_house_nep2010_result <- round(prop.table(table(lgb_poc_women_house_nep2010$HOU)),3)
straight_poc_women_house_nep2010 <- subset(straight_poc_house_nep2010, SEX==2)
straight_poc_women_house_nep2010_result <- round(prop.table(table(straight_poc_women_house_nep2010$HOU)),3)

#2012
total_house_nep2012 <- DropNA(nep2012, "HOU", message = TRUE)
total_house_nep2012 <- subset(total_house_nep2012, HOU!=0)
total_house_nep2012_result <-round(prop.table(table(total_house_nep2012$HOU)),3)
lgb_house_nep2012 <-subset(total_house_nep2012, GAY==1)
lgb_house_nep2012_result <- round(prop.table(table(lgb_house_nep2012$HOU)),3)
straight_house_nep2012 <- subset(total_house_nep2012, GAY==2)
straight_house_nep2012_result <- round(prop.table(table(straight_house_nep2012$HOU)),3)
lgb_men_house_nep2012 <- subset(lgb_house_nep2012, SEX==1)
lgb_men_house_nep2012_result <- round(prop.table(table(lgb_men_house_nep2012$HOU)),3)
straight_men_house_nep2012 <- subset(straight_house_nep2012, SEX==1)
straight_men_house_nep2012_result <- round(prop.table(table(straight_men_house_nep2012$HOU)),3)
lgb_women_house_nep2012 <- subset(lgb_house_nep2012, SEX==2)
lgb_women_house_nep2012_result <- round(prop.table(table(lgb_women_house_nep2012$HOU)),3)
straight_women_house_nep2012 <- subset(straight_house_nep2012, SEX==2)
straight_women_house_nep2012_result <- round(prop.table(table(straight_women_house_nep2012$HOU)),3)
lgb_white_house_nep2012 <- subset(lgb_house_nep2012, RACE==1)
lgb_white_house_nep2012_result <- round(prop.table(table(lgb_white_house_nep2012$HOU)),3)
straight_white_house_nep2012 <- subset(straight_house_nep2012, RACE==1)
straight_white_house_nep2012_result <- round(prop.table(table(straight_white_house_nep2012$HOU)),3)
lgb_white_men_house_nep2012 <- subset(lgb_men_house_nep2012, RACE==1)
lgb_white_men_house_nep2012_result <- round(prop.table(table(lgb_white_men_house_nep2012$HOU)),3)
straight_white_men_house_nep2012 <- subset(straight_men_house_nep2012, RACE==1)
straight_white_men_house_nep2012_result <- round(prop.table(table(straight_white_men_house_nep2012$HOU)),3)
lgb_poc_house_nep2012 <- DropNA(lgb_house_nep2012, "RACE", message=TRUE)
lgb_poc_house_nep2012 <- subset(lgb_house_nep2012, RACE!=1)
lgb_poc_house_nep2012_result <- round(prop.table(table(lgb_poc_house_nep2012$HOU)),3)
straight_poc_house_nep2012 <- DropNA(straight_house_nep2012, "RACE", message=TRUE)
straight_poc_house_nep2012 <- subset(straight_house_nep2012, RACE!=1)
straight_poc_house_nep2012_result <- round(prop.table(table(straight_poc_house_nep2012$HOU)),3)
lgb_poc_men_house_nep2012 <- subset(lgb_poc_house_nep2012, SEX==1)
lgb_poc_men_house_nep2012_result <- round(prop.table(table(lgb_poc_men_house_nep2012$HOU)),3)
straight_poc_men_house_nep2012 <- subset(straight_poc_house_nep2012, SEX==1)
straight_poc_men_house_nep2012_result <- round(prop.table(table(straight_poc_men_house_nep2012$HOU)),3)
lgb_poc_women_house_nep2012 <- subset(lgb_poc_house_nep2012, SEX==2)
lgb_poc_women_house_nep2012_result <- round(prop.table(table(lgb_poc_women_house_nep2012$HOU)),3)
straight_poc_women_house_nep2012 <- subset(straight_poc_house_nep2012, SEX==2)
straight_poc_women_house_nep2012_result <- round(prop.table(table(straight_poc_women_house_nep2012$HOU)),3)

#2014
total_house_nep2014 <- DropNA(nep2014, "HOU", message = TRUE)
total_house_nep2014 <- subset(total_house_nep2014, HOU!=0)
total_house_nep2014_result <-round(prop.table(table(total_house_nep2014$HOU)),3)
lgb_house_nep2014 <-subset(total_house_nep2014, GAY==1)
lgb_house_nep2014_result <- round(prop.table(table(lgb_house_nep2014$HOU)),3)
straight_house_nep2014 <- subset(total_house_nep2014, GAY==2)
straight_house_nep2014_result <- round(prop.table(table(straight_house_nep2014$HOU)),3)
lgb_men_house_nep2014 <- subset(lgb_house_nep2014, SEX==1)
lgb_men_house_nep2014_result <- round(prop.table(table(lgb_men_house_nep2014$HOU)),3)
straight_men_house_nep2014 <- subset(straight_house_nep2014, SEX==1)
straight_men_house_nep2014_result <- round(prop.table(table(straight_men_house_nep2014$HOU)),3)
lgb_women_house_nep2014 <- subset(lgb_house_nep2014, SEX==2)
lgb_women_house_nep2014_result <- round(prop.table(table(lgb_women_house_nep2014$HOU)),3)
straight_women_house_nep2014 <- subset(straight_house_nep2014, SEX==2)
straight_women_house_nep2014_result <- round(prop.table(table(straight_women_house_nep2014$HOU)),3)
lgb_white_house_nep2014 <- subset(lgb_house_nep2014, RACE==1)
lgb_white_house_nep2014_result <- round(prop.table(table(lgb_white_house_nep2014$HOU)),3)
straight_white_house_nep2014 <- subset(straight_house_nep2014, RACE==1)
straight_white_house_nep2014_result <- round(prop.table(table(straight_white_house_nep2014$HOU)),3)
lgb_white_men_house_nep2014 <- subset(lgb_men_house_nep2014, RACE==1)
lgb_white_men_house_nep2014_result <- round(prop.table(table(lgb_white_men_house_nep2014$HOU)),3)
straight_white_men_house_nep2014 <- subset(straight_men_house_nep2014, RACE==1)
straight_white_men_house_nep2014_result <- round(prop.table(table(straight_white_men_house_nep2014$HOU)),3)
lgb_poc_house_nep2014 <- DropNA(lgb_house_nep2014, "RACE", message=TRUE)
lgb_poc_house_nep2014 <- subset(lgb_house_nep2014, RACE!=1)
lgb_poc_house_nep2014_result <- round(prop.table(table(lgb_poc_house_nep2014$HOU)),3)
straight_poc_house_nep2014 <- DropNA(straight_house_nep2014, "RACE", message=TRUE)
straight_poc_house_nep2014 <- subset(straight_house_nep2014, RACE!=1)
straight_poc_house_nep2014_result <- round(prop.table(table(straight_poc_house_nep2014$HOU)),3)
lgb_poc_men_house_nep2014 <- subset(lgb_poc_house_nep2014, SEX==1)
lgb_poc_men_house_nep2014_result <- round(prop.table(table(lgb_poc_men_house_nep2014$HOU)),3)
straight_poc_men_house_nep2014 <- subset(straight_poc_house_nep2014, SEX==1)
straight_poc_men_house_nep2014_result <- round(prop.table(table(straight_poc_men_house_nep2014$HOU)),3)
lgb_poc_women_house_nep2014 <- subset(lgb_poc_house_nep2014, SEX==2)
lgb_poc_women_house_nep2014_result <- round(prop.table(table(lgb_poc_women_house_nep2014$HOU)),3)
straight_poc_women_house_nep2014 <- subset(straight_poc_house_nep2014, SEX==2)
straight_poc_women_house_nep2014_result <- round(prop.table(table(straight_poc_women_house_nep2014$HOU)),3)

#2016
total_house_nep2016 <- DropNA(nep2016, "HOU", message = TRUE)
total_house_nep2016 <- subset(total_house_nep2016, HOU!=0)
total_house_nep2016_result <-round(prop.table(table(total_house_nep2016$HOU)),3)
lgbt_house_nep2016 <-subset(total_house_nep2016, LGBT==1)
lgbt_house_nep2016_result <- round(prop.table(table(lgbt_house_nep2016$HOU)),3)
straight_house_nep2016 <- subset(total_house_nep2016, LGBT==2)
straight_house_nep2016_result <- round(prop.table(table(straight_house_nep2016$HOU)),3)
lgbt_men_house_nep2016 <- subset(lgbt_house_nep2016, SEX==1)
lgbt_men_house_nep2016_result <- round(prop.table(table(lgbt_men_house_nep2016$HOU)),3)
straight_men_house_nep2016 <- subset(straight_house_nep2016, SEX==1)
straight_men_house_nep2016_result <- round(prop.table(table(straight_men_house_nep2016$HOU)),3)
lgbt_women_house_nep2016 <- subset(lgbt_house_nep2016, SEX==2)
lgbt_women_house_nep2016_result <- round(prop.table(table(lgbt_women_house_nep2016$HOU)),3)
straight_women_house_nep2016 <- subset(straight_house_nep2016, SEX==2)
straight_women_house_nep2016_result <- round(prop.table(table(straight_women_house_nep2016$HOU)),3)
lgbt_white_house_nep2016 <- subset(lgbt_house_nep2016, RACE==1)
lgbt_white_house_nep2016_result <- round(prop.table(table(lgbt_white_house_nep2016$HOU)),3)
straight_white_house_nep2016 <- subset(straight_house_nep2016, RACE==1)
straight_white_house_nep2016_result <- round(prop.table(table(straight_white_house_nep2016$HOU)),3)
lgbt_white_men_house_nep2016 <- subset(lgbt_men_house_nep2016, RACE==1)
lgbt_white_men_house_nep2016_result <- round(prop.table(table(lgbt_white_men_house_nep2016$HOU)),3)
straight_white_men_house_nep2016 <- subset(straight_men_house_nep2016, RACE==1)
straight_white_men_house_nep2016_result <- round(prop.table(table(straight_white_men_house_nep2016$HOU)),3)
lgbt_poc_house_nep2016 <- DropNA(lgbt_house_nep2016, "RACE", message=TRUE)
lgbt_poc_house_nep2016 <- subset(lgbt_house_nep2016, RACE!=1)
lgbt_poc_house_nep2016_result <- round(prop.table(table(lgbt_poc_house_nep2016$HOU)),3)
straight_poc_house_nep2016 <- DropNA(straight_house_nep2016, "RACE", message=TRUE)
straight_poc_house_nep2016 <- subset(straight_house_nep2016, RACE!=1)
straight_poc_house_nep2016_result <- round(prop.table(table(straight_poc_house_nep2016$HOU)),3)
lgbt_poc_men_house_nep2016 <- subset(lgbt_poc_house_nep2016, SEX==1)
lgbt_poc_men_house_nep2016_result <- round(prop.table(table(lgbt_poc_men_house_nep2016$HOU)),3)
straight_poc_men_house_nep2016 <- subset(straight_poc_house_nep2016, SEX==1)
straight_poc_men_house_nep2016_result <- round(prop.table(table(straight_poc_men_house_nep2016$HOU)),3)
lgbt_poc_women_house_nep2016 <- subset(lgbt_poc_house_nep2016, SEX==2)
lgbt_poc_women_house_nep2016_result <- round(prop.table(table(lgbt_poc_women_house_nep2016$HOU)),3)
straight_poc_women_house_nep2016 <- subset(straight_poc_house_nep2016, SEX==2)
straight_poc_women_house_nep2016_result <- round(prop.table(table(straight_poc_women_house_nep2016$HOU)),3)

#2018
total_house_nep2018 <- DropNA(nep2018, "HOU", message = TRUE)
total_house_nep2018 <- subset(total_house_nep2018, HOU!=0)
total_house_nep2018_result <-round(prop.table(table(total_house_nep2018$HOU)),3)
lgbt_house_nep2018 <-subset(total_house_nep2018, LGBT==1)
lgbt_house_nep2018_result <- round(prop.table(table(lgbt_house_nep2018$HOU)),3)
straight_house_nep2018 <- subset(total_house_nep2018, LGBT==2)
straight_house_nep2018_result <- round(prop.table(table(straight_house_nep2018$HOU)),3)
lgbt_men_house_nep2018 <- subset(lgbt_house_nep2018, SEX==1)
lgbt_men_house_nep2018_result <- round(prop.table(table(lgbt_men_house_nep2018$HOU)),3)
straight_men_house_nep2018 <- subset(straight_house_nep2018, SEX==1)
straight_men_house_nep2018_result <- round(prop.table(table(straight_men_house_nep2018$HOU)),3)
lgbt_women_house_nep2018 <- subset(lgbt_house_nep2018, SEX==2)
lgbt_women_house_nep2018_result <- round(prop.table(table(lgbt_women_house_nep2018$HOU)),3)
straight_women_house_nep2018 <- subset(straight_house_nep2018, SEX==2)
straight_women_house_nep2018_result <- round(prop.table(table(straight_women_house_nep2018$HOU)),3)
lgbt_white_house_nep2018 <- subset(lgbt_house_nep2018, RACE==1)
lgbt_white_house_nep2018_result <- round(prop.table(table(lgbt_white_house_nep2018$HOU)),3)
straight_white_house_nep2018 <- subset(straight_house_nep2018, RACE==1)
straight_white_house_nep2018_result <- round(prop.table(table(straight_white_house_nep2018$HOU)),3)
lgbt_white_men_house_nep2018 <- subset(lgbt_men_house_nep2018, RACE==1)
lgbt_white_men_house_nep2018_result <- round(prop.table(table(lgbt_white_men_house_nep2018$HOU)),3)
straight_white_men_house_nep2018 <- subset(straight_men_house_nep2018, RACE==1)
straight_white_men_house_nep2018_result <- round(prop.table(table(straight_white_men_house_nep2018$HOU)),3)
lgbt_poc_house_nep2018 <- DropNA(lgbt_house_nep2018, "RACE", message=TRUE)
lgbt_poc_house_nep2018 <- subset(lgbt_house_nep2018, RACE!=1)
lgbt_poc_house_nep2018_result <- round(prop.table(table(lgbt_poc_house_nep2018$HOU)),3)
straight_poc_house_nep2018 <- DropNA(straight_house_nep2018, "RACE", message=TRUE)
straight_poc_house_nep2018 <- subset(straight_house_nep2018, RACE!=1)
straight_poc_house_nep2018_result <- round(prop.table(table(straight_poc_house_nep2018$HOU)),3)
lgbt_poc_men_house_nep2018 <- subset(lgbt_poc_house_nep2018, SEX==1)
lgbt_poc_men_house_nep2018_result <- round(prop.table(table(lgbt_poc_men_house_nep2018$HOU)),3)
straight_poc_men_house_nep2018 <- subset(straight_poc_house_nep2018, SEX==1)
straight_poc_men_house_nep2018_result <- round(prop.table(table(straight_poc_men_house_nep2018$HOU)),3)
lgbt_poc_women_house_nep2018 <- subset(lgbt_poc_house_nep2018, SEX==2)
lgbt_poc_women_house_nep2018_result <- round(prop.table(table(lgbt_poc_women_house_nep2018$HOU)),3)
straight_poc_women_house_nep2018 <- subset(straight_poc_house_nep2018, SEX==2)
straight_poc_women_house_nep2018_result <- round(prop.table(table(straight_poc_women_house_nep2018$HOU)),3)

##################################################################
##                        House Vote Data                       ##
##             House Variables Over Time Data Frame             ##
##################################################################

#Column Creation
year <- c(2004,2006,2008,2010,2012,2014,2016,2018)
total_house_result_dem <- c(total_house_nep2004_result["1"],
                            total_house_nep2006_result["1"],
                            total_house_nep2008_result["1"],
                            total_house_nep2010_result["1"],
                            total_house_nep2012_result["1"],
                            total_house_nep2014_result["1"],
                            total_house_nep2016_result["1"],
                            total_house_nep2018_result["1"])
total_house_result_gop <- c(total_house_nep2004_result["2"],
                            total_house_nep2006_result["2"],
                            total_house_nep2008_result["2"],
                            total_house_nep2010_result["2"],
                            total_house_nep2012_result["2"],
                            total_house_nep2014_result["2"],
                            total_house_nep2016_result["2"],
                            total_house_nep2018_result["2"])
total_house_result_oth <- c(total_house_nep2004_result["9"],
                            total_house_nep2006_result["9"],
                            total_house_nep2008_result["9"],
                            total_house_nep2010_result["9"],
                            total_house_nep2012_result["9"],
                            total_house_nep2014_result["9"],
                            total_house_nep2016_result["9"],
                            total_house_nep2018_result["9"])
lgbandt_house_result_dem <- c(lgb_house_nep2004_result["1"],
                              lgb_house_nep2006_result["1"],
                              lgb_house_nep2008_result["1"],
                              lgb_house_nep2010_result["1"],
                              lgb_house_nep2012_result["1"],
                              lgb_house_nep2014_result["1"],
                              lgbt_house_nep2016_result["1"],
                              lgbt_house_nep2018_result["1"])
lgbandt_house_result_gop <- c(lgb_house_nep2004_result["2"],
                              lgb_house_nep2006_result["2"],
                              lgb_house_nep2008_result["2"],
                              lgb_house_nep2010_result["2"],
                              lgb_house_nep2012_result["2"],
                              lgb_house_nep2014_result["2"],
                              lgbt_house_nep2016_result["2"],
                              lgbt_house_nep2018_result["2"])
lgbandt_house_result_oth <- c(lgb_house_nep2004_result["9"],
                              lgb_house_nep2006_result["9"],
                              lgb_house_nep2008_result["9"],
                              lgb_house_nep2010_result["9"],
                              lgb_house_nep2012_result["9"],
                              lgb_house_nep2014_result["9"],
                              lgbt_house_nep2016_result["9"],
                              lgbt_house_nep2018_result["9"])
straight_house_result_dem <- c(straight_house_nep2004_result["1"],
                               straight_house_nep2006_result["1"],
                               straight_house_nep2008_result["1"],
                               straight_house_nep2010_result["1"],
                               straight_house_nep2012_result["1"],
                               straight_house_nep2014_result["1"],
                               straight_house_nep2016_result["1"],
                               straight_house_nep2018_result["1"])
straight_house_result_gop <- c(straight_house_nep2004_result["2"],
                               straight_house_nep2006_result["2"],
                               straight_house_nep2008_result["2"],
                               straight_house_nep2010_result["2"],
                               straight_house_nep2012_result["2"],
                               straight_house_nep2014_result["2"],
                               straight_house_nep2016_result["2"],
                               straight_house_nep2018_result["2"])
straight_house_result_oth <- c(straight_house_nep2004_result["9"],
                               straight_house_nep2006_result["9"],
                               straight_house_nep2008_result["9"],
                               straight_house_nep2010_result["9"],
                               straight_house_nep2012_result["9"],
                               straight_house_nep2014_result["9"],
                               straight_house_nep2016_result["9"],
                               straight_house_nep2018_result["9"])
lgbandt_men_house_result_dem <- c(lgb_men_house_nep2004_result["1"],
                                  lgb_men_house_nep2006_result["1"],
                                  lgb_men_house_nep2008_result["1"],
                                  lgb_men_house_nep2010_result["1"],
                                  lgb_men_house_nep2012_result["1"],
                                  lgb_men_house_nep2014_result["1"],
                                  lgbt_men_house_nep2016_result["1"],
                                  lgbt_men_house_nep2018_result["1"])
lgbandt_men_house_result_gop <- c(lgb_men_house_nep2004_result["2"],
                                  lgb_men_house_nep2006_result["2"],
                                  lgb_men_house_nep2008_result["2"],
                                  lgb_men_house_nep2010_result["2"],
                                  lgb_men_house_nep2012_result["2"],
                                  lgb_men_house_nep2014_result["2"],
                                  lgbt_men_house_nep2016_result["2"],
                                  lgbt_men_house_nep2018_result["2"])
lgbandt_men_house_result_oth <- c(lgb_men_house_nep2004_result["9"],
                                  lgb_men_house_nep2006_result["9"],
                                  lgb_men_house_nep2008_result["9"],
                                  lgb_men_house_nep2010_result["9"],
                                  lgb_men_house_nep2012_result["9"],
                                  lgb_men_house_nep2014_result["9"],
                                  lgbt_men_house_nep2016_result["9"],
                                  lgbt_men_house_nep2018_result["9"])
straight_men_house_result_dem <- c(straight_men_house_nep2004_result["1"],
                                   straight_men_house_nep2006_result["1"],
                                   straight_men_house_nep2008_result["1"],
                                   straight_men_house_nep2010_result["1"],
                                   straight_men_house_nep2012_result["1"],
                                   straight_men_house_nep2014_result["1"],
                                   straight_men_house_nep2016_result["1"],
                                   straight_men_house_nep2018_result["1"])
straight_men_house_result_gop <- c(straight_men_house_nep2004_result["2"],
                                   straight_men_house_nep2006_result["2"],
                                   straight_men_house_nep2008_result["2"],
                                   straight_men_house_nep2010_result["2"],
                                   straight_men_house_nep2012_result["2"],
                                   straight_men_house_nep2014_result["2"],
                                   straight_men_house_nep2016_result["2"],
                                   straight_men_house_nep2018_result["2"])
straight_men_house_result_oth <- c(straight_men_house_nep2004_result["9"],
                                   straight_men_house_nep2006_result["9"],
                                   straight_men_house_nep2008_result["9"],
                                   straight_men_house_nep2010_result["9"],
                                   straight_men_house_nep2012_result["9"],
                                   straight_men_house_nep2014_result["9"],
                                   straight_men_house_nep2016_result["9"],
                                   straight_men_house_nep2018_result["9"])
lgbandt_women_house_result_dem <- c(lgb_women_house_nep2004_result["1"],
                                    lgb_women_house_nep2006_result["1"],
                                    lgb_women_house_nep2008_result["1"],
                                    lgb_women_house_nep2010_result["1"],
                                    lgb_women_house_nep2012_result["1"],
                                    lgb_women_house_nep2014_result["1"],
                                    lgbt_women_house_nep2016_result["1"],
                                    lgbt_women_house_nep2018_result["1"])
lgbandt_women_house_result_gop <- c(lgb_women_house_nep2004_result["2"],
                                    lgb_women_house_nep2006_result["2"],
                                    lgb_women_house_nep2008_result["2"],
                                    lgb_women_house_nep2010_result["2"],
                                    lgb_women_house_nep2012_result["2"],
                                    lgb_women_house_nep2014_result["2"],
                                    lgbt_women_house_nep2016_result["2"],
                                    lgbt_women_house_nep2018_result["2"])
lgbandt_women_house_result_oth <- c(lgb_women_house_nep2004_result["9"],
                                    lgb_women_house_nep2006_result["9"],
                                    lgb_women_house_nep2008_result["9"],
                                    lgb_women_house_nep2010_result["9"],
                                    lgb_women_house_nep2012_result["9"],
                                    lgb_women_house_nep2014_result["9"],
                                    lgbt_women_house_nep2016_result["9"],
                                    lgbt_women_house_nep2018_result["9"])
straight_women_house_result_dem <- c(straight_women_house_nep2004_result["1"],
                                     straight_women_house_nep2006_result["1"],
                                     straight_women_house_nep2008_result["1"],
                                     straight_women_house_nep2010_result["1"],
                                     straight_women_house_nep2012_result["1"],
                                     straight_women_house_nep2014_result["1"],
                                     straight_women_house_nep2016_result["1"],
                                     straight_women_house_nep2018_result["1"])
straight_women_house_result_gop <- c(straight_women_house_nep2004_result["2"],
                                     straight_women_house_nep2006_result["2"],
                                     straight_women_house_nep2008_result["2"],
                                     straight_women_house_nep2010_result["2"],
                                     straight_women_house_nep2012_result["2"],
                                     straight_women_house_nep2014_result["2"],
                                     straight_women_house_nep2016_result["2"],
                                     straight_women_house_nep2018_result["2"])
straight_women_house_result_oth <- c(straight_women_house_nep2004_result["9"],
                                     straight_women_house_nep2006_result["9"],
                                     straight_women_house_nep2008_result["9"],
                                     straight_women_house_nep2010_result["9"],
                                     straight_women_house_nep2012_result["9"],
                                     straight_women_house_nep2014_result["9"],
                                     straight_women_house_nep2016_result["9"],
                                     straight_women_house_nep2018_result["9"])
lgbandt_white_house_result_dem <- c(lgb_white_house_nep2004_result["1"],
                                    lgb_white_house_nep2006_result["1"],
                                    lgb_white_house_nep2008_result["1"],
                                    lgb_white_house_nep2010_result["1"],
                                    lgb_white_house_nep2012_result["1"],
                                    lgb_white_house_nep2014_result["1"],
                                    lgbt_white_house_nep2016_result["1"],
                                    lgbt_white_house_nep2018_result["1"])
lgbandt_white_house_result_gop <- c(lgb_white_house_nep2004_result["2"],
                                    lgb_white_house_nep2006_result["2"],
                                    lgb_white_house_nep2008_result["2"],
                                    lgb_white_house_nep2010_result["2"],
                                    lgb_white_house_nep2012_result["2"],
                                    lgb_white_house_nep2014_result["2"],
                                    lgbt_white_house_nep2016_result["2"],
                                    lgbt_white_house_nep2018_result["2"])
lgbandt_white_house_result_oth <- c(lgb_white_house_nep2004_result["9"],
                                    lgb_white_house_nep2006_result["9"],
                                    lgb_white_house_nep2008_result["9"],
                                    lgb_white_house_nep2010_result["9"],
                                    lgb_white_house_nep2012_result["9"],
                                    lgb_white_house_nep2014_result["9"],
                                    lgbt_white_house_nep2016_result["9"],
                                    lgbt_white_house_nep2018_result["9"])
straight_white_house_result_dem <- c(straight_white_house_nep2004_result["1"],
                                     straight_white_house_nep2006_result["1"],
                                     straight_white_house_nep2008_result["1"],
                                     straight_white_house_nep2010_result["1"],
                                     straight_white_house_nep2012_result["1"],
                                     straight_white_house_nep2014_result["1"],
                                     straight_white_house_nep2016_result["1"],
                                     straight_white_house_nep2018_result["1"])
straight_white_house_result_gop <- c(straight_white_house_nep2004_result["2"],
                                     straight_white_house_nep2006_result["2"],
                                     straight_white_house_nep2008_result["2"],
                                     straight_white_house_nep2010_result["2"],
                                     straight_white_house_nep2012_result["2"],
                                     straight_white_house_nep2014_result["2"],
                                     straight_white_house_nep2016_result["2"],
                                     straight_white_house_nep2018_result["2"])
straight_white_house_result_oth <- c(straight_white_house_nep2004_result["9"],
                                     straight_white_house_nep2006_result["9"],
                                     straight_white_house_nep2008_result["9"],
                                     straight_white_house_nep2010_result["9"],
                                     straight_white_house_nep2012_result["9"],
                                     straight_white_house_nep2014_result["9"],
                                     straight_white_house_nep2016_result["9"],
                                     straight_white_house_nep2018_result["9"])
lgbandt_white_men_house_result_dem <- c(lgb_white_men_house_nep2004_result["1"],
                                        lgb_white_men_house_nep2006_result["1"],
                                        lgb_white_men_house_nep2008_result["1"],
                                        lgb_white_men_house_nep2010_result["1"],
                                        lgb_white_men_house_nep2012_result["1"],
                                        lgb_white_men_house_nep2014_result["1"],
                                        lgbt_white_men_house_nep2016_result["1"],
                                        lgbt_white_men_house_nep2018_result["1"])
lgbandt_white_men_house_result_gop <- c(lgb_white_men_house_nep2004_result["2"],
                                        lgb_white_men_house_nep2006_result["2"],
                                        lgb_white_men_house_nep2008_result["2"],
                                        lgb_white_men_house_nep2010_result["2"],
                                        lgb_white_men_house_nep2012_result["2"],
                                        lgb_white_men_house_nep2014_result["2"],
                                        lgbt_white_men_house_nep2016_result["2"],
                                        lgbt_white_men_house_nep2018_result["2"])
lgbandt_white_men_house_result_oth <- c(lgb_white_men_house_nep2004_result["9"],
                                        lgb_white_men_house_nep2006_result["9"],
                                        lgb_white_men_house_nep2008_result["9"],
                                        lgb_white_men_house_nep2010_result["9"],
                                        lgb_white_men_house_nep2012_result["9"],
                                        lgb_white_men_house_nep2014_result["9"],
                                        lgbt_white_men_house_nep2016_result["9"],
                                        lgbt_white_men_house_nep2018_result["9"])
straight_white_men_house_result_dem <- c(straight_white_men_house_nep2004_result["1"],
                                         straight_white_men_house_nep2006_result["1"],
                                         straight_white_men_house_nep2008_result["1"],
                                         straight_white_men_house_nep2010_result["1"],
                                         straight_white_men_house_nep2012_result["1"],
                                         straight_white_men_house_nep2014_result["1"],
                                         straight_white_men_house_nep2016_result["1"],
                                         straight_white_men_house_nep2018_result["1"])
straight_white_men_house_result_gop <- c(straight_white_men_house_nep2004_result["2"],
                                         straight_white_men_house_nep2006_result["2"],
                                         straight_white_men_house_nep2008_result["2"],
                                         straight_white_men_house_nep2010_result["2"],
                                         straight_white_men_house_nep2012_result["2"],
                                         straight_white_men_house_nep2014_result["2"],
                                         straight_white_men_house_nep2016_result["2"],
                                         straight_white_men_house_nep2018_result["2"])
straight_white_men_house_result_oth <- c(straight_white_men_house_nep2004_result["9"],
                                         straight_white_men_house_nep2006_result["9"],
                                         straight_white_men_house_nep2008_result["9"],
                                         straight_white_men_house_nep2010_result["9"],
                                         straight_white_men_house_nep2012_result["9"],
                                         straight_white_men_house_nep2014_result["9"],
                                         straight_white_men_house_nep2016_result["9"],
                                         straight_white_men_house_nep2018_result["9"])
lgbandt_poc_house_result_dem <- c(lgb_poc_house_nep2004_result["1"],
                                  lgb_poc_house_nep2006_result["1"],
                                  lgb_poc_house_nep2008_result["1"],
                                  lgb_poc_house_nep2010_result["1"],
                                  lgb_poc_house_nep2012_result["1"],
                                  lgb_poc_house_nep2014_result["1"],
                                  lgbt_poc_house_nep2016_result["1"],
                                  lgbt_poc_house_nep2018_result["1"])
lgbandt_poc_house_result_gop <- c(lgb_poc_house_nep2004_result["2"],
                                  lgb_poc_house_nep2006_result["2"],
                                  lgb_poc_house_nep2008_result["2"],
                                  lgb_poc_house_nep2010_result["2"],
                                  lgb_poc_house_nep2012_result["2"],
                                  lgb_poc_house_nep2014_result["2"],
                                  lgbt_poc_house_nep2016_result["2"],
                                  lgbt_poc_house_nep2018_result["2"])
lgbandt_poc_house_result_oth <- c(lgb_poc_house_nep2004_result["9"],
                                  lgb_poc_house_nep2006_result["9"],
                                  lgb_poc_house_nep2008_result["9"],
                                  lgb_poc_house_nep2010_result["9"],
                                  lgb_poc_house_nep2012_result["9"],
                                  lgb_poc_house_nep2014_result["9"],
                                  lgbt_poc_house_nep2016_result["9"],
                                  lgbt_poc_house_nep2018_result["9"])
straight_poc_house_result_dem <- c(straight_poc_house_nep2004_result["1"],
                                   straight_poc_house_nep2006_result["1"],
                                   straight_poc_house_nep2008_result["1"],
                                   straight_poc_house_nep2010_result["1"],
                                   straight_poc_house_nep2012_result["1"],
                                   straight_poc_house_nep2014_result["1"],
                                   straight_poc_house_nep2016_result["1"],
                                   straight_poc_house_nep2018_result["1"])
straight_poc_house_result_gop <- c(straight_poc_house_nep2004_result["2"],
                                   straight_poc_house_nep2006_result["2"],
                                   straight_poc_house_nep2008_result["2"],
                                   straight_poc_house_nep2010_result["2"],
                                   straight_poc_house_nep2012_result["2"],
                                   straight_poc_house_nep2014_result["2"],
                                   straight_poc_house_nep2016_result["2"],
                                   straight_poc_house_nep2018_result["2"])
straight_poc_house_result_oth <- c(straight_poc_house_nep2004_result["9"],
                                   straight_poc_house_nep2006_result["9"],
                                   straight_poc_house_nep2008_result["9"],
                                   straight_poc_house_nep2010_result["9"],
                                   straight_poc_house_nep2012_result["9"],
                                   straight_poc_house_nep2014_result["9"],
                                   straight_poc_house_nep2016_result["9"],
                                   straight_poc_house_nep2018_result["9"])
lgbandt_poc_men_house_result_dem <- c(lgb_poc_men_house_nep2004_result["1"],
                                      lgb_poc_men_house_nep2006_result["1"],
                                      lgb_poc_men_house_nep2008_result["1"],
                                      lgb_poc_men_house_nep2010_result["1"],
                                      lgb_poc_men_house_nep2012_result["1"],
                                      lgb_poc_men_house_nep2014_result["1"],
                                      lgbt_poc_men_house_nep2016_result["1"],
                                      lgbt_poc_men_house_nep2018_result["1"])
lgbandt_poc_men_house_result_gop <- c(lgb_poc_men_house_nep2004_result["2"],
                                      lgb_poc_men_house_nep2006_result["2"],
                                      lgb_poc_men_house_nep2008_result["2"],
                                      lgb_poc_men_house_nep2010_result["2"],
                                      lgb_poc_men_house_nep2012_result["2"],
                                      lgb_poc_men_house_nep2014_result["2"],
                                      lgbt_poc_men_house_nep2016_result["2"],
                                      lgbt_poc_men_house_nep2018_result["2"])
lgbandt_poc_men_house_result_oth <- c(lgb_poc_men_house_nep2004_result["9"],
                                      lgb_poc_men_house_nep2006_result["9"],
                                      lgb_poc_men_house_nep2008_result["9"],
                                      lgb_poc_men_house_nep2010_result["9"],
                                      lgb_poc_men_house_nep2012_result["9"],
                                      lgb_poc_men_house_nep2014_result["9"],
                                      lgbt_poc_men_house_nep2016_result["9"],
                                      lgbt_poc_men_house_nep2018_result["9"])
straight_poc_men_house_result_dem <- c(straight_poc_men_house_nep2004_result["1"],
                                       straight_poc_men_house_nep2006_result["1"],
                                       straight_poc_men_house_nep2008_result["1"],
                                       straight_poc_men_house_nep2010_result["1"],
                                       straight_poc_men_house_nep2012_result["1"],
                                       straight_poc_men_house_nep2014_result["1"],
                                       straight_poc_men_house_nep2016_result["1"],
                                       straight_poc_men_house_nep2018_result["1"])
straight_poc_men_house_result_gop <- c(straight_poc_men_house_nep2004_result["2"],
                                       straight_poc_men_house_nep2006_result["2"],
                                       straight_poc_men_house_nep2008_result["2"],
                                       straight_poc_men_house_nep2010_result["2"],
                                       straight_poc_men_house_nep2012_result["2"],
                                       straight_poc_men_house_nep2014_result["2"],
                                       straight_poc_men_house_nep2016_result["2"],
                                       straight_poc_men_house_nep2018_result["2"])
straight_poc_men_house_result_oth <- c(straight_poc_men_house_nep2004_result["9"],
                                       straight_poc_men_house_nep2006_result["9"],
                                       straight_poc_men_house_nep2008_result["9"],
                                       straight_poc_men_house_nep2010_result["9"],
                                       straight_poc_men_house_nep2012_result["9"],
                                       straight_poc_men_house_nep2014_result["9"],
                                       straight_poc_men_house_nep2016_result["9"],
                                       straight_poc_men_house_nep2018_result["9"])
lgbandt_poc_women_house_result_dem <- c(lgb_poc_women_house_nep2004_result["1"],
                                        lgb_poc_women_house_nep2006_result["1"],
                                        lgb_poc_women_house_nep2008_result["1"],
                                        lgb_poc_women_house_nep2010_result["1"],
                                        lgb_poc_women_house_nep2012_result["1"],
                                        lgb_poc_women_house_nep2014_result["1"],
                                        lgbt_poc_women_house_nep2016_result["1"],
                                        lgbt_poc_women_house_nep2018_result["1"])
lgbandt_poc_women_house_result_gop <- c(lgb_poc_women_house_nep2004_result["2"],
                                        lgb_poc_women_house_nep2006_result["2"],
                                        lgb_poc_women_house_nep2008_result["2"],
                                        lgb_poc_women_house_nep2010_result["2"],
                                        lgb_poc_women_house_nep2012_result["2"],
                                        lgb_poc_women_house_nep2014_result["2"],
                                        lgbt_poc_women_house_nep2016_result["2"],
                                        lgbt_poc_women_house_nep2018_result["2"])
lgbandt_poc_women_house_result_oth <- c(lgb_poc_women_house_nep2004_result["9"],
                                        lgb_poc_women_house_nep2006_result["9"],
                                        lgb_poc_women_house_nep2008_result["9"],
                                        lgb_poc_women_house_nep2010_result["9"],
                                        lgb_poc_women_house_nep2012_result["9"],
                                        lgb_poc_women_house_nep2014_result["9"],
                                        lgbt_poc_women_house_nep2016_result["9"],
                                        lgbt_poc_women_house_nep2018_result["9"])
straight_poc_women_house_result_dem <- c(straight_poc_women_house_nep2004_result["1"],
                                         straight_poc_women_house_nep2006_result["1"],
                                         straight_poc_women_house_nep2008_result["1"],
                                         straight_poc_women_house_nep2010_result["1"],
                                         straight_poc_women_house_nep2012_result["1"],
                                         straight_poc_women_house_nep2014_result["1"],
                                         straight_poc_women_house_nep2016_result["1"],
                                         straight_poc_women_house_nep2018_result["1"])
straight_poc_women_house_result_gop <- c(straight_poc_women_house_nep2004_result["2"],
                                         straight_poc_women_house_nep2006_result["2"],
                                         straight_poc_women_house_nep2008_result["2"],
                                         straight_poc_women_house_nep2010_result["2"],
                                         straight_poc_women_house_nep2012_result["2"],
                                         straight_poc_women_house_nep2014_result["2"],
                                         straight_poc_women_house_nep2016_result["2"],
                                         straight_poc_women_house_nep2018_result["2"])
straight_poc_women_house_result_oth <- c(straight_poc_women_house_nep2004_result["9"],
                                         straight_poc_women_house_nep2006_result["9"],
                                         straight_poc_women_house_nep2008_result["9"],
                                         straight_poc_women_house_nep2010_result["9"],
                                         straight_poc_women_house_nep2012_result["9"],
                                         straight_poc_women_house_nep2014_result["9"],
                                         straight_poc_women_house_nep2016_result["9"],
                                         straight_poc_women_house_nep2018_result["9"])


#Data Frame Creation
house_data_over_time <- data.frame(year,
                                   total_house_result_dem,
                                   total_house_result_gop,
                                   total_house_result_oth,
                                   lgbandt_house_result_dem,
                                   lgbandt_house_result_gop,
                                   lgbandt_house_result_oth,
                                   straight_house_result_dem,
                                   straight_house_result_gop,
                                   straight_house_result_oth,
                                   lgbandt_men_house_result_dem,
                                   lgbandt_men_house_result_gop,
                                   lgbandt_men_house_result_oth,
                                   straight_women_house_result_dem,
                                   straight_women_house_result_gop,
                                   straight_women_house_result_oth,
                                   lgbandt_white_house_result_dem,
                                   lgbandt_white_house_result_gop,
                                   lgbandt_white_house_result_oth,
                                   straight_white_house_result_dem,
                                   straight_white_house_result_gop,
                                   straight_white_house_result_oth,
                                   lgbandt_white_men_house_result_dem,
                                   lgbandt_white_men_house_result_gop,
                                   lgbandt_white_men_house_result_oth,
                                   straight_white_men_house_result_dem,
                                   straight_white_men_house_result_gop,
                                   straight_white_men_house_result_oth,
                                   lgbandt_poc_house_result_dem,
                                   lgbandt_poc_house_result_gop,
                                   lgbandt_poc_house_result_oth,
                                   straight_poc_house_result_dem,
                                   straight_poc_house_result_gop,
                                   straight_poc_house_result_oth,
                                   lgbandt_poc_men_house_result_dem,
                                   lgbandt_poc_men_house_result_gop,
                                   lgbandt_poc_men_house_result_oth,
                                   straight_poc_men_house_result_dem,
                                   straight_poc_men_house_result_gop,
                                   straight_poc_men_house_result_oth,
                                   lgbandt_poc_women_house_result_dem,
                                   lgbandt_poc_women_house_result_gop,
                                   lgbandt_poc_women_house_result_oth,
                                   straight_poc_women_house_result_dem,
                                   straight_poc_women_house_result_gop,
                                   straight_poc_women_house_result_oth)
