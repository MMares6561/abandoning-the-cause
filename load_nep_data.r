
################
##  Packages  ##
################

pacman::p_load(haven)


##########################################
##  Load National Exit Poll Data Files  ##
##########################################
nep2000 <- read_por("./data/2000_nep.por")
nep2002 <- read_por("./data/2002_nep.por")
nep2004 <- read_por("./data/2004_nep.por")
nep2006 <- read_por("./data/2006_nep.por")
nep2008 <- read_por("./data/2008_nep.por")
nep2010 <- read_por("./data/2010_nep.por")
nep2012 <- read_por("./data/2012_nep.por")
nep2014 <- read_por("./data/2014_nep.por")
nep2016 <- read_por("./data/2016_nep.por")
nep2018 <- read_por("./data/2018_nep.por")

