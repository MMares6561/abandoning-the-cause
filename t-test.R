## Statistical Significance

clean_stat_nep_full <- drop_na(nep_full_dummies, c("GAY","IND"))
gay_stat <- lgbt(clean_stat_nep_full)

stat_2000to2004 <- bind_rows(year(gay_stat,2000),
                             year(gay_stat,2018))


t.test(IND ~ YEAR, data = stat_2000to2004)


