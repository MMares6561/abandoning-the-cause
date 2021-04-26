pacman::p_load(fastDummies)

## Building Index
#Presidential Years
nep_pres <- bind_rows(year(nep_full,2000),
                      year(nep_full,2004),
                      year(nep_full,2008),
                      year(nep_full,2012),
                      year(nep_full,2016))

dummy_targets_pres <- c("PRES","HOU","PARTYID","PHIL3")
nep_pres_dummies <- drop_na(nep_pres, all_of(dummy_targets_pres))
nep_pres_dummies <- dummy_cols(nep_pres_dummies, 
                               select_columns = all_of(dummy_targets_pres))

nep_pres_dummies <- add_column(nep_pres_dummies, 
                               LIB = (0 -
                                        nep_pres_dummies$HOU_1 -
                                        nep_pres_dummies$PRES_1 -
                                        nep_pres_dummies$PARTYID_1 -
                                        nep_pres_dummies$PHIL3_1)/4)
nep_pres_dummies <- add_column(nep_pres_dummies, 
                               CON = (nep_pres_dummies$HOU_2 +
                                        nep_pres_dummies$PRES_2 +
                                        nep_pres_dummies$PARTYID_2 +
                                        nep_pres_dummies$PHIL3_3)/4)
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

dummy_targets_non_pres <- c("HOU","PARTYID","PHIL3")
nep_non_pres_dummies <- drop_na(nep_non_pres,all_of(dummy_targets_non_pres))
nep_non_pres_dummies <- dummy_cols(nep_non_pres_dummies, 
                                   select_columns = all_of(dummy_targets_non_pres))

nep_non_pres_dummies <- add_column(nep_non_pres_dummies, 
                               LIB = (0 -
                                        nep_non_pres_dummies$HOU_1 -
                                        nep_non_pres_dummies$PARTYID_1 -
                                        nep_non_pres_dummies$PHIL3_1)/3)
nep_non_pres_dummies <- add_column(nep_non_pres_dummies, 
                               CON = (nep_non_pres_dummies$HOU_2 +
                                        nep_non_pres_dummies$PARTYID_2 +
                                        nep_non_pres_dummies$PHIL3_3)/3)
nep_non_pres_dummies <- add_column(nep_non_pres_dummies, 
                               IND = 
                                 nep_non_pres_dummies$LIB + 
                                 nep_non_pres_dummies$CON)

## Analyzing Index 
mean_ind <- function(data_set){
  round(mean(data_set[["IND"]]),3)
}

ind_analysis <- function(data_set,target_year){
  x <- year(data_set,target_year)
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
  return(as_tibble(data.frame(mean_ind_col,obs)))
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


