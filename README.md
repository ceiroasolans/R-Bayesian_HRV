# Bayesian Analysis

This code analyzes HRV data using bayesian regressions. 

In HRV_Data.rmd, I first wrangle the data and check for assumptions, and then build three bayesian models: one using a simple function from the BRMS package, another using the rich functionalities from RSTANARM, and a final one with full manual control over the model using RSTAN alongside a .stan file. 

In Automated_Modelling.rmd, I create a list of variables of interest, and then produce code that automatically runs a multilevel model for each of these variables, and creates formatted summary tables with only trending results. Useful for when you need to run maximal models on heavy data-sets!
