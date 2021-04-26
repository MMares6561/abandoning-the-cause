## Filtering Categories
group <- c("Straight",
           "LGBT",
           "Straight Men",
           "LGBT Men",
           "Straight Women",
           "LGBT Women",
           "Straight White",
           "LGBT White",
           "Straight POC",
           "LGBT POC",
           "Straight White Men",
           "LGBT White Men",
           "Straight POC Men",
           "LGBT POC Men",
           "Straight White Women",
           "LGBT White Women",
           "Straight POC Women",
           "LGBT POC Women")
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
  x <- drop_na(data_set,RACE)
  return(subset(x, RACE!=1))
}
year <- function(data_set, year){
  return(subset(data_set, YEAR==year))
}