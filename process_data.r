# Process Data

pacman::p_load(tidyverse)


# Clean Data 

# 2000
nep00 <- add_column(nep00, YEAR = 2000)

# 2004
nep04 <- rename(nep04, PRES = PRES04, HOU = HOU04)
nep04 <- add_column(nep04, YEAR = 2004)

# 2006
nep06 <- add_column(nep06, PRES = NA, YEAR = 2006)

# 2008
nep08 <- rename(nep08, PRES = PRSUS08, HOU = HOUUS08)
nep08 <- add_column(nep08, YEAR = 2008)

# 2010
nep10 <- add_column(nep10, PRES = NA, YEAR = 2010)

# 2012
nep12 <- add_column(nep12, YEAR = 2012)

# 2014
nep14 <- add_column(nep14, PRES = NA, YEAR = 2014)

# 2016
nep16 <- rename(nep16, GAY = LGBT)
nep16 <- add_column(nep16, YEAR = 2016)

# 2018
nep18 <- rename(nep18, GAY = LGBT)
nep18 <- add_column(nep18, PRES = NA, YEAR = 2018)

# Filter wanted columns
get_wanted <- function(nep_table) {
  return(select(nep_table, PRES, HOU, GAY, RACE, YEAR, SEX, PARTYID, PHIL3))
}

nep_full <- bind_rows(get_wanted(nep00),
                      get_wanted(nep04),
                      get_wanted(nep06),
                      get_wanted(nep08),
                      get_wanted(nep10),
                      get_wanted(nep12),
                      get_wanted(nep14),
                      get_wanted(nep16),
                      get_wanted(nep18))



  


