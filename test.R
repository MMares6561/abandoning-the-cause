# Libraries
library(haven)

# Clear old environment
rm(list = ls())

# Load datasets
nep2004 <- read_por("./data/2004_nes.por")
nep2006 <- read_por("./data/2006_nes.por")
nep2008 <- read_por("./data/2008_nes.por")
nep2010 <- read_por("./data/2010_nes.por")
nep2012 <- read_por("./data/2012_nes.por")
nep2014 <- read_por("./data/2014_nes.por")
nep2016 <- read_por("./data/2016_nes.por")
nep2018 <- read_por("./data/2018_nes.por")

# Clean Data


# Filter