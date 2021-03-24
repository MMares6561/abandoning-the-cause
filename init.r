# Ensure pacman is installed
if (!'pacman' %in% installed.packages()) {
  install.packages('pacman')
}

# Load pacman, it will be used to load all future libraries
library(pacman)

# Ensure DataCombine is installed
if (!'DataCombine' %in% installed.packages()) {
  install.packages('DataCombine')
}

#Load DataCombine
library(DataCombine)