#####################################################################
####           CRDS Paraneter Analysis Functions                 ####
####      This file allows user to extract instrument            ####
####      parameters from SpatialWI database and makes a         ####
####      series of plots for analysis of parameter values       ####
#####################################################################

####MODIFY VALUES TO EXTRACT DESIRED DATA####
setwd("C:/Users/u0939524/Dropbox")
instrument = "HIDS2046"
min.date = "01/01/18"
max.date = "05/01/18"
ignore = 1  ##USE 1 FOR ONLY GOOD RUNS, 2 FOR ALL RUNS

####THEN RUN THE FOLLOWING####
source("Bowen_Lab/R_scripts_active/Parameters_functions.R")
min.date = as.Date(min.date, format = "%m/%d/%y")
max.date = as.Date(max.date, format = "%m/%d/%y")
criteria = data.frame(instrument, min.date, max.date, ignore)
par.query(criteria)
