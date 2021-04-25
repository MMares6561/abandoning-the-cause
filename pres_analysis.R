percent_pres <- function(data_set){
  return(round(prop.table(table(data_set$PRES)),3))
}