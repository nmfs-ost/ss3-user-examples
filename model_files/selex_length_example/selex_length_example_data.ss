#V3.30.18.00;_safe;_compile_date:_Sep 30 2021;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_12.3
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Thu Sep 30 11:27:39 2021
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
5 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 1 1 1 0 Type1_size_logistic  # 1
 1 1 1 1 0 Type6_size_non-parametric  # 2
 1 1 1 1 0 Type24_size_double-normal  # 3
 1 1 1 1 0 Type25_size_exponential-logistic  # 4
 1 1 1 1 0 Type27_size_cubic-spline  # 5
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
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 1 0 0 # Type1_size_logistic
2 1 0 0 # Type6_size_non-parametric
3 1 0 0 # Type24_size_double-normal
4 1 0 0 # Type25_size_exponential-logistic
5 1 0 0 # Type27_size_cubic-spline
#_yr month fleet obs stderr
2001 7 1 10 0.1 #_ Type1_size_logistic
2002 7 1 9 0.1 #_ Type1_size_logistic
2003 7 1 8 0.1 #_ Type1_size_logistic
2004 7 1 7 0.1 #_ Type1_size_logistic
2005 7 1 6 0.1 #_ Type1_size_logistic
2006 7 1 5 0.1 #_ Type1_size_logistic
2007 7 1 5 0.1 #_ Type1_size_logistic
2008 7 1 4 0.1 #_ Type1_size_logistic
2009 7 1 4 0.1 #_ Type1_size_logistic
2010 7 1 3.5 0.1 #_ Type1_size_logistic
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
-1 0.001 1 0 0 0 1 #_fleet:1_Type1_size_logistic
-1 0.001 1 0 0 0 1 #_fleet:2_Type6_size_non-parametric
-1 0.001 1 0 0 0 1 #_fleet:3_Type24_size_double-normal
-1 0.001 1 0 0 0 1 #_fleet:4_Type25_size_exponential-logistic
-1 0.001 1 0 0 0 1 #_fleet:5_Type27_size_cubic-spline
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
33 #_N_LengthBins; then enter lower edge of each length bin
 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90
#_yr month fleet sex part Nsamp datavector(female-male)
 2010 7 1 3 0 500 0 1 2 4 15 23 27 28 22 20 18 16 14 10 11 6 6 10 8 4 7 3 2 2 2 1 1 0 0 0 0 0 1 1 0 3 9 13 21 20 21 10 31 21 16 15 11 3 7 6 4 8 2 2 1 2 1 2 0 1 0 0 2 0 0 3
 2010 7 2 3 0 500 0 1 2 4 15 23 27 28 22 20 18 16 14 10 11 6 6 10 8 4 7 3 2 2 2 1 1 0 0 0 0 0 1 1 0 3 9 13 21 20 21 10 31 21 16 15 11 3 7 6 4 8 2 2 1 2 1 2 0 1 0 0 2 0 0 3
 2010 7 3 3 0 500 0 1 2 4 15 23 27 28 22 20 18 16 14 10 11 6 6 10 8 4 7 3 2 2 2 1 1 0 0 0 0 0 1 1 0 3 9 13 21 20 21 10 31 21 16 15 11 3 7 6 4 8 2 2 1 2 1 2 0 1 0 0 2 0 0 3
 2010 7 4 3 0 500 0 1 2 4 15 23 27 28 22 20 18 16 14 10 11 6 6 10 8 4 7 3 2 2 2 1 1 0 0 0 0 0 1 1 0 3 9 13 21 20 21 10 31 21 16 15 11 3 7 6 4 8 2 2 1 2 1 2 0 1 0 0 2 0 0 3
 2010 7 5 3 0 500 0 1 2 4 15 23 27 28 22 20 18 16 14 10 11 6 6 10 8 4 7 3 2 2 2 1 1 0 0 0 0 0 1 1 0 3 9 13 21 20 21 10 31 21 16 15 11 3 7 6 4 8 2 2 1 2 1 2 0 1 0 0 2 0 0 3
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
-1 0.001 0 0 0 0 1 #_fleet:1_Type1_size_logistic
-1 0.001 0 0 0 0 1 #_fleet:2_Type6_size_non-parametric
-1 0.001 0 0 0 0 1 #_fleet:3_Type24_size_double-normal
-1 0.001 0 0 0 0 1 #_fleet:4_Type25_size_exponential-logistic
-1 0.001 0 0 0 0 1 #_fleet:5_Type27_size_cubic-spline
3 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
 2010 7 -1 3 0 1 -1 -1 250 49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 7 -2 3 0 1 -1 -1 250 49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 7 -3 3 0 1 -1 -1 250 49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 7 -4 3 0 1 -1 -1 250 49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 7 -5 3 0 1 -1 -1 250 49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 7 4 3 0 1 26 30 50 49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
 2010 7 4 3 0 1 30 34 50 37 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7 2 0 0 0 2 0 0 0 0 0 0 0 0
 2010 7 4 3 0 1 34 38 50 36 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 9 0 1 1 0 0 0 0 0 0 0 0 0 0
 2010 7 4 3 0 1 38 42 50 23 6 2 0 0 0 0 0 0 0 0 0 0 0 0 0 12 6 1 0 0 0 0 0 0 0 0 0 0 0
 2010 7 4 3 0 1 42 46 50 10 13 1 0 0 0 0 0 0 0 0 0 0 0 0 0 11 9 4 0 0 0 0 1 1 0 0 0 0 0
 2010 7 4 3 0 1 46 50 50 0 10 9 1 3 0 0 0 0 0 0 0 0 0 0 0 6 11 7 2 1 0 0 0 0 0 0 0 0 0
 2010 7 4 3 0 1 50 54 50 1 3 14 2 1 1 0 0 0 0 0 0 0 1 0 0 3 9 4 7 1 1 1 0 0 0 0 0 0 1
 2010 7 4 3 0 1 54 58 50 0 1 15 8 3 0 1 1 0 0 0 0 0 0 0 0 0 2 7 4 4 1 1 1 0 0 1 0 0 0
 2010 7 4 3 0 1 58 62 50 0 1 2 6 6 6 1 1 0 0 0 0 0 0 0 0 0 1 5 4 7 1 4 0 2 0 1 1 0 1
 2010 7 4 3 0 1 62 66 50 0 0 2 10 5 6 4 1 1 1 0 0 0 0 0 0 0 0 0 2 2 4 3 4 3 1 0 0 0 1
 2010 7 4 3 0 1 66 70 50 0 0 0 2 4 11 2 2 4 1 0 2 1 0 2 0 0 0 1 2 0 4 1 1 3 2 1 1 0 3
 2010 7 4 3 0 1 70 74 50 0 0 1 0 3 4 5 5 2 6 1 0 4 2 2 0 0 0 0 1 0 0 0 1 3 2 2 1 1 4
 2010 7 4 3 0 1 74 78 50 0 0 0 0 1 3 9 6 5 0 4 1 4 1 6 0 0 0 0 0 0 0 2 0 0 1 1 3 0 3
 2010 7 4 3 0 1 78 82 50 0 0 0 0 0 0 5 8 3 4 2 3 1 4 12 0 0 1 0 0 1 0 0 2 0 0 2 0 1 1
 2010 7 4 3 0 1 82 86 50 0 0 0 0 0 1 0 4 3 2 8 3 4 3 15 0 0 0 0 0 0 0 0 1 0 0 0 2 1 3
 2010 7 4 3 0 1 86 90 50 0 0 0 0 0 0 0 2 1 3 7 4 6 3 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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
5 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 1 1 1 0 Type1_size_logistic  # 1
 1 1 1 1 0 Type6_size_non-parametric  # 2
 1 1 1 1 0 Type24_size_double-normal  # 3
 1 1 1 1 0 Type25_size_exponential-logistic  # 4
 1 1 1 1 0 Type27_size_cubic-spline  # 5
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
2005 1 1 1000 0.1
2006 1 1 1000 0.1
2007 1 1 1000 0.1
2008 1 1 1000 0.1
2009 1 1 999.999 0.1
2010 1 1 999.999 0.1
2011 1 1 999.997 0.1
2012 1 1 999.99 0.1
-999 1 2 0 0.1
2001 1 2 1000 0.1
2002 1 2 1000 0.1
2003 1 2 1000 0.1
2004 1 2 1000 0.1
2005 1 2 1000 0.1
2006 1 2 1000 0.1
2007 1 2 1000 0.1
2008 1 2 1000 0.1
2009 1 2 999.999 0.1
2010 1 2 999.999 0.1
2011 1 2 999.997 0.1
2012 1 2 999.99 0.1
-999 1 3 0 0.1
2001 1 3 1000 0.1
2002 1 3 1000 0.1
2003 1 3 1000 0.1
2004 1 3 1000 0.1
2005 1 3 1000 0.1
2006 1 3 1000 0.1
2007 1 3 1000 0.1
2008 1 3 1000 0.1
2009 1 3 999.999 0.1
2010 1 3 999.999 0.1
2011 1 3 999.997 0.1
2012 1 3 999.99 0.1
-999 1 4 0 0.1
2001 1 4 1000 0.1
2002 1 4 1000 0.1
2003 1 4 1000 0.1
2004 1 4 1000 0.1
2005 1 4 1000 0.1
2006 1 4 1000 0.1
2007 1 4 1000 0.1
2008 1 4 1000 0.1
2009 1 4 999.999 0.1
2010 1 4 999.999 0.1
2011 1 4 999.997 0.1
2012 1 4 999.99 0.1
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
2010 1 5 999.999 0.1
2011 1 5 999.997 0.1
2012 1 5 999.991 0.1
-9999 0 0 0 0
#
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 1 0 0 # Type1_size_logistic
2 1 0 0 # Type6_size_non-parametric
3 1 0 0 # Type24_size_double-normal
4 1 0 0 # Type25_size_exponential-logistic
5 1 0 0 # Type27_size_cubic-spline
#_year month index obs err
2001 7 1 10.1181 0.1 #_orig_obs: 10 Type1_size_logistic
2002 7 1 8.99069 0.1 #_orig_obs: 9 Type1_size_logistic
2003 7 1 7.95899 0.1 #_orig_obs: 8 Type1_size_logistic
2004 7 1 7.03604 0.1 #_orig_obs: 7 Type1_size_logistic
2005 7 1 6.21814 0.1 #_orig_obs: 6 Type1_size_logistic
2006 7 1 5.49246 0.1 #_orig_obs: 5 Type1_size_logistic
2007 7 1 4.84271 0.1 #_orig_obs: 5 Type1_size_logistic
2008 7 1 4.2523 0.1 #_orig_obs: 4 Type1_size_logistic
2009 7 1 3.70572 0.1 #_orig_obs: 4 Type1_size_logistic
2010 7 1 3.18875 0.1 #_orig_obs: 3.5 Type1_size_logistic
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
-1 0.001 1 0 0 0 1 #_fleet:1_Type1_size_logistic
-1 0.001 1 0 0 0 1 #_fleet:2_Type6_size_non-parametric
-1 0.001 1 0 0 0 1 #_fleet:3_Type24_size_double-normal
-1 0.001 1 0 0 0 1 #_fleet:4_Type25_size_exponential-logistic
-1 0.001 1 0 0 0 1 #_fleet:5_Type27_size_cubic-spline
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
33 #_N_LengthBins
 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90
#_yr month fleet sex part Nsamp datavector(female-male)
 2010 7 1 3 0 500  0.783952 0.761258 1.57167 3.61479 7.26941 11.7147 15.06 16.1948 16.0132 16.0203 16.4906 16.7242 16.3048 15.4194 14.3714 13.2731 12.1192 10.9145 9.69192 8.48335 7.30905 6.18479 5.12805 4.15838 3.29511 2.55415 1.94467 1.46686 1.1115 0.861721 0.696313 0.593359 0.587949 0 1.34009 3.17167 6.65025 11.0388 14.4701 15.942 16.399 17.0057 17.6305 17.6487 16.9821 15.9134 14.6239 13.1667 11.5941 9.97823 8.38344 6.86088 5.45556 4.2078 3.14892 2.29575 1.64724 1.18483 0.877032 0.686504 0.577172 0.519152 0.490731 0.477899 0.472565 0.470976
 2010 7 2 3 0 500  0.643616 0.635409 1.1136 2.38577 4.86167 8.21339 11.1641 13.0045 14.2366 16.0917 19.0738 19.6305 18.7759 17.623 16.4559 15.3406 14.1282 12.3236 10.6377 9.07703 7.64102 6.32893 5.18661 4.19492 3.3175 2.56758 1.95255 1.47137 1.11401 0.863077 0.69702 0.593714 0.588255 0 0.964581 2.04864 4.23514 7.29641 10.1108 11.8106 13.1673 15.1157 17.7093 20.4185 19.9345 18.3234 16.7101 15.0706 13.3905 11.618 9.45108 7.51633 5.82493 4.38925 3.21649 2.31871 1.6589 1.1905 0.879658 0.687664 0.577659 0.519346 0.490804 0.477925 0.472574 0.47098
 2010 7 3 3 0 500  0.642025 0.667634 1.37629 3.48297 7.77981 13.5687 18.2817 19.9473 19.3802 18.4436 17.5725 16.6579 15.3957 13.9671 12.6094 11.3679 10.1943 9.06085 7.97118 6.93369 5.95186 5.02916 4.17301 3.39441 2.70079 2.10283 1.61192 1.23005 0.949754 0.756288 0.631045 0.555154 0.546657 0 1.06073 2.69266 6.39121 11.8322 16.7783 19.3585 20.2002 20.5877 20.3047 18.8087 16.9148 15.0267 13.2488 11.5573 9.93874 8.40711 6.97899 5.66837 4.49139 3.466 2.60714 1.92135 1.40333 1.03437 0.788801 0.637553 0.551603 0.506639 0.48502 0.475478 0.471615 0.470469
 2010 7 4 3 0 500  0.66679 0.674567 1.3214 3.13113 6.72062 11.5698 15.7006 17.5264 17.6745 17.749 18.1059 18.0293 17.1579 15.7914 14.3095 12.8523 11.4232 10.0276 8.69239 7.43901 6.27692 5.2113 4.24866 3.39712 2.66432 2.05488 1.56818 1.19712 0.928353 0.744172 0.625144 0.552791 0.546367 0 1.08142 2.55809 5.69982 10.1858 14.2897 16.6213 17.7479 18.7731 19.5382 19.3806 18.3079 16.7454 14.9761 13.1102 11.2285 9.41011 7.7115 6.16818 4.80579 3.64367 2.69253 1.95101 1.40419 1.02514 0.779426 0.631118 0.548048 0.504983 0.484363 0.475259 0.471556 0.470459
 2010 7 5 3 0 500  0.906133 0.875316 2.01958 4.95684 10.3021 16.8627 21.6944 22.9359 21.7939 20.3506 18.9077 16.8875 14.3284 11.8042 9.71552 8.13273 6.99278 6.23605 5.50466 4.80829 4.14928 3.52996 2.95531 2.43271 1.97033 1.57514 1.25103 0.997456 0.809134 0.676899 0.589391 0.534951 0.532073 0 1.68043 4.26978 9.28749 15.7527 20.8795 22.9774 23.2277 23.1555 22.4092 20.2405 17.148 13.9859 11.201 8.91427 7.1278 5.79393 4.83869 3.959 3.16901 2.48076 1.90429 1.44398 1.09628 0.849443 0.685637 0.58446 0.52649 0.49576 0.480719 0.473932 0.471112 0.470272
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
-1 0.001 0 0 0 0 1 #_fleet:1_Type1_size_logistic
-1 0.001 0 0 0 0 1 #_fleet:2_Type6_size_non-parametric
-1 0.001 0 0 0 0 1 #_fleet:3_Type24_size_double-normal
-1 0.001 0 0 0 0 1 #_fleet:4_Type25_size_exponential-logistic
-1 0.001 0 0 0 0 1 #_fleet:5_Type27_size_cubic-spline
3 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
2010  7 -1  3 0 1 -1 -1 250  29.6366 29.8328 21.957 14.7116 9.7076 6.47096 4.39547 3.05259 2.17134 1.57285 1.23411 1.01151 0.844875 0.714696 1.92927 25.073 26.8613 21.0712 14.6093 9.78148 6.54755 4.44239 3.07361 2.17582 1.56842 1.21324 0.983453 0.818583 0.692628 1.84489
2010  7 -2  3 0 1 -1 -1 250  22.7655 31.2036 24.8976 16.6704 10.7727 7.02121 4.68353 3.20948 2.26092 1.62594 1.26912 1.03613 0.86271 0.727839 1.97087 17.643 25.1583 22.9544 16.5536 11.1153 7.37256 4.93928 3.37448 2.36159 1.685 1.29239 1.0402 0.860504 0.724054 1.94775
2010  7 -3  3 0 1 -1 -1 250  34.4011 32.0224 20.609 12.8314 8.17276 5.35617 3.61062 2.5025 1.78403 1.30043 1.02786 0.849556 0.716737 0.613442 1.56138 27.8909 30.7351 21.6167 13.7221 8.7171 5.66604 3.78452 2.60009 1.83883 1.33083 1.03589 0.846174 0.710739 0.607706 1.53797
2010  7 -4  3 0 1 -1 -1 250  30.3058 32.1075 22.4594 14.2002 8.94452 5.76097 3.81962 2.61107 1.84134 1.33105 1.04574 0.860556 0.723669 0.61788 1.57066 24.3116 28.9251 22.422 14.9446 9.62917 6.24883 4.14225 2.81938 1.97517 1.41659 1.09406 0.887756 0.741325 0.630528 1.61166
2010  7 4  3 0 1 26 30 50  13.3822 0.238916 0.053954 0.0488831 0.0485832 0.0485509 0.0485455 0.0485443 0.0485439 0.0485438 0.0485437 0.0485437 0.0485437 0.0485437 0.0485437 33.9492 1.11144 0.0946161 0.052156 0.0490186 0.048637 0.0485685 0.048552 0.048547 0.0485452 0.0485445 0.0485442 0.048544 0.0485439 0.0485442
2010  7 4  3 0 1 30 34 50  17.0845 0.672739 0.0734854 0.050329 0.0487623 0.0485845 0.0485542 0.0485471 0.048545 0.0485443 0.048544 0.0485439 0.0485438 0.0485438 0.0485439 28.1535 2.60716 0.22175 0.0651854 0.0509594 0.0490427 0.0486801 0.0485901 0.0485624 0.0485522 0.0485482 0.0485464 0.0485454 0.0485449 0.0485468
2010  7 4  3 0 1 34 38 50  19.4728 2.34553 0.197195 0.0617724 0.0503445 0.0488982 0.0486373 0.0485747 0.048556 0.0485492 0.0485467 0.0485455 0.0485448 0.0485444 0.0485457 19.5159 6.34983 0.816583 0.147626 0.0654107 0.0523625 0.049647 0.0489321 0.0487037 0.0486177 0.0485835 0.0485676 0.0485591 0.0485541 0.0485716
2010  7 4  3 0 1 38 42 50  15.6117 7.24029 0.904106 0.151137 0.064908 0.0520684 0.0495257 0.0488805 0.0486799 0.0486059 0.0485773 0.048564 0.0485567 0.0485525 0.048567 8.87838 12.2638 3.07489 0.618037 0.168819 0.0795787 0.0582892 0.0521688 0.0500944 0.0492803 0.0489479 0.0487898 0.0487039 0.0486526 0.0488402
2010  7 4  3 0 1 42 46 50  6.01094 13.4165 3.33194 0.620744 0.161002 0.0759737 0.056806 0.0515261 0.0497925 0.0491281 0.048865 0.0487399 0.0486712 0.0486299 0.048776 1.74514 13.1032 7.41502 2.23046 0.651165 0.232459 0.113006 0.0743817 0.0601891 0.0542862 0.0517824 0.0505557 0.0498736 0.0494581 0.0510857
2010  7 4  3 0 1 46 50 50  0.935485 13.0019 7.45057 2.06692 0.561938 0.195235 0.0974754 0.0674583 0.0568483 0.0525629 0.0508081 0.049952 0.0494708 0.0491775 0.0502822 0.156355 6.69479 9.80323 4.95776 1.91533 0.747219 0.329095 0.172049 0.108033 0.0793255 0.066531 0.0600181 0.0562814 0.0539454 0.0639806
2010  7 4  3 0 1 50 54 50  0.0994742 6.95049 10.5398 4.87464 1.7171 0.626137 0.267055 0.140572 0.0914559 0.0702299 0.0611552 0.0565742 0.0539247 0.0522721 0.0590202 0.0507866 1.71109 7.51773 6.99081 3.88017 1.87221 0.909533 0.472807 0.270047 0.170093 0.122732 0.0974416 0.0823446 0.0725912 0.119684
2010  7 4  3 0 1 54 58 50  0.0496195 2.01396 9.28519 7.80196 3.8768 1.70884 0.777993 0.389063 0.219329 0.139527 0.103552 0.0846023 0.0732416 0.0659443 0.0989425 0.0485584 0.244351 3.28624 6.14464 5.21069 3.29101 1.8961 1.08714 0.644613 0.399118 0.273845 0.20292 0.158452 0.128524 0.295226
2010  7 4  3 0 1 58 62 50  0.0485519 0.341496 5.0607 8.38943 6.23382 3.52448 1.86447 1.00433 0.570676 0.344548 0.23593 0.175688 0.137934 0.112791 0.241545 0.0485437 0.0591253 0.830332 3.34668 4.59382 3.96373 2.81356 1.85606 1.2051 0.785357 0.551142 0.408758 0.313926 0.246795 0.69067
2010  7 4  3 0 1 62 66 50  0.0485437 0.0714555 1.7427 6.15096 7.20794 5.44289 3.48005 2.11997 1.29666 0.808607 0.555942 0.406833 0.308185 0.239525 0.647343 0.0485437 0.0488067 0.154175 1.1596 2.70189 3.31125 2.98392 2.32401 1.69522 1.19707 0.886825 0.680846 0.532884 0.42134 1.32601
2010  7 4  3 0 1 66 70 50  0.0485437 0.0494889 0.408512 3.12676 6.08009 6.35863 5.0552 3.57484 2.42177 1.61562 1.15958 0.869438 0.664252 0.513528 1.57997 0.0485437 0.0485467 0.0565757 0.283728 1.08821 1.95223 2.2936 2.15436 1.79752 1.39871 1.11166 0.897766 0.728119 0.58947 2.02474
2010  7 4  3 0 1 70 74 50  0.0485437 0.0485644 0.0971186 1.13375 3.80615 5.70769 5.78855 4.84867 3.70313 2.69008 2.05177 1.60566 1.2624 0.99276 3.33676 0.0485437 0.0485437 0.0488905 0.0801473 0.325413 0.837406 1.30489 1.50461 1.45767 1.26611 1.09153 0.936511 0.79452 0.66491 2.4687
2010  7 4  3 0 1 74 78 50  0.0485437 0.0485439 0.0527517 0.319383 1.80534 4.00234 5.30637 5.36307 4.6856 3.75276 3.07507 2.53712 2.07333 1.67607 6.08258 0.0485437 0.0485437 0.0485523 0.0512689 0.0992623 0.283824 0.570393 0.812216 0.923301 0.904374 0.853057 0.783353 0.699861 0.609325 2.43525
2010  7 4  3 0 1 78 82 50  0.0485437 0.0485437 0.048781 0.0971166 0.67511 2.23831 3.96697 4.92417 4.9888 4.45297 3.95422 3.46468 2.96192 2.47636 9.69931 0.0485437 0.0485437 0.0485438 0.0486966 0.0550279 0.0998299 0.212042 0.357458 0.474173 0.525694 0.545165 0.53846 0.509083 0.46338 1.97957
2010  7 4  3 0 1 82 86 50  0.0485437 0.0485437 0.0485526 0.0549279 0.222562 1.03076 2.47741 3.83919 4.56972 4.59229 4.45439 4.17106 3.74971 3.25684 13.8239 0.0485437 0.0485437 0.0485437 0.0485494 0.0491336 0.0568782 0.0879771 0.146949 0.214341 0.264124 0.29925 0.31752 0.318117 0.303612 1.35954
2010  7 4  3 0 1 86 90 50  0.0485437 0.0485437 0.0485439 0.0491726 0.0870545 0.413881 1.3313 2.60792 3.69176 4.21812 4.50333 4.53353 4.30616 3.90059 18.0525 0.0485437 0.0485437 0.0485437 0.0485438 0.0485827 0.0495765 0.0560343 0.073807 0.101472 0.12936 0.154535 0.17309 0.18234 0.182077 0.813996
2010  7 -5  3 0 1 -1 -1 250  41.8132 33.7612 18.2619 9.92033 5.91475 3.78702 2.54668 1.78071 1.29016 0.961645 0.776876 0.656057 0.565979 0.49582 1.14544 35.8652 34.5194 21.71 12.1755 7.03222 4.31875 2.80596 1.91143 1.3577 0.996645 0.789432 0.657249 0.563475 0.492465 1.12676
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

#_bootstrap file: 1  irand_seed: 1633015659 first rand#: -1.62437
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
5 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 1 1 1 0 Type1_size_logistic  # 1
 1 1 1 1 0 Type6_size_non-parametric  # 2
 1 1 1 1 0 Type24_size_double-normal  # 3
 1 1 1 1 0 Type25_size_exponential-logistic  # 4
 1 1 1 1 0 Type27_size_cubic-spline  # 5
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
2001 1 1 1168.17 0.1
2002 1 1 959.45 0.1
2003 1 1 936.892 0.1
2004 1 1 1016.4 0.1
2005 1 1 905.56 0.1
2006 1 1 942.047 0.1
2007 1 1 1169.71 0.1
2008 1 1 916.304 0.1
2009 1 1 936.297 0.1
2010 1 1 1076.04 0.1
2011 1 1 1055.42 0.1
2012 1 1 1006.5 0.1
-999 1 2 0 0.1
2001 1 2 1047.22 0.1
2002 1 2 1022.21 0.1
2003 1 2 1022.84 0.1
2004 1 2 964.935 0.1
2005 1 2 908.424 0.1
2006 1 2 1085.35 0.1
2007 1 2 836.191 0.1
2008 1 2 1029.43 0.1
2009 1 2 1019.08 0.1
2010 1 2 931.809 0.1
2011 1 2 1173.44 0.1
2012 1 2 1060.25 0.1
-999 1 3 0 0.1
2001 1 3 1061 0.1
2002 1 3 1009.86 0.1
2003 1 3 1038.92 0.1
2004 1 3 854.993 0.1
2005 1 3 1019.75 0.1
2006 1 3 1083.09 0.1
2007 1 3 979.633 0.1
2008 1 3 1104.8 0.1
2009 1 3 856.908 0.1
2010 1 3 1048.82 0.1
2011 1 3 918.003 0.1
2012 1 3 912.368 0.1
-999 1 4 0 0.1
2001 1 4 1054.59 0.1
2002 1 4 831.254 0.1
2003 1 4 809.106 0.1
2004 1 4 874.513 0.1
2005 1 4 935.893 0.1
2006 1 4 851.553 0.1
2007 1 4 1052.75 0.1
2008 1 4 1015.39 0.1
2009 1 4 1060.51 0.1
2010 1 4 1190.92 0.1
2011 1 4 1012.77 0.1
2012 1 4 866.187 0.1
-999 1 5 0 0.1
2001 1 5 989.8 0.1
2002 1 5 1108.21 0.1
2003 1 5 808.983 0.1
2004 1 5 1122.37 0.1
2005 1 5 1139.06 0.1
2006 1 5 1111.49 0.1
2007 1 5 1101.94 0.1
2008 1 5 1113.93 0.1
2009 1 5 1045.49 0.1
2010 1 5 1011.97 0.1
2011 1 5 1046.41 0.1
2012 1 5 1137.43 0.1
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 1 0 0 # Type1_size_logistic
2 1 0 0 # Type6_size_non-parametric
3 1 0 0 # Type24_size_double-normal
4 1 0 0 # Type25_size_exponential-logistic
5 1 0 0 # Type27_size_cubic-spline
#_year month index obs err
2001 7 1 10.2662 0.1 #_orig_obs: 10 Type1_size_logistic
2002 7 1 8.64514 0.1 #_orig_obs: 9 Type1_size_logistic
2003 7 1 7.8247 0.1 #_orig_obs: 8 Type1_size_logistic
2004 7 1 6.6922 0.1 #_orig_obs: 7 Type1_size_logistic
2005 7 1 7.35666 0.1 #_orig_obs: 6 Type1_size_logistic
2006 7 1 6.22909 0.1 #_orig_obs: 5 Type1_size_logistic
2007 7 1 4.59395 0.1 #_orig_obs: 5 Type1_size_logistic
2008 7 1 3.70998 0.1 #_orig_obs: 4 Type1_size_logistic
2009 7 1 3.89414 0.1 #_orig_obs: 4 Type1_size_logistic
2010 7 1 3.33542 0.1 #_orig_obs: 3.5 Type1_size_logistic
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
-1 0.001 1 0 0 0 1 #_fleet:1_Type1_size_logistic
-1 0.001 1 0 0 0 1 #_fleet:2_Type6_size_non-parametric
-1 0.001 1 0 0 0 1 #_fleet:3_Type24_size_double-normal
-1 0.001 1 0 0 0 1 #_fleet:4_Type25_size_exponential-logistic
-1 0.001 1 0 0 0 1 #_fleet:5_Type27_size_cubic-spline
33 #_N_LengthBins
 26 28 30 32 34 36 38 40 42 44 46 48 50 52 54 56 58 60 62 64 66 68 70 72 74 76 78 80 82 84 86 88 90
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
 2010 7 1 3 0 500  2 2 2 2 7 15 16 14 17 13 15 14 10 9 10 11 14 16 11 8 10 6 3 2 6 1 2 2 2 3 1 0 2 0 2 1 9 16 13 27 17 19 19 18 20 20 6 12 15 6 9 4 5 2 2 2 2 2 0 0 0 0 0 3 0 1
 2010 7 2 3 0 500  3 1 0 1 5 7 6 13 12 16 17 20 31 17 14 4 17 19 10 13 5 8 5 5 2 4 4 1 1 1 0 2 1 0 0 3 2 10 10 9 11 19 19 24 17 17 9 16 10 17 13 7 6 3 3 3 3 0 0 1 0 1 0 0 2 0
 2010 7 3 3 0 500  0 0 2 2 6 10 18 18 25 20 19 21 18 15 19 12 16 9 4 7 7 5 5 2 4 2 1 0 0 1 3 1 1 0 0 1 3 10 17 22 22 19 20 22 12 16 6 7 6 11 10 3 4 4 4 1 0 0 2 1 0 1 0 1 1 1
 2010 7 4 3 0 500  0 1 0 4 8 15 16 9 27 20 13 17 20 16 16 9 13 6 15 6 6 9 2 4 6 5 1 0 1 3 1 0 1 0 1 0 5 5 23 13 18 18 19 27 11 14 15 11 16 8 8 2 4 2 3 2 1 1 0 1 0 2 0 0 0 0
 2010 7 5 3 0 500  0 3 4 1 8 6 16 16 20 16 25 14 19 15 6 12 9 5 2 1 8 4 7 0 4 1 0 1 0 0 1 1 1 0 0 6 10 15 23 24 39 23 21 23 16 20 7 8 9 4 3 7 3 3 3 3 0 1 0 0 0 0 0 2 1 0
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
-1 0.001 0 0 0 0 1 #_fleet:1_Type1_size_logistic
-1 0.001 0 0 0 0 1 #_fleet:2_Type6_size_non-parametric
-1 0.001 0 0 0 0 1 #_fleet:3_Type24_size_double-normal
-1 0.001 0 0 0 0 1 #_fleet:4_Type25_size_exponential-logistic
-1 0.001 0 0 0 0 1 #_fleet:5_Type27_size_cubic-spline
3 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
2010  7 -1  3 0 1 -1 -1 250  26 29 23 14 7 10 5 4 1 5 1 0 2 1 3 22 26 24 20 4 9 3 5 2 1 0 2 1 0 0
2010  7 -2  3 0 1 -1 -1 250  22 23 25 20 9 6 3 4 5 1 4 0 1 1 1 18 24 26 17 7 5 11 4 5 2 1 0 1 3 1
2010  7 -3  3 0 1 -1 -1 250  46 25 22 9 11 6 5 2 1 0 1 1 0 1 1 30 26 15 12 10 9 5 2 1 4 0 2 0 0 3
2010  7 -4  3 0 1 -1 -1 250  36 28 22 7 9 6 1 0 3 2 2 0 1 0 3 24 31 16 19 13 5 9 5 3 0 0 0 0 1 4
2010  7 4  3 0 1 26 30 50  12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 37 1 0 0 0 0 0 0 0 0 0 0 0 0 0
2010  7 4  3 0 1 30 34 50  22 0 1 0 0 0 0 0 0 0 0 0 0 0 0 24 3 0 0 0 0 0 0 0 0 0 0 0 0 0
2010  7 4  3 0 1 34 38 50  23 2 0 1 0 0 0 0 0 0 0 0 0 0 0 17 5 2 0 0 0 0 0 0 0 0 0 0 0 0
2010  7 4  3 0 1 38 42 50  18 4 0 0 1 0 0 0 0 0 0 0 0 0 0 6 15 6 0 0 0 0 0 0 0 0 0 0 0 0
2010  7 4  3 0 1 42 46 50  5 14 4 1 0 0 0 1 0 0 0 0 1 0 0 0 13 7 2 1 1 0 0 0 0 0 0 0 0 0
2010  7 4  3 0 1 46 50 50  0 16 7 1 1 0 0 0 0 0 0 1 0 0 0 0 3 11 4 2 2 0 0 1 0 0 0 0 0 1
2010  7 4  3 0 1 50 54 50  1 6 11 3 1 1 1 1 1 0 0 1 0 1 0 0 2 10 4 1 1 1 1 1 1 0 0 0 0 0
2010  7 4  3 0 1 54 58 50  0 4 5 4 5 3 2 1 0 0 0 0 0 0 0 0 0 5 10 3 3 5 0 0 0 0 0 0 0 0
2010  7 4  3 0 1 58 62 50  0 1 6 7 9 1 1 3 0 0 0 0 0 0 0 0 0 2 5 3 3 4 3 2 0 0 0 0 0 0
2010  7 4  3 0 1 62 66 50  0 0 1 6 4 7 6 4 1 0 0 1 0 0 1 0 0 0 0 1 2 3 2 1 4 2 2 0 0 2
2010  7 4  3 0 1 66 70 50  0 0 0 3 6 5 7 5 4 2 1 2 1 0 1 0 0 0 2 2 1 2 2 1 1 0 2 0 0 0
2010  7 4  3 0 1 70 74 50  0 0 0 0 5 3 6 3 4 3 6 1 3 2 2 0 0 0 0 0 1 2 2 1 1 0 1 0 1 3
2010  7 4  3 0 1 74 78 50  0 0 0 0 5 6 8 5 6 3 2 2 0 2 8 0 0 0 0 0 0 0 0 0 0 2 0 0 0 1
2010  7 4  3 0 1 78 82 50  0 0 0 1 1 5 3 3 5 5 3 3 4 6 7 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1
2010  7 4  3 0 1 82 86 50  0 0 1 0 2 4 0 3 1 3 4 7 7 0 15 0 0 0 0 0 0 0 0 0 0 0 0 1 0 2
2010  7 4  3 0 1 86 90 50  0 0 0 0 0 0 2 1 1 4 6 6 6 7 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
2010  7 -5  3 0 1 -1 -1 250  42 40 18 9 8 2 2 2 0 1 0 0 2 0 2 33 38 21 13 8 5 2 0 1 0 0 0 0 1 0
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
