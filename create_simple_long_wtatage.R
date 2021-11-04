# create simpler wt at age

# load pkgs set options ----

library(r4ss)

# setup folder ----
old_mod <- file.path("model_files", "simple_long")
new_mod <- file.path("model_files", "simple_long_wtatage")

# copy inputs over ---
copy_SS_inputs(dir.old = old_mod, dir.new = new_mod, copy_exe = FALSE)

# create wt at age model ----
# run model to get the wtatage.ss_new file
run_SS_models(new_mod, model = "ss_3.30.18", exe_in_path = TRUE)

# change name of wtatage file
file.copy(from = file.path(new_mod, "wtatage.ss_new"),
          to = file.path(new_mod, "wtatage.ss"))
# read in data and ctl file
dat <- SS_readdat(file.path(new_mod, "data.ss"))
ctl <- SS_readctl(file.path(new_mod, "control.ss"), datlist = dat)
ctl[["EmpiricalWAA"]] <- 1
# turn of stddev reporting
ctl[["more_stddev_reporting"]] <- 0
ctl[["stddev_reporting_specs"]] <- NULL
ctl[["stddev_reporting_selex"]] <- NULL
ctl[["stddev_reporting_growth"]] <- NULL
ctl[["stddev_reporting_N_at_A"]] <- NULL

ctl$age_selex_types$Pattern <- c(rep(12, 2), rep(11, 1))
# add age selectivity params
tmp_age_selex_parms <- rbind(ctl$size_selex_parms, ctl$age_selex_parms[5:6,])
rownames(tmp_age_selex_parms) <- gsub("Size", "Age", rownames(tmp_age_selex_parms))
tmp_age_selex_parms[c(1, 3), "LO"] <- 0.001
tmp_age_selex_parms[c(1, 3), "HI"] <- 30
tmp_age_selex_parms[c(1, 3), "INIT"] <- 10
tmp_age_selex_parms[c(1, 3), "PR_type"] <- 00
tmp_age_selex_parms[c(2, 4), "LO"] <- 0.001
tmp_age_selex_parms[c(2, 4), "HI"] <- 20
tmp_age_selex_parms[c(2, 4), "INIT"] <- 10
tmp_age_selex_parms[c(2, 4), "PR_type"] <- 0

ctl$age_selex_parms <- tmp_age_selex_parms

# turn off size selectivity
ctl$size_selex_types$Pattern <- 0
ctl$size_selex_parms <- NULL
SS_writectl(ctl, file.path(new_mod, "control.ss"), overwrite = TRUE)

# run model to test ----

run_SS_models(new_mod, model = "ss_3.30.18", exe_in_path = TRUE,
              skipfinished = FALSE)
# look at output
out <- SS_output(dir = new_mod)
SS_plots(out)

# get rid of output ----
tmp_folder <- file.path("model_files", "tmp_mod")
copy_SS_inputs(dir.old = new_mod, dir.new = tmp_folder)
file.copy(file.path(new_mod, "ss_summary.sso"), file.path(tmp_folder, "ss_summary.sso"))
unlink(new_mod, recursive = TRUE)
copy_SS_inputs(dir.old = tmp_folder, dir.new = new_mod)
file.copy(file.path(tmp_folder, "ss_summary.sso"), file.path(new_mod, "ss_summary.sso"))
unlink(tmp_folder, recursive = TRUE)
            