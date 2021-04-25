## Filtering Functions
straight <- function(data_set){
  return(subset(data_set, GAY==2))
}
lgbt <- function(data_set){
  return(subset(data_set, GAY==1))
}
men <- function(data_set){
  return(subset(data_set, SEX==1))
}
women <- function(data_set){
  return(subset(data_set, SEX==2))
}
white <- function(data_set){
  return(subset(data_set, RACE==1))
}
poc <- function(data_set){
  return(subset(data_set, RACE==2|3|4|5))
}
white_men <- function(data_set){
  return(subset(data_set, SEX==1 & RACE==1))
}
poc_men <- function(data_set){
  return(subset(data_set, SEX==1 & RACE==2|3|4|5))
}
white_women <- function(data_set){
  return(subset(data_set, SEX==2 & RACE==1))
}
poc_women <- function(data_set){
  return(subset(data_set, SEX==2 & RACE==2|3|4|5))
}
year <- function(data_set, year){
  return(subset(data_set, YEAR==year))
}

## Analysis Functions
percent_house <- function(data_set){
  return(round(prop.table(table(data_set$HOU)),3))
}
house_analysis <- function(data_set,target_year){
  x <- year(drop_na(data_set,HOU),target_year)
  no_vote <- c(percent_house(straight(x))["0"],
               percent_house(lgbt(x))["0"],
               percent_house(men(straight(x)))["0"],
               percent_house(men(lgbt(x)))["0"],
               percent_house(women(straight(x)))["0"],
               percent_house(women(lgbt(x)))["0"],
               percent_house(white(straight(x)))["0"],
               percent_house(white(lgbt(x)))["0"],
               percent_house(poc(straight(x)))["0"],
               percent_house(poc(lgbt(x)))["0"],
               percent_house(white(men((straight(x)))))["0"],
               percent_house(white(men(lgbt(x))))["0"],
               percent_house(poc(men(straight(x))))["0"],
               percent_house(poc(men(lgbt(x))))["0"],
               percent_house(white(women(straight(x))))["0"],
               percent_house(white(women(lgbt(x))))["0"],
               percent_house(poc(women(straight(x))))["0"],
               percent_house(poc(women(lgbt(x))))["0"])
  dem <-c(percent_house(straight(x))["1"],
          percent_house(lgbt(x))["1"],
          percent_house(men(straight(x)))["1"],
          percent_house(men(lgbt(x)))["1"],
          percent_house(women(straight(x)))["1"],
          percent_house(women(lgbt(x)))["1"],
          percent_house(white(straight(x)))["1"],
          percent_house(white(lgbt(x)))["1"],
          percent_house(poc(straight(x)))["1"],
          percent_house(poc(lgbt(x)))["1"],
          percent_house(white(men((straight(x)))))["1"],
          percent_house(white(men(lgbt(x))))["1"],
          percent_house(poc(men(straight(x))))["1"],
          percent_house(poc(men(lgbt(x))))["1"],
          percent_house(white(women(straight(x))))["1"],
          percent_house(white(women(lgbt(x))))["1"],
          percent_house(poc(women(straight(x))))["1"],
          percent_house(poc(women(lgbt(x))))["1"])
  rep <- c(percent_house(straight(x))["2"],
           percent_house(lgbt(x))["2"],
           percent_house(men(straight(x)))["2"],
           percent_house(men(lgbt(x)))["2"],
           percent_house(women(straight(x)))["2"],
           percent_house(women(lgbt(x)))["2"],
           percent_house(white(straight(x)))["2"],
           percent_house(white(lgbt(x)))["2"],
           percent_house(poc(straight(x)))["2"],
           percent_house(poc(lgbt(x)))["2"],
           percent_house(white(men((straight(x)))))["2"],
           percent_house(white(men(lgbt(x))))["2"],
           percent_house(poc(men(straight(x))))["2"],
           percent_house(poc(men(lgbt(x))))["2"],
           percent_house(white(women(straight(x))))["2"],
           percent_house(white(women(lgbt(x))))["2"],
           percent_house(poc(women(straight(x))))["2"],
           percent_house(poc(women(lgbt(x))))["2"])
  oth <- c(percent_house(straight(x))["9"],
           percent_house(lgbt(x))["9"],
           percent_house(men(straight(x)))["9"],
           percent_house(men(lgbt(x)))["9"],
           percent_house(women(straight(x)))["9"],
           percent_house(women(lgbt(x)))["9"],
           percent_house(white(straight(x)))["9"],
           percent_house(white(lgbt(x)))["9"],
           percent_house(poc(straight(x)))["9"],
           percent_house(poc(lgbt(x)))["9"],
           percent_house(white(men((straight(x)))))["9"],
           percent_house(white(men(lgbt(x))))["9"],
           percent_house(poc(men(straight(x))))["9"],
           percent_house(poc(men(lgbt(x))))["9"],
           percent_house(white(women(straight(x))))["9"],
           percent_house(white(women(lgbt(x))))["9"],
           percent_house(poc(women(straight(x))))["9"],
           percent_house(poc(women(lgbt(x))))["9"])
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
  return(as_tibble(data.frame(no_vote,dem,rep,oth,obs)))
}

## Creating CSV of Results

group <- c(straight,
           lgbt,
           straight_men,
           lgbt_men,
           straight_women,
           lgbt_women,
           straight_white,
           lgbt_white,
           straight_poc,
           lgbt_poc,
           straight_white_men,
           lgbt_white_men,
           straight_poc_men,
           lgbt_poc_men,
           straight_white_women,
           lgbt_white_women,
           straight_poc_women,
           lgbt_poc_women)
house_results_table <- data.frame(group,
                                  house_analysis(nep_full,2000),
                                  house_analysis(nep_full,2004),
                                  house_analysis(nep_full,2006),
                                  house_analysis(nep_full,2008),
                                  house_analysis(nep_full,2010),
                                  house_analysis(nep_full,2012),
                                  house_analysis(nep_full,2014),
                                  house_analysis(nep_full,2016),
                                  house_analysis(nep_full,2018))
write.table(house_results_table, file="house_results_table.csv", sep=",",row.name=FALSE)

