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
file.remove(list.files(path = new_mod, full.names = TRUE, recursive = TRUE, 
                       include.dirs = TRUE))
unlink(new_mod)
copy_SS_inputs(dir.old = tmp_folder, dir.new = new_mod)
file.copy(file.path(tmp_folder, "ss_summary.sso"), file.path(new_mod, "ss_summary.sso"))
unlink(tmp_folder)
            