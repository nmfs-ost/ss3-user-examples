# create a new version of simple (call it simpler)
# update it to use best practices
library(r4ss)
library(dplyr)

orig_mod <- file.path("model_files", "simple")
new_mod <- file.path("model_files", "simple_update")
dir.create(new_mod)
start <- SS_readstarter(file.path(orig_mod, "starter.ss"))
fore <- SS_readforecast(file.path(orig_mod, "forecast.ss"))
dat <- SS_readdat(file.path(orig_mod, start[["datfile"]]))
ctl <- SS_readctl(file.path(orig_mod, start[["ctlfile"]]), datlist = dat)

# put neg fleet vals in to get predicted vals/bootstrap ----
# modify starter ---
start$N_bootstraps <- 3

# change recruitment distribution ----
ctl$recr_dist_method <- 4
rows_to_rm <- grep("RecrDist", rownames(ctl$MG_parms))
ctl$MG_parms <- ctl$MG_parms[-rows_to_rm,]
ctl$SR_parms[1,"INIT"] <- 12
# modify years?
# changes to get rid of other warning
                     
# change model to end in 2021 instead of 2001 ---
dat$endyr <- 2021

dat$catch
new_catch <- data.frame(year = 2002:2021,
                        seas = 1,
                        fleet = 1,
                        catch = c(rep(2000, times = 6), rep(1000, times = 4), 
                                  rep(2000, times = 5), rep(3000, times = 5)),
                        catch_se = 0.01)
dat$catch <- rbind(dat$catch, new_catch)

new_CPUE <- data.frame(year = c(seq(2002, 2021, by = 3), 2002:2021 ), 
                       seas = 7,
                       index = c(rep(-2, length.out = length(seq(2002, 2021, by = 3))), 
                                 rep(-3, length.out = length(2002:2021))), 
                       obs = 1, 
                       se_log = c(rep(0.3, length.out = length(seq(2002,2021, by = 3))), 
                                  rep(0.7, length.out = length(2002:2021))))
dat$CPUE <- rbind(dat$CPUE, new_CPUE)
# lencomp ---
dat$lencomp 
new_lencomp_flt_1 <- data.frame(Yr = 2002:2021, Seas = 7, FltSvy = -1, 
                                Gender = 3, Part = 0, Nsamp = 125)
new_lencomp_flt_2 <- data.frame(Yr = seq(2002, 2021, by = 3), Seas = 7, FltSvy = -2, 
                                Gender = 3, Part = 0, Nsamp = 125)
dat_rows_names <- colnames(dat$lencomp)[-(1:6)]
dat_rows <- as.data.frame(matrix(data = 1, nrow = nrow(new_lencomp_flt_1)+nrow(new_lencomp_flt_2), 
                   ncol = length(dat_rows_names)))
names(dat_rows) <- dat_rows_names 


new_lencomp <- rbind(new_lencomp_flt_1, new_lencomp_flt_2)
new_lencomp <- cbind(new_lencomp, dat_rows)

dat$lencomp <- rbind(dat$lencomp, new_lencomp)

# agecomp ---
new_agecomp_flt_1 <- data.frame(Yr = 2002:2021, Seas = 7, FltSvy = -1, 
                                Gender = 3, Part = 0,  Ageerr = 2, 
                                Lbin_lo = -1, Lbin_hi = -1, Nsamp = 75)
new_agecomp_flt_2 <- data.frame(Yr = seq(2002, 2021, by = 3), Seas = 7, 
                                FltSvy = -2, Gender = 3, Part = 0, Ageerr = 2,
                                Lbin_lo = -1, Lbin_hi = -1, Nsamp = 75)
dat_rows_names <- colnames(dat$agecomp)[-(1:9)]
dat_rows <- as.data.frame(matrix(data = 1, nrow = nrow(new_agecomp_flt_1)+nrow(new_agecomp_flt_2), 
                                 ncol = length(dat_rows_names)))
names(dat_rows) <- dat_rows_names 


new_agecomp <- rbind(new_agecomp_flt_1, new_agecomp_flt_2)
new_agecomp <- cbind(new_agecomp, dat_rows)
dat$agecomp <- rbind(dat$agecomp, new_agecomp)

# leave mean size at age as is. (or take out?)

# write out all (in case of changes)
SS_writestarter(start, file.path(new_mod), overwrite = TRUE)
SS_writeforecast(fore, file.path(new_mod), overwrite = TRUE) # this could be made simpler...not sure if it should be or not.
SS_writedat(dat, file.path(new_mod, start[["datfile"]]), overwrite = TRUE)
SS_writectl(ctl, file.path(new_mod, start[["ctlfile"]]), overwrite = TRUE)

# run model ------

r4ss::run_SS_models(file.path(new_mod), model = "ss_3.30.18", exe_in_path = TRUE, 
                    skipfinished = FALSE)

# read in data.ss_new bootstrap vals and update the data file. ----
dat_new_boot<- SS_readdat(file.path(new_mod, "data.ss_new"), section = 3,
                               verbose = FALSE)
# CPUE ---
new_cpue_boot <- dat_new_boot$CPUE[dat_new_boot$CPUE$index < 0, ]
new_cpue_boot$index <- abs(new_cpue_boot$index)
dat$CPUE <- dat$CPUE[dat$CPUE$index > 0 , ]
dat$CPUE <- rbind(dat$CPUE, new_cpue_boot)

dat$CPUE <- dat$CPUE %>% 
             arrange(index, year)

# lencomp ----
new_lencomp_boot <- dat_new_boot$lencomp[dat_new_boot$lencomp$FltSvy < 0, ]
new_lencomp_boot$FltSvy <- abs(new_lencomp_boot$FltSvy)

dat$lencomp <- dat$lencomp[dat$lencomp$FltSvy > 0 , ]
dat$lencomp <- rbind(dat$lencomp, new_lencomp_boot)

# agecomp ----
new_agecomp_boot <- dat_new_boot$agecomp[dat_new_boot$agecomp$FltSvy < 0, ]
new_agecomp_boot$FltSvy <- abs(new_agecomp_boot$FltSvy)

dat$agecomp <- dat$agecomp[dat$agecomp$FltSvy > 0 , ]
dat$agecomp <- rbind(dat$agecomp, new_agecomp_boot)

# Change the Lbin vals to all be -1
dat$agecomp$Lbin_lo <- -1
dat$agecomp$Lbin_hi <- -1

SS_writedat(dat, file.path(new_mod, start$datfile), overwrite = TRUE)

# adjust recdevs in ctl fil e------
ctl$last_early_yr_nobias_adj <- 1911
ctl$first_yr_fullbias_adj <- floor(1990.9)
ctl$last_yr_fullbias_adj <- floor(2020.7)
ctl$max_bias_adj <- 0.8
ctl$MainRdevYrLast <- 2019
ctl$first_recent_yr_nobias_adj <- 2021

SS_writectl(ctl, file.path(new_mod, start$ctlfile), overwrite = TRUE)

# change starter ---
start$maxyr_sdreport <- -2
SS_writestarter(start, new_mod, overwrite = TRUE)

# run final mod ----
# run model again with new data file and look at results
r4ss::run_SS_models(file.path(new_mod), model = "ss_3.30.18", exe_in_path = TRUE, 
                    skipfinished = FALSE)
out <- SS_output(file.path(new_mod), verbose = FALSE)
SS_plots(out)

# -- copy over inputfiles and remove old file ----

copy_SS_inputs(dir.old = new_mod,
               dir.new = file.path("model_files","simple_long"), 
               use_ss_new = F, copy_exe = FALSE, copy_par = FALSE)
file.copy(from = file.path(new_mod, "ss_summary.sso"),
          to = file.path("model_files", "simple_long", "ss_summary.sso"))
file.remove(list.files(new_mod, full.names = TRUE, recursive = TRUE))
