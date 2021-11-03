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
ctl <- SS_readctl(file.path(new_mod, "control.ss"), datlist = dat )
ctl[["EmpiricalWAA"]] <- 1
# turn of stddev reporting
ctl[["more_stddev_reporting"]] <- 0
ctl[["stddev_reporting_specs"]] <- NULL
ctl[["stddev_reporting_selex"]] <- NULL
ctl[["stddev_reporting_growth"]] <- NULL
ctl[["stddev_reporting_N_at_A"]] <- NULL
# turn off size selectivity
ctl$size_selex_types$Pattern <- 0
ctl$size_selex_parms <- NULL
# turn off estimating steepness
ctl$SR_parms[2, "PHASE"] <- -4
# turn off estimating q, because just goes to the lowest bound
q_row <- grep("LnQ_base_SURVEY2(3)", row.names(ctl$Q_parms),fixed = T)
ctl$Q_parms[q_row, "PHASE"] <- -4
ctl$Q_parms[q_row, "INIT"] <- -7.9
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
            