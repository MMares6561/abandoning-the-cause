# Process Data

pacman::p_load(tidyverse)
pacman::p_load(labelled)


# Clean Data 

# 2000
nep00 <- add_column(nep00, YEAR = 2000)
nep00$SEN <- NA
nep00$GOV <- NA

# 2004
nep04 <- rename(nep04, PRES = PRES04, HOU = HOU04)
nep04 <- add_column(nep04, YEAR = 2004)
nep04 <- add_column(nep04, SEN = NA)
nep04 <- add_column(nep04, GOV = NA)

# 2006
nep06 <- add_column(nep06, PRES = NA, YEAR = 2006)

# 2008
nep08 <- rename(nep08, PRES = PRSUS08, HOU = HOUUS08)
nep08 <- add_column(nep08, YEAR = 2008)
nep08 <- add_column(nep08, SEN = NA)
nep08 <- add_column(nep08, GOV = NA)

# 2010
nep10 <- add_column(nep10, PRES = NA, YEAR = 2010)

# 2012
nep12 <- add_column(nep12, YEAR = 2012)
nep12$SEN <- NA
nep12 <- add_column(nep12, GOV = NA)

# 2014
nep14 <- add_column(nep14, PRES = NA, YEAR = 2014)

# 2016
nep16 <- rename(nep16, GAY = LGBT)
nep16 <- add_column(nep16, YEAR = 2016)
nep16 <- add_column(nep16, SEN = NA)
nep16 <- add_column(nep16, GOV = NA)

# 2018
nep18 <- rename(nep18, GAY = LGBT)
nep18 <- add_column(nep18, PRES = NA, YEAR = 2018)

# Filter Wanted Columns
get_wanted <- function(nep_table) {
  return(select(nep_table, PRES, HOU, SEN, GOV, GAY, RACE, YEAR, SEX, PARTYID, PHIL3))
}

nep00 <- data.frame(nep00) %>% mutate_all(as.character)
nep04 <- data.frame(nep04) %>% mutate_all(as.character)
nep06 <- data.frame(nep06) %>% mutate_all(as.character)
nep08 <- data.frame(nep08) %>% mutate_all(as.character)
nep10 <- data.frame(nep10) %>% mutate_all(as.character)
nep12 <- data.frame(nep12) %>% mutate_all(as.character)
nep14 <- data.frame(nep14) %>% mutate_all(as.character)
nep16 <- data.frame(nep16) %>% mutate_all(as.character)
nep18 <- data.frame(nep18) %>% mutate_all(as.character)

nep_full <- rbind(get_wanted(nep00),
                  get_wanted(nep04),
                  get_wanted(nep06),
                  get_wanted(nep08),
                  get_wanted(nep10),
                  get_wanted(nep12),
                  get_wanted(nep14),
                  get_wanted(nep16),
                  get_wanted(nep18))

# Remove Respondents w/o LGBT Data
nep_full <- drop_na(nep_full,GAY)
