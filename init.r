# Clear old environment
rm(list = ls())

# Ensure pacman is installed
if (!'pacman' %in% installed.packages()) {
  install.packages('pacman')
}

# Load pacman, it will be used to load all future libraries
library(pacman)