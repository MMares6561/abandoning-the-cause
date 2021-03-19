library(fastDummies)
library(DataCombine)
## Separating Gay Respondents, Percentage of Each Variable

gays2004 <- nep2004[which(nep2004$GAY == 1),]
gays2004 <- gays2004[which(gays2004$SEXRACE == 1),]
round(prop.table(table(gays2004$PARTYID)),3)
nongays2004 <- nep2004[which(nep2004$GAY == 2),]
round(prop.table(table(nongays2004$PARTYID)),3)

## Analysis
complete <- DropNA(nep2004, "GAY", message = TRUE)
dummy_cols(complete$GAY)$x_1
complete <- DropNA(nep2004, "SEX", message = TRUE)
complete$is_male <- dummy_cols(complete$SEX)
complete <- DropNA(nep2004, "PARTYID", message = TRUE)
complete$is_dem <- dummy_cols(complete$PARTYID)

mylogit <- glm(is_dem.x_1 ~ is_gay.x_1 + is_male.x_1 + is_gay.x_1*is_male.x_1, data = complete, family = "binomial")
