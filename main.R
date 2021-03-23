

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
clean_nep2004 <- DropNA(clean_nep2004, "HOU04", message = TRUE)

clean_nep2006 <- DropNA(nep2006, "GAY", message = TRUE)
clean_nep2006 <- DropNA(clean_nep2006, "SEX", message = TRUE)
clean_nep2006 <- DropNA(clean_nep2006, "HOU", message = TRUE)

clean_nep2008 <- DropNA(nep2008, "GAY", message = TRUE)
clean_nep2008 <- DropNA(clean_nep2008, "SEX", message = TRUE)
clean_nep2008 <- DropNA(clean_nep2008, "HOUUS08", message = TRUE)

clean_nep2010 <- DropNA(nep2010, "GAY", message = TRUE)
clean_nep2010 <- DropNA(clean_nep2010, "SEX", message = TRUE)
clean_nep2010 <- DropNA(clean_nep2010, "HOU", message = TRUE)

clean_nep2012 <- DropNA(nep2012, "GAY", message = TRUE)
clean_nep2012 <- DropNA(clean_nep2012, "SEX", message = TRUE)
clean_nep2012 <- DropNA(clean_nep2012, "HOU", message = TRUE)

clean_nep2014 <- DropNA(nep2014, "GAY", message = TRUE)
clean_nep2014 <- DropNA(clean_nep2014, "SEX", message = TRUE)
clean_nep2014 <- DropNA(clean_nep2014, "HOU", message = TRUE)

clean_nep2016 <- DropNA(nep2016, "LGBT", message = TRUE)
clean_nep2016 <- DropNA(clean_nep2016, "SEX", message = TRUE)
clean_nep2016 <- DropNA(clean_nep2016, "HOU", message = TRUE)

clean_nep2018 <- DropNA(nep2018, "LGBT", message = TRUE)
clean_nep2018 <- DropNA(clean_nep2018, "SEX", message = TRUE)
clean_nep2018 <- DropNA(clean_nep2018, "HOU", message = TRUE)

# LGB(T) & GB(T) White Men
LGB_2004 <- clean_nep2004[which(clean_nep2004$GAY == 1),]
GB_white_men_2004 <- LGB_2004[which(LGB_2004$SEXRACE == 1),]
GB_white_men_2004 <- subset(GB_white_men_2004,HOU04!=0)
round(prop.table(table(GB_white_men_2004$HOU04)),3)
round(prop.table(table(LGB_2004$HOU04)),3)

LGB_2006 <- clean_nep2006[which(clean_nep2006$GAY == 1),]
GB_white_men_2006 <- LGB_2006[which(LGB_2006$SEXRACE == 1),]
round(prop.table(table(GB_white_men_2006$HOU)),3)
round(prop.table(table(LGB_2006$HOU)),3)

LGB_2008 <- clean_nep2008[which(clean_nep2008$GAY == 1),]
GB_white_men_2008 <- LGB_2008[which(LGB_2008$SEXRACE == 1),]
round(prop.table(table(GB_white_men_2008$HOUUS08)),3)
round(prop.table(table(LGB_2008$HOUUS08)),3)

LGB_2010 <- clean_nep2010[which(clean_nep2010$GAY == 1),]
GB_white_men_2010 <- LGB_2010[which(LGB_2010$SEXBYRAC == 1),]
round(prop.table(table(GB_white_men_2010$HOU)),3)
round(prop.table(table(LGB_2010$HOU)),3)

LGB_2012 <- clean_nep2012[which(clean_nep2012$GAY == 1),]
GB_white_men_2012 <- LGB_2012[which(LGB_2012$SEXBYRAC == 1),]
round(prop.table(table(GB_white_men_2012$HOU)),3)
round(prop.table(table(LGB_2012$HOU)),3)

LGB_2014 <- clean_nep2014[which(clean_nep2014$GAY == 1),]
GB_white_men_2014 <- LGB_2014[which(LGB_2014$SEXBYRAC == 1),]
round(prop.table(table(GB_white_men_2014$HOU)),3)
round(prop.table(table(LGB_2014$HOU)),3)

LGBT_2016 <- clean_nep2016[which(clean_nep2016$LGBT == 1),]
GBT_white_men_2016 <- LGBT_2016[which(LGBT_2016$SEXBYRAC == 1),]
round(prop.table(table(GBT_white_men_2016$HOU)),3)
round(prop.table(table(LGBT_2016$HOU)),3)

LGBT_2018 <- clean_nep2018[which(clean_nep2018$LGBT == 1),]
GBT_white_men_2018 <- LGBT_2018[which(LGBT_2018$SEXBYRAC == 1),]
round(prop.table(table(GBT_white_men_2018$HOU)),3)
round(prop.table(table(LGBT_2018$HOU)),3)

# Filter