################
##  Packages  ##
################

pacman::p_load(haven)
pacman::p_load(tibble)


##########################################
##  Load National Exit Poll Data Files  ##
##########################################
load_por_df <- function(file_name) {
  return(data.frame((read_por(file_name))))
}

nep00 <- load_por_df("./data/2000_nep.por")
nep02 <- load_por_df("./data/2002_nep.por")
nep04 <- load_por_df("./data/2004_nep.por")
nep06 <- load_por_df("./data/2006_nep.por")
nep08 <- load_por_df("./data/2008_nep.por")
nep10 <- load_por_df("./data/2010_nep.por")
nep12 <- load_por_df("./data/2012_nep.por")
nep14 <- load_por_df("./data/2014_nep.por")
nep16 <- load_por_df("./data/2016_nep.por")
nep18 <- load_por_df("./data/2018_nep.por")
