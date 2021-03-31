#################################################################
##                    Presidential Vote Data                   ##
##                  Data Cleaning & Filtering                  ##
#################################################################

#2004
total_pres_nep2004 <- subset((DropNA(nep2004, "PRES04", message = TRUE)), PRES04!=0)
total_pres_nep2004_result <-round(prop.table(table(total_pres_nep2004$PRES04)),3)
lgb_pres_nep2004 <-subset(total_pres_nep2004, GAY==1)
lgb_pres_nep2004_result <- round(prop.table(table(lgb_pres_nep2004$PRES04)),3)
straight_pres_nep2004 <- subset(total_pres_nep2004, GAY==2)
straight_pres_nep2004_result <- round(prop.table(table(straight_pres_nep2004$PRES04)),3)
lgb_men_pres_nep2004 <- subset(lgb_pres_nep2004, SEX==1)
lgb_men_pres_nep2004_result <- round(prop.table(table(lgb_men_pres_nep2004$PRES04)),3)
straight_men_pres_nep2004 <- subset(straight_pres_nep2004, SEX==1)
straight_men_pres_nep2004_result <- round(prop.table(table(straight_men_pres_nep2004$PRES04)),3)
lgb_women_pres_nep2004 <- subset(lgb_pres_nep2004, SEX==2)
lgb_women_pres_nep2004_result <- round(prop.table(table(lgb_women_pres_nep2004$PRES04)),3)
straight_women_pres_nep2004 <- subset(straight_pres_nep2004, SEX==2)
straight_women_pres_nep2004_result <- round(prop.table(table(straight_women_pres_nep2004$PRES04)),3)
lgb_white_pres_nep2004 <- subset(lgb_pres_nep2004, RACE==1)
lgb_white_pres_nep2004_result <- round(prop.table(table(lgb_white_pres_nep2004$PRES04)),3)
straight_white_pres_nep2004 <- subset(straight_pres_nep2004, RACE==1)
straight_white_pres_nep2004_result <- round(prop.table(table(straight_white_pres_nep2004$PRES04)),3)
lgb_white_men_pres_nep2004 <- subset(lgb_men_pres_nep2004, RACE==1)
lgb_white_men_pres_nep2004_result <- round(prop.table(table(lgb_white_men_pres_nep2004$PRES04)),3)
straight_white_men_pres_nep2004 <- subset(straight_men_pres_nep2004, RACE==1)
straight_white_men_pres_nep2004_result <- round(prop.table(table(straight_white_men_pres_nep2004$PRES04)),3)
lgb_white_women_pres_nep2004 <- subset(lgb_women_pres_nep2004, RACE==1)
lgb_white_women_pres_nep2004_result <- round(prop.table(table(lgb_white_women_pres_nep2004$PRES04)),3)
straight_white_women_pres_nep2004 <- subset(straight_women_pres_nep2004, RACE==1)
straight_white_women_pres_nep2004_result <- round(prop.table(table(straight_white_women_pres_nep2004$PRES04)),3)
lgb_poc_pres_nep2004 <- (subset((DropNA(lgb_pres_nep2004, "RACE", message=TRUE)), RACE!=1))
lgb_poc_pres_nep2004_result <- round(prop.table(table(lgb_poc_pres_nep2004$PRES04)),3)
straight_poc_pres_nep2004 <- subset((DropNA(straight_pres_nep2004, "RACE", message=TRUE)), RACE!=1)
straight_poc_pres_nep2004_result <- round(prop.table(table(straight_poc_pres_nep2004$PRES04)),3)
lgb_poc_men_pres_nep2004 <- subset(lgb_poc_pres_nep2004, SEX==1)
lgb_poc_men_pres_nep2004_result <- round(prop.table(table(lgb_poc_men_pres_nep2004$PRES04)),3)
straight_poc_men_pres_nep2004 <- subset(straight_poc_pres_nep2004, SEX==1)
straight_poc_men_pres_nep2004_result <- round(prop.table(table(straight_poc_men_pres_nep2004$PRES04)),3)
lgb_poc_women_pres_nep2004 <- subset(lgb_poc_pres_nep2004, SEX==2)
lgb_poc_women_pres_nep2004_result <- round(prop.table(table(lgb_poc_women_pres_nep2004$PRES04)),3)
straight_poc_women_pres_nep2004 <- subset(straight_poc_pres_nep2004, SEX==2)
straight_poc_women_pres_nep2004_result <- round(prop.table(table(straight_poc_women_pres_nep2004$PRES04)),3)

#2008
total_pres_nep2008 <- subset((DropNA(nep2008, "PRSUS08", message = TRUE)), PRSUS08!=0)
total_pres_nep2008_result <-round(prop.table(table(total_pres_nep2008$PRSUS08)),3)
lgb_pres_nep2008 <-subset(total_pres_nep2008, GAY==1)
lgb_pres_nep2008_result <- round(prop.table(table(lgb_pres_nep2008$PRSUS08)),3)
straight_pres_nep2008 <- subset(total_pres_nep2008, GAY==2)
straight_pres_nep2008_result <- round(prop.table(table(straight_pres_nep2008$PRSUS08)),3)
lgb_men_pres_nep2008 <- subset(lgb_pres_nep2008, SEX==1)
lgb_men_pres_nep2008_result <- round(prop.table(table(lgb_men_pres_nep2008$PRSUS08)),3)
straight_men_pres_nep2008 <- subset(straight_pres_nep2008, SEX==1)
straight_men_pres_nep2008_result <- round(prop.table(table(straight_men_pres_nep2008$PRSUS08)),3)
lgb_women_pres_nep2008 <- subset(lgb_pres_nep2008, SEX==2)
lgb_women_pres_nep2008_result <- round(prop.table(table(lgb_women_pres_nep2008$PRSUS08)),3)
straight_women_pres_nep2008 <- subset(straight_pres_nep2008, SEX==2)
straight_women_pres_nep2008_result <- round(prop.table(table(straight_women_pres_nep2008$PRSUS08)),3)
lgb_white_pres_nep2008 <- subset(lgb_pres_nep2008, RACE==1)
lgb_white_pres_nep2008_result <- round(prop.table(table(lgb_white_pres_nep2008$PRSUS08)),3)
straight_white_pres_nep2008 <- subset(straight_pres_nep2008, RACE==1)
straight_white_pres_nep2008_result <- round(prop.table(table(straight_white_pres_nep2008$PRSUS08)),3)
lgb_white_men_pres_nep2008 <- subset(lgb_men_pres_nep2008, RACE==1)
lgb_white_men_pres_nep2008_result <- round(prop.table(table(lgb_white_men_pres_nep2008$PRSUS08)),3)
straight_white_men_pres_nep2008 <- subset(straight_men_pres_nep2008, RACE==1)
straight_white_men_pres_nep2008_result <- round(prop.table(table(straight_white_men_pres_nep2008$PRSUS08)),3)
lgb_white_women_pres_nep2008 <- subset(lgb_women_pres_nep2008, RACE==1)
lgb_white_women_pres_nep2008_result <- round(prop.table(table(lgb_white_women_pres_nep2008$PRSUS08)),3)
straight_white_women_pres_nep2008 <- subset(straight_women_pres_nep2008, RACE==1)
straight_white_women_pres_nep2008_result <- round(prop.table(table(straight_white_women_pres_nep2008$PRSUS08)),3)
lgb_poc_pres_nep2008 <- (subset((DropNA(lgb_pres_nep2008, "RACE", message=TRUE)), RACE!=1))
lgb_poc_pres_nep2008_result <- round(prop.table(table(lgb_poc_pres_nep2008$PRSUS08)),3)
straight_poc_pres_nep2008 <- subset((DropNA(straight_pres_nep2008, "RACE", message=TRUE)), RACE!=1)
straight_poc_pres_nep2008_result <- round(prop.table(table(straight_poc_pres_nep2008$PRSUS08)),3)
lgb_poc_men_pres_nep2008 <- subset(lgb_poc_pres_nep2008, SEX==1)
lgb_poc_men_pres_nep2008_result <- round(prop.table(table(lgb_poc_men_pres_nep2008$PRSUS08)),3)
straight_poc_men_pres_nep2008 <- subset(straight_poc_pres_nep2008, SEX==1)
straight_poc_men_pres_nep2008_result <- round(prop.table(table(straight_poc_men_pres_nep2008$PRSUS08)),3)
lgb_poc_women_pres_nep2008 <- subset(lgb_poc_pres_nep2008, SEX==2)
lgb_poc_women_pres_nep2008_result <- round(prop.table(table(lgb_poc_women_pres_nep2008$PRSUS08)),3)
straight_poc_women_pres_nep2008 <- subset(straight_poc_pres_nep2008, SEX==2)
straight_poc_women_pres_nep2008_result <- round(prop.table(table(straight_poc_women_pres_nep2008$PRSUS08)),3)

#2012
total_pres_nep2012 <- subset((DropNA(nep2012, "PRES", message = TRUE)), PRES!=0)
total_pres_nep2012_result <-round(prop.table(table(total_pres_nep2012$PRES)),3)
lgb_pres_nep2012 <-subset(total_pres_nep2012, GAY==1)
lgb_pres_nep2012_result <- round(prop.table(table(lgb_pres_nep2012$PRES)),3)
straight_pres_nep2012 <- subset(total_pres_nep2012, GAY==2)
straight_pres_nep2012_result <- round(prop.table(table(straight_pres_nep2012$PRES)),3)
lgb_men_pres_nep2012 <- subset(lgb_pres_nep2012, SEX==1)
lgb_men_pres_nep2012_result <- round(prop.table(table(lgb_men_pres_nep2012$PRES)),3)
straight_men_pres_nep2012 <- subset(straight_pres_nep2012, SEX==1)
straight_men_pres_nep2012_result <- round(prop.table(table(straight_men_pres_nep2012$PRES)),3)
lgb_women_pres_nep2012 <- subset(lgb_pres_nep2012, SEX==2)
lgb_women_pres_nep2012_result <- round(prop.table(table(lgb_women_pres_nep2012$PRES)),3)
straight_women_pres_nep2012 <- subset(straight_pres_nep2012, SEX==2)
straight_women_pres_nep2012_result <- round(prop.table(table(straight_women_pres_nep2012$PRES)),3)
lgb_white_pres_nep2012 <- subset(lgb_pres_nep2012, RACE==1)
lgb_white_pres_nep2012_result <- round(prop.table(table(lgb_white_pres_nep2012$PRES)),3)
straight_white_pres_nep2012 <- subset(straight_pres_nep2012, RACE==1)
straight_white_pres_nep2012_result <- round(prop.table(table(straight_white_pres_nep2012$PRES)),3)
lgb_white_men_pres_nep2012 <- subset(lgb_men_pres_nep2012, RACE==1)
lgb_white_men_pres_nep2012_result <- round(prop.table(table(lgb_white_men_pres_nep2012$PRES)),3)
straight_white_men_pres_nep2012 <- subset(straight_men_pres_nep2012, RACE==1)
straight_white_men_pres_nep2012_result <- round(prop.table(table(straight_white_men_pres_nep2012$PRES)),3)
lgb_white_women_pres_nep2012 <- subset(lgb_women_pres_nep2012, RACE==1)
lgb_white_women_pres_nep2012_result <- round(prop.table(table(lgb_white_women_pres_nep2012$PRES)),3)
straight_white_women_pres_nep2012 <- subset(straight_women_pres_nep2012, RACE==1)
straight_white_women_pres_nep2012_result <- round(prop.table(table(straight_white_women_pres_nep2012$PRES)),3)
lgb_poc_pres_nep2012 <- (subset((DropNA(lgb_pres_nep2012, "RACE", message=TRUE)), RACE!=1))
lgb_poc_pres_nep2012_result <- round(prop.table(table(lgb_poc_pres_nep2012$PRES)),3)
straight_poc_pres_nep2012 <- subset((DropNA(straight_pres_nep2012, "RACE", message=TRUE)), RACE!=1)
straight_poc_pres_nep2012_result <- round(prop.table(table(straight_poc_pres_nep2012$PRES)),3)
lgb_poc_men_pres_nep2012 <- subset(lgb_poc_pres_nep2012, SEX==1)
lgb_poc_men_pres_nep2012_result <- round(prop.table(table(lgb_poc_men_pres_nep2012$PRES)),3)
straight_poc_men_pres_nep2012 <- subset(straight_poc_pres_nep2012, SEX==1)
straight_poc_men_pres_nep2012_result <- round(prop.table(table(straight_poc_men_pres_nep2012$PRES)),3)
lgb_poc_women_pres_nep2012 <- subset(lgb_poc_pres_nep2012, SEX==2)
lgb_poc_women_pres_nep2012_result <- round(prop.table(table(lgb_poc_women_pres_nep2012$PRES)),3)
straight_poc_women_pres_nep2012 <- subset(straight_poc_pres_nep2012, SEX==2)
straight_poc_women_pres_nep2012_result <- round(prop.table(table(straight_poc_women_pres_nep2012$PRES)),3)

#2016
total_pres_nep2016 <- subset((DropNA(nep2016, "PRES", message = TRUE)), PRES!=0)
total_pres_nep2016_result <-round(prop.table(table(total_pres_nep2016$PRES)),3)
lgbt_pres_nep2016 <-subset(total_pres_nep2016, LGBT==1)
lgbt_pres_nep2016_result <- round(prop.table(table(lgbt_pres_nep2016$PRES)),3)
straight_pres_nep2016 <- subset(total_pres_nep2016, LGBT==2)
straight_pres_nep2016_result <- round(prop.table(table(straight_pres_nep2016$PRES)),3)
lgbt_men_pres_nep2016 <- subset(lgbt_pres_nep2016, SEX==1)
lgbt_men_pres_nep2016_result <- round(prop.table(table(lgbt_men_pres_nep2016$PRES)),3)
straight_men_pres_nep2016 <- subset(straight_pres_nep2016, SEX==1)
straight_men_pres_nep2016_result <- round(prop.table(table(straight_men_pres_nep2016$PRES)),3)
lgbt_women_pres_nep2016 <- subset(lgbt_pres_nep2016, SEX==2)
lgbt_women_pres_nep2016_result <- round(prop.table(table(lgbt_women_pres_nep2016$PRES)),3)
straight_women_pres_nep2016 <- subset(straight_pres_nep2016, SEX==2)
straight_women_pres_nep2016_result <- round(prop.table(table(straight_women_pres_nep2016$PRES)),3)
lgbt_white_pres_nep2016 <- subset(lgbt_pres_nep2016, RACE==1)
lgbt_white_pres_nep2016_result <- round(prop.table(table(lgbt_white_pres_nep2016$PRES)),3)
straight_white_pres_nep2016 <- subset(straight_pres_nep2016, RACE==1)
straight_white_pres_nep2016_result <- round(prop.table(table(straight_white_pres_nep2016$PRES)),3)
lgbt_white_men_pres_nep2016 <- subset(lgbt_men_pres_nep2016, RACE==1)
lgbt_white_men_pres_nep2016_result <- round(prop.table(table(lgbt_white_men_pres_nep2016$PRES)),3)
straight_white_men_pres_nep2016 <- subset(straight_men_pres_nep2016, RACE==1)
straight_white_men_pres_nep2016_result <- round(prop.table(table(straight_white_men_pres_nep2016$PRES)),3)
lgbt_white_women_pres_nep2016 <- subset(lgbt_women_pres_nep2016, RACE==1)
lgbt_white_women_pres_nep2016_result <- round(prop.table(table(lgbt_white_women_pres_nep2016$PRES)),3)
straight_white_women_pres_nep2016 <- subset(straight_women_pres_nep2016, RACE==1)
straight_white_women_pres_nep2016_result <- round(prop.table(table(straight_white_women_pres_nep2016$PRES)),3)
lgbt_poc_pres_nep2016 <- (subset((DropNA(lgbt_pres_nep2016, "RACE", message=TRUE)), RACE!=1))
lgbt_poc_pres_nep2016_result <- round(prop.table(table(lgbt_poc_pres_nep2016$PRES)),3)
straight_poc_pres_nep2016 <- subset((DropNA(straight_pres_nep2016, "RACE", message=TRUE)), RACE!=1)
straight_poc_pres_nep2016_result <- round(prop.table(table(straight_poc_pres_nep2016$PRES)),3)
lgbt_poc_men_pres_nep2016 <- subset(lgbt_poc_pres_nep2016, SEX==1)
lgbt_poc_men_pres_nep2016_result <- round(prop.table(table(lgbt_poc_men_pres_nep2016$PRES)),3)
straight_poc_men_pres_nep2016 <- subset(straight_poc_pres_nep2016, SEX==1)
straight_poc_men_pres_nep2016_result <- round(prop.table(table(straight_poc_men_pres_nep2016$PRES)),3)
lgbt_poc_women_pres_nep2016 <- subset(lgbt_poc_pres_nep2016, SEX==2)
lgbt_poc_women_pres_nep2016_result <- round(prop.table(table(lgbt_poc_women_pres_nep2016$PRES)),3)
straight_poc_women_pres_nep2016 <- subset(straight_poc_pres_nep2016, SEX==2)
straight_poc_women_pres_nep2016_result <- round(prop.table(table(straight_poc_women_pres_nep2016$PRES)),3)

#Column Creation
presyear <- c(2004,2008,2012,2016)
total_pres_result_dem <- c(total_pres_nep2004_result["1"],
                           total_pres_nep2008_result["1"],
                           total_pres_nep2012_result["1"],
                           total_pres_nep2016_result["1"])
total_pres_result_gop <- c(total_pres_nep2004_result["2"],
                           total_pres_nep2008_result["2"],
                           total_pres_nep2012_result["2"],
                           total_pres_nep2016_result["2"])
total_pres_result_oth <- c(total_pres_nep2004_result["9"]
                           +total_pres_nep2004_result["3"],
                           total_pres_nep2008_result["9"],
                           total_pres_nep2012_result["9"],
                           total_pres_nep2016_result["9"]
                           +total_pres_nep2016_result["3"]
                           +total_pres_nep2016_result["4"])
lgbandt_pres_result_dem <- c(lgb_pres_nep2004_result["1"],
                             lgb_pres_nep2008_result["1"],
                             lgb_pres_nep2012_result["1"],
                             lgbt_pres_nep2016_result["1"])
lgbandt_pres_result_gop <- c(lgb_pres_nep2004_result["2"],
                             lgb_pres_nep2008_result["2"],
                             lgb_pres_nep2012_result["2"],
                             lgbt_pres_nep2016_result["2"])
lgbandt_pres_result_oth <- c(lgb_pres_nep2004_result["9"]
                             +lgb_pres_nep2004_result["3"],
                             lgb_pres_nep2008_result["9"],
                             lgb_pres_nep2012_result["9"],
                             lgbt_pres_nep2016_result["9"]
                             +lgbt_pres_nep2016_result["3"]
                             +lgbt_pres_nep2016_result["4"])
straight_pres_result_dem <- c(straight_pres_nep2004_result["1"],
                              straight_pres_nep2008_result["1"],
                              straight_pres_nep2012_result["1"],
                              straight_pres_nep2016_result["1"])
straight_pres_result_gop <- c(straight_pres_nep2004_result["2"],
                              straight_pres_nep2008_result["2"],
                              straight_pres_nep2012_result["2"],
                              straight_pres_nep2016_result["2"])
straight_pres_result_oth <- c(straight_pres_nep2004_result["9"]
                              +straight_pres_nep2004_result["3"],
                              straight_pres_nep2008_result["9"],
                              straight_pres_nep2012_result["9"],
                              straight_pres_nep2016_result["9"]
                              +straight_pres_nep2016_result["3"]
                              +straight_pres_nep2016_result["4"])
lgbandt_men_pres_result_dem <- c(lgb_men_pres_nep2004_result["1"],
                                 lgb_men_pres_nep2008_result["1"],
                                 lgb_men_pres_nep2012_result["1"],
                                 lgbt_men_pres_nep2016_result["1"])
lgbandt_men_pres_result_gop <- c(lgb_men_pres_nep2004_result["2"],
                                 lgb_men_pres_nep2008_result["2"],
                                 lgb_men_pres_nep2012_result["2"],
                                 lgbt_men_pres_nep2016_result["2"])
lgbandt_men_pres_result_oth <- c(lgb_men_pres_nep2004_result["9"]
                                 +lgb_men_pres_nep2004_result["3"],
                                 lgb_men_pres_nep2008_result["9"],
                                 lgb_men_pres_nep2012_result["9"],
                                 lgbt_men_pres_nep2016_result["9"]
                                 +lgbt_men_pres_nep2016_result["3"]
                                 +lgbt_men_pres_nep2016_result["4"])
straight_men_pres_result_dem <- c(straight_men_pres_nep2004_result["1"],
                                  straight_men_pres_nep2008_result["1"],
                                  straight_men_pres_nep2012_result["1"],
                                  straight_men_pres_nep2016_result["1"])
straight_men_pres_result_gop <- c(straight_men_pres_nep2004_result["2"],
                                  straight_men_pres_nep2008_result["2"],
                                  straight_men_pres_nep2012_result["2"],
                                  straight_men_pres_nep2016_result["2"])
straight_men_pres_result_oth <- c(straight_men_pres_nep2004_result["9"]
                                  +straight_men_pres_nep2004_result["3"],
                                  straight_men_pres_nep2008_result["9"],
                                  straight_men_pres_nep2012_result["9"],
                                  straight_men_pres_nep2016_result["9"]
                                  +straight_men_pres_nep2016_result["3"]
                                  +straight_men_pres_nep2016_result["4"])
lgbandt_women_pres_result_dem <- c(lgb_women_pres_nep2004_result["1"],
                                   lgb_women_pres_nep2008_result["1"],
                                   lgb_women_pres_nep2012_result["1"],
                                   lgbt_women_pres_nep2016_result["1"])
lgbandt_women_pres_result_gop <- c(lgb_women_pres_nep2004_result["2"],
                                   lgb_women_pres_nep2008_result["2"],
                                   lgb_women_pres_nep2012_result["2"],
                                   lgbt_women_pres_nep2016_result["2"])
lgbandt_women_pres_result_oth <- c(lgb_women_pres_nep2004_result["9"]
                                   +lgb_women_pres_nep2004_result["3"],
                                   lgb_women_pres_nep2008_result["9"],
                                   lgb_women_pres_nep2012_result["9"],
                                   lgbt_women_pres_nep2016_result["9"]
                                   +lgbt_women_pres_nep2016_result["3"]
                                   +lgbt_women_pres_nep2016_result["4"])
straight_women_pres_result_dem <- c(straight_women_pres_nep2004_result["1"],
                                    straight_women_pres_nep2008_result["1"],
                                    straight_women_pres_nep2012_result["1"],
                                    straight_women_pres_nep2016_result["1"])
straight_women_pres_result_gop <- c(straight_women_pres_nep2004_result["2"],
                                    straight_women_pres_nep2008_result["2"],
                                    straight_women_pres_nep2012_result["2"],
                                    straight_women_pres_nep2016_result["2"])
straight_women_pres_result_oth <- c(straight_women_pres_nep2004_result["9"]
                                    +straight_women_pres_nep2004_result["3"],
                                    straight_women_pres_nep2008_result["9"],
                                    straight_women_pres_nep2012_result["9"],
                                    straight_women_pres_nep2016_result["9"]
                                    +straight_women_pres_nep2016_result["3"]
                                    +straight_women_pres_nep2016_result["4"])
lgbandt_white_pres_result_dem <- c(lgb_white_pres_nep2004_result["1"],
                                   lgb_white_pres_nep2008_result["1"],
                                   lgb_white_pres_nep2012_result["1"],
                                   lgbt_white_pres_nep2016_result["1"])
lgbandt_white_pres_result_gop <- c(lgb_white_pres_nep2004_result["2"],
                                   lgb_white_pres_nep2008_result["2"],
                                   lgb_white_pres_nep2012_result["2"],
                                   lgbt_white_pres_nep2016_result["2"])
lgbandt_white_pres_result_oth <- c(lgb_white_pres_nep2004_result["9"]
                                   +lgb_white_pres_nep2004_result["3"],
                                   lgb_white_pres_nep2008_result["9"],
                                   lgb_white_pres_nep2012_result["9"],
                                   lgbt_white_pres_nep2016_result["9"]
                                   +lgbt_white_pres_nep2016_result["3"]
                                   +lgbt_white_pres_nep2016_result["4"])
straight_white_pres_result_dem <- c(straight_white_pres_nep2004_result["1"],
                                    straight_white_pres_nep2008_result["1"],
                                    straight_white_pres_nep2012_result["1"],
                                    straight_white_pres_nep2016_result["1"])
straight_white_pres_result_gop <- c(straight_white_pres_nep2004_result["2"],
                                    straight_white_pres_nep2008_result["2"],
                                    straight_white_pres_nep2012_result["2"],
                                    straight_white_pres_nep2016_result["2"])
straight_white_pres_result_oth <- c(straight_white_pres_nep2004_result["9"]
                                    +straight_white_pres_nep2004_result["3"],
                                    straight_white_pres_nep2008_result["9"],
                                    straight_white_pres_nep2012_result["9"],
                                    straight_white_pres_nep2016_result["9"]
                                    +straight_white_pres_nep2016_result["3"]
                                    +straight_white_pres_nep2016_result["4"])
lgbandt_white_men_pres_result_dem <- c(lgb_white_men_pres_nep2004_result["1"],
                                       lgb_white_men_pres_nep2008_result["1"],
                                       lgb_white_men_pres_nep2012_result["1"],
                                       lgbt_white_men_pres_nep2016_result["1"])
lgbandt_white_men_pres_result_gop <- c(lgb_white_men_pres_nep2004_result["2"],
                                       lgb_white_men_pres_nep2008_result["2"],
                                       lgb_white_men_pres_nep2012_result["2"],
                                       lgbt_white_men_pres_nep2016_result["2"])
lgbandt_white_men_pres_result_oth <- c(lgb_white_men_pres_nep2004_result["9"]
                                       +lgb_white_men_pres_nep2004_result["3"],
                                       lgb_white_men_pres_nep2008_result["9"],
                                       lgb_white_men_pres_nep2012_result["9"],
                                       lgbt_white_men_pres_nep2016_result["9"]
                                       +lgbt_white_men_pres_nep2016_result["3"]
                                       +lgbt_white_men_pres_nep2016_result["4"])
straight_white_men_pres_result_dem <- c(straight_white_men_pres_nep2004_result["1"],
                                        straight_white_men_pres_nep2008_result["1"],
                                        straight_white_men_pres_nep2012_result["1"],
                                        straight_white_men_pres_nep2016_result["1"])
straight_white_men_pres_result_gop <- c(straight_white_men_pres_nep2004_result["2"],
                                        straight_white_men_pres_nep2008_result["2"],
                                        straight_white_men_pres_nep2012_result["2"],
                                        straight_white_men_pres_nep2016_result["2"])
straight_white_men_pres_result_oth <- c(straight_white_men_pres_nep2004_result["9"]
                                        +straight_white_men_pres_nep2004_result["3"],
                                        straight_white_men_pres_nep2008_result["9"],
                                        straight_white_men_pres_nep2012_result["9"],
                                        straight_white_men_pres_nep2016_result["9"]
                                        +straight_white_men_pres_nep2016_result["3"]
                                        +straight_white_men_pres_nep2016_result["4"])
lgbandt_poc_pres_result_dem <- c(lgb_poc_pres_nep2004_result["1"],
                                 lgb_poc_pres_nep2008_result["1"],
                                 lgb_poc_pres_nep2012_result["1"],
                                 lgbt_poc_pres_nep2016_result["1"])
lgbandt_poc_pres_result_gop <- c(lgb_poc_pres_nep2004_result["2"],
                                 lgb_poc_pres_nep2008_result["2"],
                                 lgb_poc_pres_nep2012_result["2"],
                                 lgbt_poc_pres_nep2016_result["2"])
lgbandt_poc_pres_result_oth <- c(lgb_poc_pres_nep2004_result["9"]
                                 +lgb_poc_pres_nep2004_result["3"],
                                 lgb_poc_pres_nep2008_result["9"],
                                 lgb_poc_pres_nep2012_result["9"],
                                 lgbt_poc_pres_nep2016_result["9"]
                                 +lgbt_poc_pres_nep2016_result["3"]
                                 +lgbt_poc_pres_nep2016_result["4"])
straight_poc_pres_result_dem <- c(straight_poc_pres_nep2004_result["1"],
                                  straight_poc_pres_nep2008_result["1"],
                                  straight_poc_pres_nep2012_result["1"],
                                  straight_poc_pres_nep2016_result["1"])
straight_poc_pres_result_gop <- c(straight_poc_pres_nep2004_result["2"],
                                  straight_poc_pres_nep2008_result["2"],
                                  straight_poc_pres_nep2012_result["2"],
                                  straight_poc_pres_nep2016_result["2"])
straight_poc_pres_result_oth <- c(straight_poc_pres_nep2004_result["9"]
                                  +straight_poc_pres_nep2004_result["3"],
                                  straight_poc_pres_nep2008_result["9"],
                                  straight_poc_pres_nep2012_result["9"],
                                  straight_poc_pres_nep2016_result["9"]
                                  +straight_poc_pres_nep2016_result["3"]
                                  +straight_poc_pres_nep2016_result["4"])
lgbandt_poc_men_pres_result_dem <- c(lgb_poc_men_pres_nep2004_result["1"],
                                     lgb_poc_men_pres_nep2008_result["1"],
                                     lgb_poc_men_pres_nep2012_result["1"],
                                     lgbt_poc_men_pres_nep2016_result["1"])
lgbandt_poc_men_pres_result_gop <- c(lgb_poc_men_pres_nep2004_result["2"],
                                     lgb_poc_men_pres_nep2008_result["2"],
                                     lgb_poc_men_pres_nep2012_result["2"],
                                     lgbt_poc_men_pres_nep2016_result["2"])
lgbandt_poc_men_pres_result_oth <- c(lgb_poc_men_pres_nep2004_result["9"]
                                     +lgb_poc_men_pres_nep2004_result["3"],
                                     lgb_poc_men_pres_nep2008_result["9"],
                                     lgb_poc_men_pres_nep2012_result["9"],
                                     lgbt_poc_men_pres_nep2016_result["9"]
                                     +lgbt_poc_men_pres_nep2016_result["3"]
                                     +lgbt_poc_men_pres_nep2016_result["4"])
straight_poc_men_pres_result_dem <- c(straight_poc_men_pres_nep2004_result["1"],
                                      straight_poc_men_pres_nep2008_result["1"],
                                      straight_poc_men_pres_nep2012_result["1"],
                                      straight_poc_men_pres_nep2016_result["1"])
straight_poc_men_pres_result_gop <- c(straight_poc_men_pres_nep2004_result["2"],
                                      straight_poc_men_pres_nep2008_result["2"],
                                      straight_poc_men_pres_nep2012_result["2"],
                                      straight_poc_men_pres_nep2016_result["2"])
straight_poc_men_pres_result_oth <- c(straight_poc_men_pres_nep2004_result["9"]
                                      +straight_poc_men_pres_nep2004_result["3"],
                                      straight_poc_men_pres_nep2008_result["9"],
                                      straight_poc_men_pres_nep2012_result["9"],
                                      straight_poc_men_pres_nep2016_result["9"]
                                      +straight_poc_men_pres_nep2016_result["3"]
                                      +straight_poc_men_pres_nep2016_result["4"])
lgbandt_poc_women_pres_result_dem <- c(lgb_poc_women_pres_nep2004_result["1"],
                                       lgb_poc_women_pres_nep2008_result["1"],
                                       lgb_poc_women_pres_nep2012_result["1"],
                                       lgbt_poc_women_pres_nep2016_result["1"])
lgbandt_poc_women_pres_result_gop <- c(lgb_poc_women_pres_nep2004_result["2"],
                                       lgb_poc_women_pres_nep2008_result["2"],
                                       lgb_poc_women_pres_nep2012_result["2"],
                                       lgbt_poc_women_pres_nep2016_result["2"])
lgbandt_poc_women_pres_result_oth <- c(lgb_poc_women_pres_nep2004_result["9"]
                                       +lgb_poc_women_pres_nep2004_result["3"],
                                       lgb_poc_women_pres_nep2008_result["9"],
                                       lgb_poc_women_pres_nep2012_result["9"],
                                       lgbt_poc_women_pres_nep2016_result["9"]
                                       +lgbt_poc_women_pres_nep2016_result["3"]
                                       +lgbt_poc_women_pres_nep2016_result["4"])
straight_poc_women_pres_result_dem <- c(straight_poc_women_pres_nep2004_result["1"],
                                        straight_poc_women_pres_nep2008_result["1"],
                                        straight_poc_women_pres_nep2012_result["1"],
                                        straight_poc_women_pres_nep2016_result["1"])
straight_poc_women_pres_result_gop <- c(straight_poc_women_pres_nep2004_result["2"],
                                        straight_poc_women_pres_nep2008_result["2"],
                                        straight_poc_women_pres_nep2012_result["2"],
                                        straight_poc_women_pres_nep2016_result["2"])
straight_poc_women_pres_result_oth <- c(straight_poc_women_pres_nep2004_result["9"]
                                        +straight_poc_women_pres_nep2004_result["3"],
                                        straight_poc_women_pres_nep2008_result["9"],
                                        straight_poc_women_pres_nep2012_result["9"],
                                        straight_poc_women_pres_nep2016_result["9"]
                                        +straight_poc_women_pres_nep2016_result["3"]
                                        +straight_poc_women_pres_nep2016_result["4"])

#Data Frame Creation
pres_data_over_time <- data.frame(presyear,
                                  total_pres_result_dem,
                                  total_pres_result_gop,
                                  total_pres_result_oth,
                                  lgbandt_pres_result_dem,
                                  lgbandt_pres_result_gop,
                                  lgbandt_pres_result_oth,
                                  straight_pres_result_dem,
                                  straight_pres_result_gop,
                                  straight_pres_result_oth,
                                  lgbandt_men_pres_result_dem,
                                  lgbandt_men_pres_result_gop,
                                  lgbandt_men_pres_result_oth,
                                  straight_women_pres_result_dem,
                                  straight_women_pres_result_gop,
                                  straight_women_pres_result_oth,
                                  lgbandt_white_pres_result_dem,
                                  lgbandt_white_pres_result_gop,
                                  lgbandt_white_pres_result_oth,
                                  straight_white_pres_result_dem,
                                  straight_white_pres_result_gop,
                                  straight_white_pres_result_oth,
                                  lgbandt_white_men_pres_result_dem,
                                  lgbandt_white_men_pres_result_gop,
                                  lgbandt_white_men_pres_result_oth,
                                  straight_white_men_pres_result_dem,
                                  straight_white_men_pres_result_gop,
                                  straight_white_men_pres_result_oth,
                                  lgbandt_poc_pres_result_dem,
                                  lgbandt_poc_pres_result_gop,
                                  lgbandt_poc_pres_result_oth,
                                  straight_poc_pres_result_dem,
                                  straight_poc_pres_result_gop,
                                  straight_poc_pres_result_oth,
                                  lgbandt_poc_men_pres_result_dem,
                                  lgbandt_poc_men_pres_result_gop,
                                  lgbandt_poc_men_pres_result_oth,
                                  straight_poc_men_pres_result_dem,
                                  straight_poc_men_pres_result_gop,
                                  straight_poc_men_pres_result_oth,
                                  lgbandt_poc_women_pres_result_dem,
                                  lgbandt_poc_women_pres_result_gop,
                                  lgbandt_poc_women_pres_result_oth,
                                  straight_poc_women_pres_result_dem,
                                  straight_poc_women_pres_result_gop,
                                  straight_poc_women_pres_result_oth)