#V3.30.21.00;_safe;_compile_date:_Feb 10 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue Feb 14 20:06:07 2023
#_echo_input_data
#C data file for model showing different selectivities
#V3.30.21.00;_safe;_compile_date:_Feb 10 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
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
#_CPUE_and_surveyabundance_and_index_observations
#_Units: 0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=exp(recdev); 36=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_note that link functions are specified in Q_setup section of control file
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
1 # use length composition data (0/1/2) where 2 invokes new comp_control format
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_Using old format for composition controls
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
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
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
# Sizefreq data. Defined by method because a fleet can use multiple methods
0 # N sizefreq methods to read (or -1 for expanded options)
# 
0 # do tags (0/1/2); where 2 allows entry of TG_min_recap
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

