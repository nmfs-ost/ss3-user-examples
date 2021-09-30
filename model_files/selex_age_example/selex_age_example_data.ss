#V3.30.18.00;_safe;_compile_date:_Sep 30 2021;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Thu Sep 30 11:27:36 2021
#_Number_of_datafiles: 3
#C data file for model showing different selectivities
#_observed data: 
#V3.30.18.00;_safe;_compile_date:_Sep 30 2021;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
2001 #_StartYr
2012 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
2 #_Ngenders: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
20 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
6 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 1 1 1 0 Type12_age_logistic  # 1
 1 1 1 1 0 Type14_age_non-parametric  # 2
 1 1 1 1 0 Type17_age_random-walk  # 3
 1 1 1 1 0 Type20_age_double-normal  # 4
 1 1 1 1 0 Type25_age_exponential-logistic  # 5
 1 1 1 1 0 Type27_age_cubic-spline  # 6
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f 
#_Catch data: yr, seas, fleet, catch, catch_se
#_catch_se:  standard error of log(catch)
#_NOTE:  catch data is ignored for survey fleets
-999 1 1 0 0.1
2001 1 1 1000 0.1
2002 1 1 1000 0.1
2003 1 1 1000 0.1
2004 1 1 1000 0.1
2005 1 1 1000 0.1
2006 1 1 1000 0.1
2007 1 1 1000 0.1
2008 1 1 1000 0.1
2009 1 1 1000 0.1
2010 1 1 1000 0.1
2011 1 1 1000 0.1
2012 1 1 1000 0.1
-999 1 2 0 0.1
2001 1 2 1000 0.1
2002 1 2 1000 0.1
2003 1 2 1000 0.1
2004 1 2 1000 0.1
2005 1 2 1000 0.1
2006 1 2 1000 0.1
2007 1 2 1000 0.1
2008 1 2 1000 0.1
2009 1 2 1000 0.1
2010 1 2 1000 0.1
2011 1 2 1000 0.1
2012 1 2 1000 0.1
-999 1 3 0 0.1
2001 1 3 1000 0.1
2002 1 3 1000 0.1
2003 1 3 1000 0.1
2004 1 3 1000 0.1
2005 1 3 1000 0.1
2006 1 3 1000 0.1
2007 1 3 1000 0.1
2008 1 3 1000 0.1
2009 1 3 1000 0.1
2010 1 3 1000 0.1
2011 1 3 1000 0.1
2012 1 3 1000 0.1
-999 1 4 0 0.1
2001 1 4 1000 0.1
2002 1 4 1000 0.1
2003 1 4 1000 0.1
2004 1 4 1000 0.1
2005 1 4 1000 0.1
2006 1 4 1000 0.1
2007 1 4 1000 0.1
2008 1 4 1000 0.1
2009 1 4 1000 0.1
2010 1 4 1000 0.1
2011 1 4 1000 0.1
2012 1 4 1000 0.1
-999 1 5 0 0.1
2001 1 5 1000 0.1
2002 1 5 1000 0.1
2003 1 5 1000 0.1
2004 1 5 1000 0.1
2005 1 5 1000 0.1
2006 1 5 1000 0.1
2007 1 5 1000 0.1
2008 1 5 1000 0.1
2009 1 5 1000 0.1
2010 1 5 1000 0.1
2011 1 5 1000 0.1
2012 1 5 1000 0.1
-999 1 6 0 0.1
2001 1 6 0 0.1
2002 1 6 0 0.1
2003 1 6 0 0.1
2004 1 6 0 0.1
2005 1 6 0 0.1
2006 1 6 0 0.1
2007 1 6 0 0.1
2008 1 6 0 0.1
2009 1 6 0 0.1
2010 1 6 0 0.1
2011 1 6 0 0.1
2012 1 6 0 0.1
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 1 0 0 # Type12_age_logistic
2 1 0 0 # Type14_age_non-parametric
3 1 0 0 # Type17_age_random-walk
4 1 0 0 # Type20_age_double-normal
5 1 0 0 # Type25_age_exponential-logistic
6 1 0 0 # Type27_age_cubic-spline
#_yr month fleet obs stderr
2001 7 1 10 0.1 #_ Type12_age_logistic
2002 7 1 9 0.1 #_ Type12_age_logistic
2003 7 1 8 0.1 #_ Type12_age_logistic
2004 7 1 7 0.1 #_ Type12_age_logistic
2005 7 1 6 0.1 #_ Type12_age_logistic
2006 7 1 5 0.1 #_ Type12_age_logistic
2007 7 1 5 0.1 #_ Type12_age_logistic
2008 7 1 4 0.1 #_ Type12_age_logistic
2009 7 1 4 0.1 #_ Type12_age_logistic
2010 7 1 3.5 0.1 #_ Type12_age_logistic
-9999 1 1 1 1 # terminator for survey observations 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
#  -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
2 # binwidth for population size comp 
10 # minimum size in the population (lower edge of first bin and size at age 0.00) 
98 # maximum size in the population (lower edge of last bin) 
1 # use length composition data (0/1)
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_ParmSelect:  parm number for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 0.001 1 0 0 0 1 #_fleet:1_Type12_age_logistic
-1 0.001 1 0 0 0 1 #_fleet:2_Type14_age_non-parametric
-1 0.001 1 0 0 0 1 #_fleet:3_Type17_age_random-walk
-1 0.001 1 0 0 0 1 #_fleet:4_Type20_age_double-normal
-1 0.001 1 0 0 0 1 #_fleet:5_Type25_age_exponential-logistic
-1 0.001 1 0 0 0 1 #_fleet:6_Type27_age_cubic-spline
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
33 #_N_LengthBins; then enter lower edge of each length bin
 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90
#_yr month fleet sex part Nsamp datavector(female-male)
 2010 7 -1 3 0 5000 1.3142 0.684373 0.665914 0.70442 0.838423 1.0281 1.24257 1.52219 1.95796 2.63186 3.6012 4.92709 6.67701 8.87967 11.4745 14.2904 17.0539 19.4236 21.0525 21.6694 21.1521 19.5642 17.141 14.2287 11.2002 8.376 5.9723 4.08657 2.71456 1.78503 1.19703 0.849092 0.805616 0 0.716284 0.757302 0.908778 1.16022 1.49377 1.98434 2.77132 3.98483 5.73215 8.0996 11.0936 14.5562 18.1307 21.304 23.5175 24.322 23.5241 21.2574 17.9425 14.1536 10.4516 7.25045 4.75844 2.99485 1.85341 1.17512 0.804107 0.616989 0.529888 0.492446 0.47758 0.473229
 2010 7 -2 3 0 5000 1.3142 0.684373 0.665914 0.70442 0.838423 1.0281 1.24257 1.52219 1.95796 2.63186 3.6012 4.92709 6.67701 8.87967 11.4745 14.2904 17.0539 19.4236 21.0525 21.6694 21.1521 19.5642 17.141 14.2287 11.2002 8.376 5.9723 4.08657 2.71456 1.78503 1.19703 0.849092 0.805616 0 0.716284 0.757302 0.908778 1.16022 1.49377 1.98434 2.77132 3.98483 5.73215 8.0996 11.0936 14.5562 18.1307 21.304 23.5175 24.322 23.5241 21.2574 17.9425 14.1536 10.4516 7.25045 4.75844 2.99485 1.85341 1.17512 0.804107 0.616989 0.529888 0.492446 0.47758 0.473229
 2010 7 -3 3 0 5000 1.3142 0.684373 0.665914 0.70442 0.838423 1.0281 1.24257 1.52219 1.95796 2.63186 3.6012 4.92709 6.67701 8.87967 11.4745 14.2904 17.0539 19.4236 21.0525 21.6694 21.1521 19.5642 17.141 14.2287 11.2002 8.376 5.9723 4.08657 2.71456 1.78503 1.19703 0.849092 0.805616 0 0.716284 0.757302 0.908778 1.16022 1.49377 1.98434 2.77132 3.98483 5.73215 8.0996 11.0936 14.5562 18.1307 21.304 23.5175 24.322 23.5241 21.2574 17.9425 14.1536 10.4516 7.25045 4.75844 2.99485 1.85341 1.17512 0.804107 0.616989 0.529888 0.492446 0.47758 0.473229
 2010 7 -4 3 0 5000 1.3142 0.684373 0.665914 0.70442 0.838423 1.0281 1.24257 1.52219 1.95796 2.63186 3.6012 4.92709 6.67701 8.87967 11.4745 14.2904 17.0539 19.4236 21.0525 21.6694 21.1521 19.5642 17.141 14.2287 11.2002 8.376 5.9723 4.08657 2.71456 1.78503 1.19703 0.849092 0.805616 0 0.716284 0.757302 0.908778 1.16022 1.49377 1.98434 2.77132 3.98483 5.73215 8.0996 11.0936 14.5562 18.1307 21.304 23.5175 24.322 23.5241 21.2574 17.9425 14.1536 10.4516 7.25045 4.75844 2.99485 1.85341 1.17512 0.804107 0.616989 0.529888 0.492446 0.47758 0.473229
 2010 7 -5 3 0 5000 1.3142 0.684373 0.665914 0.70442 0.838423 1.0281 1.24257 1.52219 1.95796 2.63186 3.6012 4.92709 6.67701 8.87967 11.4745 14.2904 17.0539 19.4236 21.0525 21.6694 21.1521 19.5642 17.141 14.2287 11.2002 8.376 5.9723 4.08657 2.71456 1.78503 1.19703 0.849092 0.805616 0 0.716284 0.757302 0.908778 1.16022 1.49377 1.98434 2.77132 3.98483 5.73215 8.0996 11.0936 14.5562 18.1307 21.304 23.5175 24.322 23.5241 21.2574 17.9425 14.1536 10.4516 7.25045 4.75844 2.99485 1.85341 1.17512 0.804107 0.616989 0.529888 0.492446 0.47758 0.473229
 2010 7 -6 3 0 5000 1.3142 0.684373 0.665914 0.70442 0.838423 1.0281 1.24257 1.52219 1.95796 2.63186 3.6012 4.92709 6.67701 8.87967 11.4745 14.2904 17.0539 19.4236 21.0525 21.6694 21.1521 19.5642 17.141 14.2287 11.2002 8.376 5.9723 4.08657 2.71456 1.78503 1.19703 0.849092 0.805616 0 0.716284 0.757302 0.908778 1.16022 1.49377 1.98434 2.77132 3.98483 5.73215 8.0996 11.0936 14.5562 18.1307 21.304 23.5175 24.322 23.5241 21.2574 17.9425 14.1536 10.4516 7.25045 4.75844 2.99485 1.85341 1.17512 0.804107 0.616989 0.529888 0.492446 0.47758 0.473229
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
15 #_N_age_bins
 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
1 #_N_ageerror_definitions
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_ParmSelect:  parm number for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 0.001 0 0 0 0 1 #_fleet:1_Type12_age_logistic
-1 0.001 0 0 0 0 1 #_fleet:2_Type14_age_non-parametric
-1 0.001 0 0 0 0 1 #_fleet:3_Type17_age_random-walk
-1 0.001 0 0 0 0 1 #_fleet:4_Type20_age_double-normal
-1 0.001 0 0 0 0 1 #_fleet:5_Type25_age_exponential-logistic
-1 0.001 0 0 0 0 1 #_fleet:6_Type27_age_cubic-spline
3 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
 2010 7 1 3 0 1 -1 -1 250 1 4 5 15 26 27 16 12 12 2 3 1 3 0 2 1 3 11 18 26 22 15 12 7 4 1 0 0 1 0
 2010 7 2 3 0 1 -1 -1 250 1 4 5 15 26 27 16 12 12 2 3 1 3 0 2 1 3 11 18 26 22 15 12 7 4 1 0 0 1 0
 2010 7 3 3 0 1 -1 -1 250 1 4 5 15 26 27 16 12 12 2 3 1 3 0 2 1 3 11 18 26 22 15 12 7 4 1 0 0 1 0
 2010 7 4 3 0 1 -1 -1 250 1 4 5 15 26 27 16 12 12 2 3 1 3 0 2 1 3 11 18 26 22 15 12 7 4 1 0 0 1 0
 2010 7 5 3 0 1 -1 -1 250 1 4 5 15 26 27 16 12 12 2 3 1 3 0 2 1 3 11 18 26 22 15 12 7 4 1 0 0 1 0
 2010 7 6 3 0 1 -1 -1 250 1 4 5 15 26 27 16 12 12 2 3 1 3 0 2 1 3 11 18 26 22 15 12 7 4 1 0 0 1 0
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
# -2 in yr will subtract mean for that env_var; -1 will subtract mean and divide by stddev (e.g. Z-score)
#Yr Variable Value
#
0 # N sizefreq methods to read 
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
# Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
# feature not yet implemented
#
999

#_expected values with no error added 
#V3.30.18.00;_safe;_compile_date:_Sep 30 2021;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
2001 #_StartYr
2012 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
2 #_Ngenders: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
20 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
6 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 1 1 1 0 Type12_age_logistic  # 1
 1 1 1 1 0 Type14_age_non-parametric  # 2
 1 1 1 1 0 Type17_age_random-walk  # 3
 1 1 1 1 0 Type20_age_double-normal  # 4
 1 1 1 1 0 Type25_age_exponential-logistic  # 5
 1 1 1 1 0 Type27_age_cubic-spline  # 6
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f 
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 0 0.1
2001 1 1 1000 0.1
2002 1 1 1000 0.1
2003 1 1 1000 0.1
2004 1 1 1000 0.1
2005 1 1 999.999 0.1
2006 1 1 999.999 0.1
2007 1 1 999.997 0.1
2008 1 1 999.995 0.1
2009 1 1 999.989 0.1
2010 1 1 999.979 0.1
2011 1 1 999.96 0.1
2012 1 1 999.923 0.1
-999 1 2 0 0.1
2001 1 2 1000 0.1
2002 1 2 1000 0.1
2003 1 2 1000 0.1
2004 1 2 1000 0.1
2005 1 2 999.999 0.1
2006 1 2 999.999 0.1
2007 1 2 999.997 0.1
2008 1 2 999.995 0.1
2009 1 2 999.99 0.1
2010 1 2 999.98 0.1
2011 1 2 999.962 0.1
2012 1 2 999.928 0.1
-999 1 3 0 0.1
2001 1 3 1000 0.1
2002 1 3 1000 0.1
2003 1 3 1000 0.1
2004 1 3 1000 0.1
2005 1 3 999.999 0.1
2006 1 3 999.999 0.1
2007 1 3 999.998 0.1
2008 1 3 999.995 0.1
2009 1 3 999.99 0.1
2010 1 3 999.981 0.1
2011 1 3 999.963 0.1
2012 1 3 999.93 0.1
-999 1 4 0 0.1
2001 1 4 1000 0.1
2002 1 4 1000 0.1
2003 1 4 1000 0.1
2004 1 4 1000 0.1
2005 1 4 999.999 0.1
2006 1 4 999.999 0.1
2007 1 4 999.997 0.1
2008 1 4 999.994 0.1
2009 1 4 999.988 0.1
2010 1 4 999.977 0.1
2011 1 4 999.956 0.1
2012 1 4 999.918 0.1
-999 1 5 0 0.1
2001 1 5 1000 0.1
2002 1 5 1000 0.1
2003 1 5 1000 0.1
2004 1 5 1000 0.1
2005 1 5 999.999 0.1
2006 1 5 999.999 0.1
2007 1 5 999.998 0.1
2008 1 5 999.995 0.1
2009 1 5 999.991 0.1
2010 1 5 999.982 0.1
2011 1 5 999.966 0.1
2012 1 5 999.937 0.1
-999 1 6 0 0.1
2001 1 6 0 0.1
2002 1 6 0 0.1
2003 1 6 0 0.1
2004 1 6 0 0.1
2005 1 6 0 0.1
2006 1 6 0 0.1
2007 1 6 0 0.1
2008 1 6 0 0.1
2009 1 6 0 0.1
2010 1 6 0 0.1
2011 1 6 0 0.1
2012 1 6 0 0.1
-9999 0 0 0 0
#
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 1 0 0 # Type12_age_logistic
2 1 0 0 # Type14_age_non-parametric
3 1 0 0 # Type17_age_random-walk
4 1 0 0 # Type20_age_double-normal
5 1 0 0 # Type25_age_exponential-logistic
6 1 0 0 # Type27_age_cubic-spline
#_year month index obs err
2001 7 1 12.259 0.1 #_orig_obs: 10 Type12_age_logistic
2002 7 1 10.3514 0.1 #_orig_obs: 9 Type12_age_logistic
2003 7 1 8.71789 0.1 #_orig_obs: 8 Type12_age_logistic
2004 7 1 7.35475 0.1 #_orig_obs: 7 Type12_age_logistic
2005 7 1 6.23071 0.1 #_orig_obs: 6 Type12_age_logistic
2006 7 1 5.30228 0.1 #_orig_obs: 5 Type12_age_logistic
2007 7 1 4.52292 0.1 #_orig_obs: 5 Type12_age_logistic
2008 7 1 3.85493 0.1 #_orig_obs: 4 Type12_age_logistic
2009 7 1 3.27308 0.1 #_orig_obs: 4 Type12_age_logistic
2010 7 1 2.75983 0.1 #_orig_obs: 3.5 Type12_age_logistic
-9999 1 1 1 1 # terminator for survey observations 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
#  -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
2 # binwidth for population size comp 
10 # minimum size in the population (lower edge of first bin and size at age 0.00) 
98 # maximum size in the population (lower edge of last bin) 
1 # use length composition data (0/1)
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_ParmSelect:  parm number for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 0.001 1 0 0 0 1 #_fleet:1_Type12_age_logistic
-1 0.001 1 0 0 0 1 #_fleet:2_Type14_age_non-parametric
-1 0.001 1 0 0 0 1 #_fleet:3_Type17_age_random-walk
-1 0.001 1 0 0 0 1 #_fleet:4_Type20_age_double-normal
-1 0.001 1 0 0 0 1 #_fleet:5_Type25_age_exponential-logistic
-1 0.001 1 0 0 0 1 #_fleet:6_Type27_age_cubic-spline
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
33 #_N_LengthBins
 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90
#_yr month fleet sex part Nsamp datavector(female-male)
 2010 7 -1 3 0 5000  9.47784 5.9395 5.93239 6.36268 7.51176 9.26056 11.6804 15.4889 21.9363 32.3759 48.0417 69.9357 98.3378 132.006 167.711 200.574 225.175 237.044 234.006 216.84 188.952 155.244 120.695 89.2181 63.1115 43.1079 28.7982 19.1634 13.0186 9.28835 7.12619 5.92774 5.7725 0 6.22155 6.72118 8.13787 10.6604 14.7203 21.7102 33.777 53.1108 81.303 118.46 161.976 205.947 242.223 262.931 263.327 243.581 208.573 165.89 123.143 85.8819 56.8065 36.1425 22.6015 14.3432 9.6225 7.08103 5.78919 5.16906 4.88839 4.76898 4.7214 4.70753
 2010 7 -2 3 0 5000  58.3472 17.5545 13.8103 11.2154 12.2557 15.5159 19.5791 24.8923 33.0316 45.2901 62.221 84.0326 110.529 140.337 170.41 196.472 214.161 220.261 213.629 195.489 169.016 138.371 107.599 79.7991 56.7592 39.0301 26.2606 17.6039 12.0599 8.69848 6.76681 5.71459 5.52709 0 17.105 13.8931 14.1885 18.1538 24.3458 33.4787 47.7009 68.6349 96.7595 131.302 169.442 205.797 233.494 246.474 241.713 220.297 186.9 148.025 109.89 76.9072 51.1668 32.7856 20.6644 13.2383 8.9953 6.73007 5.59929 5.07168 4.8418 4.74838 4.71303 4.7029
 2010 7 -3 3 0 5000  5.11896 4.98476 5.59441 6.90865 9.16337 12.5077 17.3499 24.6157 35.3425 50.09 69.0427 92.4317 120.208 151.035 181.726 207.762 224.555 228.808 219.493 198.177 168.526 135.207 102.637 74.0484 51.1261 34.1504 22.4454 14.8822 10.2774 7.62264 6.16703 5.40532 5.27243 0 5.62248 7.20341 10.1846 15.0429 22.6523 34.4774 51.9374 75.7853 106.191 142.452 181.771 218.548 245.579 256.592 248.669 223.374 186.12 144.159 104.197 70.7305 45.5699 28.3645 17.5597 11.2799 7.87929 6.15347 5.32867 4.95619 4.79696 4.73256 4.70796 4.70093
 2010 7 -4 3 0 5000  6.60477 5.22807 5.34993 5.78776 6.7152 8.1667 10.3625 13.9743 20.0339 29.6519 43.8924 63.6927 89.4555 120.386 154.056 186.543 213.133 229.423 232.508 221.848 199.419 169.097 135.533 102.989 74.5215 51.6866 34.7115 22.9274 15.2427 10.5135 7.7573 6.23253 6.00714 0 5.46807 5.9951 7.20732 9.37991 13.095 19.6313 30.7946 48.4499 74.0746 108.036 148.526 190.917 228.333 253.436 260.783 248.764 220.171 181.114 138.86 99.6539 67.3881 43.3988 27.0929 16.8722 10.9256 7.69821 6.05881 5.27798 4.92916 4.78313 4.72596 4.7094
 2010 7 -5 3 0 5000  80.2709 23.3688 19.8755 19.5722 25.5327 34.1415 41.6969 48.6201 58.0783 72.0733 90.0389 110.554 132.605 154.923 175.145 190.168 197.212 194.684 182.583 162.497 137.217 110.036 83.9788 61.2366 42.9412 29.2632 19.7023 13.4239 9.53523 7.25617 5.98895 5.3192 5.19455 0 24.404 23.6191 29.2644 39.5065 50.118 61.6772 77.7146 99.6844 126.162 154.841 182.89 206.233 220.19 221.257 208.515 183.975 151.916 117.53 85.4468 58.7123 38.5165 24.5491 15.6414 10.3728 7.46956 5.97349 5.25065 4.92264 4.78277 4.72674 4.7057 4.69971
 2010 7 -6 3 0 5000  61.1487 18.8122 16.7515 17.6011 23.6466 31.9305 39.4952 46.9009 56.9891 71.3957 89.399 109.589 131.028 152.584 172.132 186.882 194.331 192.994 182.731 164.772 141.458 115.691 90.2865 67.4381 48.4525 33.755 23.0912 15.8062 11.1029 8.22489 6.55233 5.62793 5.49256 0 20.1135 20.766 26.9551 37.0705 47.8097 59.9546 76.6025 98.7825 124.952 152.919 180.121 202.89 216.998 219.219 208.547 186.526 156.777 123.926 92.3393 65.1468 43.8619 28.5624 18.392 12.1057 8.47785 6.51705 5.52263 5.04905 4.83734 4.74861 4.71382 4.70374
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
15 #_N_age_bins
 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
1 #_N_ageerror_definitions
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_ParmSelect:  parm number for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 0.001 0 0 0 0 1 #_fleet:1_Type12_age_logistic
-1 0.001 0 0 0 0 1 #_fleet:2_Type14_age_non-parametric
-1 0.001 0 0 0 0 1 #_fleet:3_Type17_age_random-walk
-1 0.001 0 0 0 0 1 #_fleet:4_Type20_age_double-normal
-1 0.001 0 0 0 0 1 #_fleet:5_Type25_age_exponential-logistic
-1 0.001 0 0 0 0 1 #_fleet:6_Type27_age_cubic-spline
3 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
2010  7 1  3 0 1 -1 -1 250  1.16196 2.65015 7.9203 20.5434 33.5003 27.7561 14.8375 6.95562 3.35436 1.81216 1.11249 0.758748 0.570964 0.468603 1.59734 1.16196 2.65015 7.9203 20.5434 33.5003 27.7561 14.8375 6.95562 3.35436 1.81216 1.11249 0.758748 0.570964 0.468603 1.59734
2010  7 2  3 0 1 -1 -1 250  4.60142 5.16927 11.0318 22.3862 30.0262 23.7351 11.6964 6.74789 3.66158 1.99337 1.21321 0.818435 0.608061 0.49022 0.820853 4.60142 5.16927 11.0318 22.3862 30.0262 23.7351 11.6964 6.74789 3.66158 1.99337 1.21321 0.818435 0.608061 0.49022 0.820853
2010  7 3  3 0 1 -1 -1 250  1.26363 6.14605 12.4537 23.7594 32.2423 24.5192 12.4282 5.90784 2.59694 0.961391 0.640807 0.478874 0.392933 0.346089 0.862629 1.26363 6.14605 12.4537 23.7594 32.2423 24.5192 12.4282 5.90784 2.59694 0.961391 0.640807 0.478874 0.392933 0.346089 0.862629
2010  7 4  3 0 1 -1 -1 250  0.797057 2.40386 7.53004 17.6961 27.7621 27.7748 19.0098 9.74482 4.60672 2.43912 1.45113 0.937852 0.663588 0.516067 1.66698 0.797057 2.40386 7.53004 17.6961 27.7621 27.7748 19.0098 9.74482 4.60672 2.43912 1.45113 0.937852 0.663588 0.516067 1.66698
2010  7 5  3 0 1 -1 -1 250  9.55412 10.4496 16.7604 23.4679 25.024 18.518 10.2051 4.85692 2.30167 1.21474 0.740124 0.513586 0.400467 0.342003 0.651453 9.55412 10.4496 16.7604 23.4679 25.024 18.518 10.2051 4.85692 2.30167 1.21474 0.740124 0.513586 0.400467 0.342003 0.651453
2010  7 6  3 0 1 -1 -1 250  8.12528 10.4255 16.8975 22.7682 23.574 18.0653 11.0156 5.87826 3.01734 1.63158 0.969391 0.638606 0.472897 0.390246 1.1303 8.12528 10.4255 16.8975 22.7682 23.574 18.0653 11.0156 5.87826 3.01734 1.63158 0.969391 0.638606 0.472897 0.390246 1.1303
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
# -2 in yr will subtract mean for that env_var; -1 will subtract mean and divide by stddev (e.g. Z-score)
#Yr Variable Value
#
0 # N sizefreq methods to read 
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
# Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
# feature not yet implemented
#
999

#_bootstrap file: 1  irand_seed: 1633015656 first rand#: 0.00266802
#V3.30.18.00;_safe;_compile_date:_Sep 30 2021;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
2001 #_StartYr
2012 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
2 #_Ngenders: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
20 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
6 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 1 1 1 0 Type12_age_logistic  # 1
 1 1 1 1 0 Type14_age_non-parametric  # 2
 1 1 1 1 0 Type17_age_random-walk  # 3
 1 1 1 1 0 Type20_age_double-normal  # 4
 1 1 1 1 0 Type25_age_exponential-logistic  # 5
 1 1 1 1 0 Type27_age_cubic-spline  # 6
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f 
#_catch_biomass(mtons):_columns_are_fisheries,year,season
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 0 0.1
2001 1 1 1081.6 0.1
2002 1 1 1040.46 0.1
2003 1 1 901.356 0.1
2004 1 1 1040.51 0.1
2005 1 1 1035.44 0.1
2006 1 1 821.498 0.1
2007 1 1 1020.14 0.1
2008 1 1 1000.28 0.1
2009 1 1 896.93 0.1
2010 1 1 1020.19 0.1
2011 1 1 855.56 0.1
2012 1 1 1051.25 0.1
-999 1 2 0 0.1
2001 1 2 923.246 0.1
2002 1 2 971.395 0.1
2003 1 2 1066.36 0.1
2004 1 2 1135.73 0.1
2005 1 2 1053.41 0.1
2006 1 2 1041.75 0.1
2007 1 2 897.756 0.1
2008 1 2 1079.32 0.1
2009 1 2 1015.91 0.1
2010 1 2 1029.5 0.1
2011 1 2 899.102 0.1
2012 1 2 1032.21 0.1
-999 1 3 0 0.1
2001 1 3 784.199 0.1
2002 1 3 873.888 0.1
2003 1 3 1159.69 0.1
2004 1 3 1059.83 0.1
2005 1 3 991.905 0.1
2006 1 3 999.645 0.1
2007 1 3 851.533 0.1
2008 1 3 842.038 0.1
2009 1 3 975.346 0.1
2010 1 3 1277.75 0.1
2011 1 3 1023.78 0.1
2012 1 3 993.577 0.1
-999 1 4 0 0.1
2001 1 4 998.644 0.1
2002 1 4 851.964 0.1
2003 1 4 959.609 0.1
2004 1 4 858.789 0.1
2005 1 4 982.751 0.1
2006 1 4 805.482 0.1
2007 1 4 985.75 0.1
2008 1 4 1028.88 0.1
2009 1 4 1110.18 0.1
2010 1 4 1046.26 0.1
2011 1 4 898.883 0.1
2012 1 4 1146.85 0.1
-999 1 5 0 0.1
2001 1 5 898.124 0.1
2002 1 5 1208.98 0.1
2003 1 5 873.34 0.1
2004 1 5 954.134 0.1
2005 1 5 985.693 0.1
2006 1 5 1045.81 0.1
2007 1 5 1080.6 0.1
2008 1 5 779.87 0.1
2009 1 5 846.66 0.1
2010 1 5 994.961 0.1
2011 1 5 1175.87 0.1
2012 1 5 990.404 0.1
-999 1 6 0 0.1
2001 1 6 0 0.1
2002 1 6 0 0.1
2003 1 6 0 0.1
2004 1 6 0 0.1
2005 1 6 0 0.1
2006 1 6 0 0.1
2007 1 6 0 0.1
2008 1 6 0 0.1
2009 1 6 0 0.1
2010 1 6 0 0.1
2011 1 6 0 0.1
2012 1 6 0 0.1
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 1 0 0 # Type12_age_logistic
2 1 0 0 # Type14_age_non-parametric
3 1 0 0 # Type17_age_random-walk
4 1 0 0 # Type20_age_double-normal
5 1 0 0 # Type25_age_exponential-logistic
6 1 0 0 # Type27_age_cubic-spline
#_year month index obs err
2001 7 1 12.3843 0.1 #_orig_obs: 10 Type12_age_logistic
2002 7 1 11.3232 0.1 #_orig_obs: 9 Type12_age_logistic
2003 7 1 9.074 0.1 #_orig_obs: 8 Type12_age_logistic
2004 7 1 7.77191 0.1 #_orig_obs: 7 Type12_age_logistic
2005 7 1 6.00805 0.1 #_orig_obs: 6 Type12_age_logistic
2006 7 1 4.72236 0.1 #_orig_obs: 5 Type12_age_logistic
2007 7 1 4.48154 0.1 #_orig_obs: 5 Type12_age_logistic
2008 7 1 4.23097 0.1 #_orig_obs: 4 Type12_age_logistic
2009 7 1 3.24481 0.1 #_orig_obs: 4 Type12_age_logistic
2010 7 1 2.67443 0.1 #_orig_obs: 3.5 Type12_age_logistic
-9999 1 1 1 1 # terminator for survey observations 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
#  -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
2 # binwidth for population size comp 
10 # minimum size in the population (lower edge of first bin and size at age 0.00) 
98 # maximum size in the population (lower edge of last bin) 
1 # use length composition data (0/1)
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_ParmSelect:  parm number for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 0.001 1 0 0 0 1 #_fleet:1_Type12_age_logistic
-1 0.001 1 0 0 0 1 #_fleet:2_Type14_age_non-parametric
-1 0.001 1 0 0 0 1 #_fleet:3_Type17_age_random-walk
-1 0.001 1 0 0 0 1 #_fleet:4_Type20_age_double-normal
-1 0.001 1 0 0 0 1 #_fleet:5_Type25_age_exponential-logistic
-1 0.001 1 0 0 0 1 #_fleet:6_Type27_age_cubic-spline
33 #_N_LengthBins
 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
 2010 7 -1 3 0 5000  11 12 5 7 9 11 6 13 29 20 42 81 114 101 179 198 231 249 211 196 197 175 124 83 63 41 24 16 18 11 3 4 7 0 7 7 4 10 16 17 31 56 75 97 171 213 227 265 267 236 205 196 138 102 57 26 26 9 12 8 5 4 4 6 5 7
 2010 7 -2 3 0 5000  56 18 17 14 13 21 24 32 41 39 73 76 111 124 178 201 206 233 200 177 163 143 111 79 54 30 23 13 17 8 4 3 5 0 22 12 14 15 26 38 48 88 95 133 180 211 229 231 242 226 185 131 99 82 57 31 24 15 11 12 8 7 8 2 7 4
 2010 7 -3 3 0 5000  5 6 5 7 8 13 15 28 41 50 74 97 143 124 194 204 225 214 202 207 139 133 83 60 39 40 25 9 11 3 7 4 7 0 7 4 5 19 26 32 49 82 121 157 177 220 271 284 253 222 180 135 120 53 54 36 15 21 7 7 3 1 6 3 3 5
 2010 7 -4 3 0 5000  11 4 6 4 4 7 12 16 19 35 28 63 97 118 147 174 205 218 215 216 216 178 136 119 80 59 41 25 23 9 5 0 7 0 4 8 10 5 11 15 21 46 76 123 145 186 241 260 262 256 230 192 116 99 65 38 18 23 12 7 6 6 10 3 7 2
 2010 7 -5 3 0 5000  80 30 26 19 22 40 39 48 56 64 98 105 141 134 172 185 192 201 159 172 132 108 84 66 46 33 19 11 9 7 5 4 3 0 20 26 31 49 63 52 88 93 108 145 165 200 261 228 235 187 157 112 81 54 35 20 18 12 4 7 6 6 5 9 4 9
 2010 7 -6 3 0 5000  74 23 16 19 21 27 38 49 67 64 102 115 147 163 171 174 202 220 172 155 145 117 75 59 55 36 28 19 11 5 4 6 6 0 20 14 20 28 44 63 86 110 128 151 170 192 235 208 204 182 133 141 96 59 42 29 11 5 6 7 8 3 7 3 7 3
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
15 #_N_age_bins
 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
1 #_N_ageerror_definitions
 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5 15.5 16.5 17.5 18.5 19.5 20.5
 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01 0.01
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_ParmSelect:  parm number for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 0.001 0 0 0 0 1 #_fleet:1_Type12_age_logistic
-1 0.001 0 0 0 0 1 #_fleet:2_Type14_age_non-parametric
-1 0.001 0 0 0 0 1 #_fleet:3_Type17_age_random-walk
-1 0.001 0 0 0 0 1 #_fleet:4_Type20_age_double-normal
-1 0.001 0 0 0 0 1 #_fleet:5_Type25_age_exponential-logistic
-1 0.001 0 0 0 0 1 #_fleet:6_Type27_age_cubic-spline
3 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
2010  7 1  3 0 1 -1 -1 250  2 4 6 19 40 27 21 10 2 3 0 1 0 0 1 0 5 12 15 40 23 10 4 2 1 1 0 1 0 0
2010  7 2  3 0 1 -1 -1 250  2 5 12 26 27 29 12 13 7 2 1 1 0 0 0 5 2 14 22 26 19 10 8 2 1 1 0 1 1 1
2010  7 3  3 0 1 -1 -1 250  2 4 10 20 37 16 13 6 2 0 1 0 3 1 0 0 13 9 27 31 27 12 9 4 0 0 0 0 1 2
2010  7 4  3 0 1 -1 -1 250  1 3 4 10 33 27 25 10 6 4 3 1 0 0 0 2 2 8 23 24 19 27 7 3 3 1 0 1 1 2
2010  7 5  3 0 1 -1 -1 250  11 6 10 29 20 22 7 5 1 2 2 1 1 0 0 11 10 14 24 26 20 13 8 2 2 0 1 1 0 1
2010  7 6  3 0 1 -1 -1 250  4 9 19 26 22 14 6 5 4 0 0 1 1 0 1 11 5 13 30 25 24 12 6 3 2 1 0 1 0 5
-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
# -2 in yr will subtract mean for that env_var; -1 will subtract mean and divide by stddev (e.g. Z-score)
#Yr Variable Value
#
0 # N sizefreq methods to read 
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
 # Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
 # feature not yet implemented
#
999

ENDDATA
