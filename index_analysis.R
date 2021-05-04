pacman::p_load(fastDummies)

## Building Index
#Presidential Years
nep_full_2000 <- year(nep_full,2000)
nep_full_2004 <- year(nep_full,2004)
nep_full_2008 <- year(nep_full,2008)
nep_full_2012 <- year(nep_full,2012)
nep_full_2016 <- year(nep_full,2016)

#Reassigning Third-Party Candidates
nep_full_2004$PRES[nep_full_2004$PRES == 3] <- 4
nep_full_2016$PRES[nep_full_2016$PRES == 3] <- 5
nep_full_2016$PRES[nep_full_2016$PRES == 4] <- 6

nep_pres <- bind_rows(nep_full_2000,
                      nep_full_2004,
                      nep_full_2008,
                      nep_full_2012,
                      nep_full_2016)

dummy_targets_pres <- c("PRES","HOU","PARTYID","PHIL3")

nep_pres_dummies <- drop_na(nep_pres, all_of(dummy_targets_pres))
nep_pres_dummies <- dummy_cols(nep_pres_dummies, 
                               select_columns = all_of(dummy_targets_pres))

nep_pres_dummies <- add_column(nep_pres_dummies, 
                               LIB = (0 -
                                        nep_pres_dummies$HOU_1 -
                                        nep_pres_dummies$PRES_1 -
                                        nep_pres_dummies$PRES_4 -
                                        nep_pres_dummies$PRES_6 -
                                        nep_pres_dummies$PARTYID_1 -
                                        nep_pres_dummies$PHIL3_1)/4)
nep_pres_dummies <- add_column(nep_pres_dummies, 
                               CON = (nep_pres_dummies$HOU_2 +
                                        nep_pres_dummies$PRES_2 +
                                        nep_pres_dummies$PRES_3 +
                                        nep_pres_dummies$PRES_5 +
                                        nep_pres_dummies$PARTYID_2 +
                                        nep_pres_dummies$PHIL3_3)/4)
nep_pres_dummies <- add_column(nep_pres_dummies,
                              VOTEIND = (0 -
                                           nep_pres_dummies$HOU_1 -
                                           nep_pres_dummies$PRES_1 -
                                           nep_pres_dummies$PRES_4 -
                                           nep_pres_dummies$PRES_6 +
                                           nep_pres_dummies$HOU_2 +
                                           nep_pres_dummies$PRES_2 +
                                           nep_pres_dummies$PRES_3 +
                                           nep_pres_dummies$PRES_5)/2)
nep_pres_dummies <- add_column(nep_pres_dummies,
                               IDIND = (0 -
                                          nep_pres_dummies$PARTYID_1 -
                                          nep_pres_dummies$PHIL3_1 +
                                          nep_pres_dummies$PARTYID_2 +
                                          nep_pres_dummies$PHIL3_3)/2)
nep_pres_dummies <- add_column(nep_pres_dummies, 
                               IND = 
                                 nep_pres_dummies$LIB + 
                                 nep_pres_dummies$CON)

#Non-Presidential Years
nep_non_pres <- bind_rows(year(nep_full,2006),
                          year(nep_full,2010),
                          year(nep_full,2014),
                          year(nep_full,2018))
nep_non_pres$PRES <- NULL

dummy_targets_non_pres <- c("HOU","SEN","GOV","PARTYID","PHIL3")
nep_non_pres_dummies <- drop_na(nep_non_pres, all_of(dummy_targets_non_pres)) 
nep_non_pres_dummies <- dummy_cols(nep_non_pres_dummies, 
                                   select_columns = all_of(dummy_targets_non_pres))

nep_non_pres_dummies <- add_column(nep_non_pres_dummies, 
                               LIB = (0 -
                                        nep_non_pres_dummies$HOU_1 -
                                        nep_non_pres_dummies$SEN_1 -
                                        nep_non_pres_dummies$GOV_1 -
                                        nep_non_pres_dummies$PARTYID_1 -
                                        nep_non_pres_dummies$PHIL3_1)/5)
nep_non_pres_dummies <- add_column(nep_non_pres_dummies, 
                               CON = (nep_non_pres_dummies$HOU_2 +
                                        nep_non_pres_dummies$SEN_2 +
                                        nep_non_pres_dummies$GOV_2 +
                                        nep_non_pres_dummies$PARTYID_2 +
                                        nep_non_pres_dummies$PHIL3_3)/5)
nep_non_pres_dummies <- add_column(nep_non_pres_dummies,
                                   VOTEIND = ((0 -
                                                nep_non_pres_dummies$HOU_1 -
                                                nep_non_pres_dummies$SEN_1 -
                                                nep_non_pres_dummies$GOV_1 +
                                                nep_non_pres_dummies$HOU_2 +
                                                nep_non_pres_dummies$SEN_2 +
                                                nep_non_pres_dummies$GOV_2)/3))
nep_non_pres_dummies <- add_column(nep_non_pres_dummies,
                                   IDIND = (0 -
                                              nep_non_pres_dummies$PARTYID_1 -
                                              nep_non_pres_dummies$PHIL3_1 +
                                              nep_non_pres_dummies$PARTYID_2 +
                                              nep_non_pres_dummies$PHIL3_3)/2)
nep_non_pres_dummies <- add_column(nep_non_pres_dummies, 
                               IND = 
                                 nep_non_pres_dummies$LIB + 
                                 nep_non_pres_dummies$CON)
nep_full_dummies <- bind_rows(nep_pres_dummies,
                              nep_non_pres_dummies)
## Analyzing Index 
mean_LIB <- function(data_set){
  round(mean(data_set[["LIB"]]),3)
}
mean_CON <- function(data_set){
  round(mean(data_set[["CON"]]),3)
}
mean_VOTEind <- function(data_set){
  round(mean(data_set[["VOTEIND"]]),3)
}
mean_IDind <- function(data_set){
  round(mean(data_set[["IDIND"]]),3)
}
mean_ind <- function(data_set){
  round(mean(data_set[["IND"]]),3)
}

ind_analysis <- function(data_set,target_year){
  x <- year(data_set,target_year)
  mean_LIB_col <- c(mean_LIB(straight(x)),
                    mean_LIB(lgbt(x)),
                    mean_LIB(men(straight(x))),
                    mean_LIB(men(lgbt(x))),
                    mean_LIB(women(straight(x))),
                    mean_LIB(women(lgbt(x))),
                    mean_LIB(white(straight(x))),
                    mean_LIB(white(lgbt(x))),
                    mean_LIB(poc(straight(x))),
                    mean_LIB(poc(lgbt(x))),
                    mean_LIB(white(men((straight(x))))),
                    mean_LIB(white(men(lgbt(x)))),
                    mean_LIB(poc(men(straight(x)))),
                    mean_LIB(poc(men(lgbt(x)))),
                    mean_LIB(white(women(straight(x)))),
                    mean_LIB(white(women(lgbt(x)))),
                    mean_LIB(poc(women(straight(x)))),
                    mean_LIB(poc(women(lgbt(x)))))
  mean_CON_col <- c(mean_CON(straight(x)),
                    mean_CON(lgbt(x)),
                    mean_CON(men(straight(x))),
                    mean_CON(men(lgbt(x))),
                    mean_CON(women(straight(x))),
                    mean_CON(women(lgbt(x))),
                    mean_CON(white(straight(x))),
                    mean_CON(white(lgbt(x))),
                    mean_CON(poc(straight(x))),
                    mean_CON(poc(lgbt(x))),
                    mean_CON(white(men((straight(x))))),
                    mean_CON(white(men(lgbt(x)))),
                    mean_CON(poc(men(straight(x)))),
                    mean_CON(poc(men(lgbt(x)))),
                    mean_CON(white(women(straight(x)))),
                    mean_CON(white(women(lgbt(x)))),
                    mean_CON(poc(women(straight(x)))),
                    mean_CON(poc(women(lgbt(x)))))
  mean_VOTEind_col <- c(mean_VOTEind(straight(x)),
                        mean_VOTEind(lgbt(x)),
                        mean_VOTEind(men(straight(x))),
                        mean_VOTEind(men(lgbt(x))),
                        mean_VOTEind(women(straight(x))),
                        mean_VOTEind(women(lgbt(x))),
                        mean_VOTEind(white(straight(x))),
                        mean_VOTEind(white(lgbt(x))),
                        mean_VOTEind(poc(straight(x))),
                        mean_VOTEind(poc(lgbt(x))),
                        mean_VOTEind(white(men((straight(x))))),
                        mean_VOTEind(white(men(lgbt(x)))),
                        mean_VOTEind(poc(men(straight(x)))),
                        mean_VOTEind(poc(men(lgbt(x)))),
                        mean_VOTEind(white(women(straight(x)))),
                        mean_VOTEind(white(women(lgbt(x)))),
                        mean_VOTEind(poc(women(straight(x)))),
                        mean_VOTEind(poc(women(lgbt(x)))))
  mean_IDind_col <- c(mean_IDind(straight(x)),
                      mean_IDind(lgbt(x)),
                      mean_IDind(men(straight(x))),
                      mean_IDind(men(lgbt(x))),
                      mean_IDind(women(straight(x))),
                      mean_IDind(women(lgbt(x))),
                      mean_IDind(white(straight(x))),
                      mean_IDind(white(lgbt(x))),
                      mean_IDind(poc(straight(x))),
                      mean_IDind(poc(lgbt(x))),
                      mean_IDind(white(men((straight(x))))),
                      mean_IDind(white(men(lgbt(x)))),
                      mean_IDind(poc(men(straight(x)))),
                      mean_IDind(poc(men(lgbt(x)))),
                      mean_IDind(white(women(straight(x)))),
                      mean_IDind(white(women(lgbt(x)))),
                      mean_IDind(poc(women(straight(x)))),
                      mean_IDind(poc(women(lgbt(x)))))
  mean_ind_col <- c(mean_ind(straight(x)),
                    mean_ind(lgbt(x)),
                    mean_ind(men(straight(x))),
                    mean_ind(men(lgbt(x))),
                    mean_ind(women(straight(x))),
                    mean_ind(women(lgbt(x))),
                    mean_ind(white(straight(x))),
                    mean_ind(white(lgbt(x))),
                    mean_ind(poc(straight(x))),
                    mean_ind(poc(lgbt(x))),
                    mean_ind(white(men((straight(x))))),
                    mean_ind(white(men(lgbt(x)))),
                    mean_ind(poc(men(straight(x)))),
                    mean_ind(poc(men(lgbt(x)))),
                    mean_ind(white(women(straight(x)))),
                    mean_ind(white(women(lgbt(x)))),
                    mean_ind(poc(women(straight(x)))),
                    mean_ind(poc(women(lgbt(x)))))
  obs <- c(nrow(straight(x)),
           nrow(lgbt(x)),
           nrow(men(straight(x))),
           nrow(men(lgbt(x))),
           nrow(women(straight(x))),
           nrow(women(lgbt(x))),
           nrow(white(straight(x))),
           nrow(white(lgbt(x))),
           nrow(poc(straight(x))),
           nrow(poc(lgbt(x))),
           nrow(white(men((straight(x))))),
           nrow(white(men(lgbt(x)))),
           nrow(poc(men(straight(x)))),
           nrow(poc(men(lgbt(x)))),
           nrow(white(women(straight(x)))),
           nrow(white(women(lgbt(x)))),
           nrow(poc(women(straight(x)))),
           nrow(poc(women(lgbt(x)))))
  return(as_tibble(data.frame(mean_LIB_col,
                              mean_CON_col,
                              mean_VOTEind_col,
                              mean_IDind_col,
                              mean_ind_col,
                              obs)))
}
## Creating CSV of Results

ind_results_table <- data.frame(group,
                                ind_analysis(nep_pres_dummies,2000),
                                ind_analysis(nep_pres_dummies,2004),
                                ind_analysis(nep_non_pres_dummies,2006),
                                ind_analysis(nep_pres_dummies,2008),
                                ind_analysis(nep_non_pres_dummies,2010),
                                ind_analysis(nep_pres_dummies,2012),
                                ind_analysis(nep_non_pres_dummies,2014),
                                ind_analysis(nep_pres_dummies,2016),
                                ind_analysis(nep_non_pres_dummies,2018))
write.table(ind_results_table, file="ind_results_table.csv", sep=",",row.name=FALSE)

