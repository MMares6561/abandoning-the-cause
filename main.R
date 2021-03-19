

############################################################################
##  Abandoning the Cause - Are White, Gay Men Becoming More Conservative  ##
##                       Data Grooming and Analysis                       ##
############################################################################

# Install and load packages
source("./init.r")

# Load datasets
source("load_nep_data.r")

# Clean Data
library(DataCombine)

clean_nep2004 <- DropNA(nep2004, "GAY", message = TRUE)
clean_nep2004 <- DropNA(clean_nep2004, "SEX", message = TRUE)
clean_nep2004 <- DropNA(clean_nep2004, "PARTYID", message = TRUE)

clean_nep2006 <- DropNA(nep2006, "GAY", message = TRUE)
clean_nep2006 <- DropNA(clean_nep2006, "SEX", message = TRUE)
clean_nep2006 <- DropNA(clean_nep2006, "PARTYID", message = TRUE)

clean_nep2008 <- DropNA(nep2008, "GAY", message = TRUE)
clean_nep2008 <- DropNA(clean_nep2008, "SEX", message = TRUE)
clean_nep2008 <- DropNA(clean_nep2008, "PARTYID", message = TRUE)

clean_nep2010 <- DropNA(nep2010, "GAY", message = TRUE)
clean_nep2010 <- DropNA(clean_nep2010, "SEX", message = TRUE)
clean_nep2010 <- DropNA(clean_nep2010, "PARTYID", message = TRUE)

clean_nep2012 <- DropNA(nep2012, "GAY", message = TRUE)
clean_nep2012 <- DropNA(clean_nep2012, "SEX", message = TRUE)
clean_nep2012 <- DropNA(clean_nep2012, "PARTYID", message = TRUE)

clean_nep2014 <- DropNA(nep2014, "GAY", message = TRUE)
clean_nep2014 <- DropNA(clean_nep2014, "SEX", message = TRUE)
clean_nep2014 <- DropNA(clean_nep2014, "PARTYID", message = TRUE)

clean_nep2016 <- DropNA(nep2016, "GAY", message = TRUE)
clean_nep2016 <- DropNA(clean_nep2016, "SEX", message = TRUE)
clean_nep2016 <- DropNA(clean_nep2016, "PARTYID", message = TRUE)

clean_nep2018 <- DropNA(nep2018, "GAY", message = TRUE)
clean_nep2018 <- DropNA(clean_nep2018, "SEX", message = TRUE)
clean_nep2018 <- DropNA(clean_nep2018, "PARTYID", message = TRUE)

# Early Analysis
gay_2004 <- clean_nep2004[which(clean_nep2004$GAY == 1),]
gay_white_men_2004 <- gay_2004[which(gay_2004$SEXRACE == 1),]
round(prop.table(table(gay_white_men_2004$PARTYID)),3)

gay_2006 <- clean_nep2006[which(clean_nep2006$GAY == 1),]
gay_white_men_2006 <- gay_2006[which(gay_2006$SEXRACE == 1),]
round(prop.table(table(gay_white_men_2006$PARTYID)),3)

gay_2008 <- clean_nep2008[which(clean_nep2008$GAY == 1),]
gay_white_men_2008 <- gay_2008[which(gay_2008$SEXRACE == 1),]
round(prop.table(table(gay_white_men_2008$PARTYID)),3)

gay_2010 <- clean_nep2010[which(clean_nep2010$GAY == 1),]
gay_white_men_2010 <- gay_2010[which(gay_2010$SEXRACE == 1),]
round(prop.table(table(gay_white_men_2010$PARTYID)),3)

gay_2012 <- clean_nep2012[which(clean_nep2012$GAY == 1),]
gay_white_men_2012 <- gay_2012[which(gay_2012$SEXRACE == 1),]
round(prop.table(table(gay_white_men_2012$PARTYID)),3)

gay_2014 <- clean_nep2014[which(clean_nep2014$GAY == 1),]
gay_white_men_2014 <- gay_2014[which(gay_2014$SEXRACE == 1),]
round(prop.table(table(gay_white_men_2014$PARTYID)),3)

gay_2016 <- clean_nep2016[which(clean_nep2016$GAY == 1),]
gay_white_men_2016 <- gay_2016[which(gay_2016$SEXRACE == 1),]
round(prop.table(table(gay_white_men_2016$PARTYID)),3)

gay_2018 <- clean_nep2018[which(clean_nep2018$GAY == 1),]
gay_white_men_2018 <- gay_2018[which(gay_2018$SEXRACE == 1),]
round(prop.table(table(gay_white_men_2018$PARTYID)),3)

# Filter