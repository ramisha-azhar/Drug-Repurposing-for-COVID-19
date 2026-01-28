rm(list=ls())

options(stringsAsFactors = F)

setwd("C:/Users/ramis/OneDrive/Desktop/BIOINFORMETICS 2/Drug_Repurposing/code")
######################################
source("src/script/getLibrary.R")
source("src/script/getSource.R")
######################################
getLibrary()
getSource()
input_parameter <- config()
input_file <- inputFiles()
output_file <- networkFiles()
######################################
# compute drug-disease network
destfile = output_file$filename_out_allPval
if ( !file.exists(destfile) ) mainStartNetwork()

# select significative drug-disease association and (or not) adjust them
mainEndNetwork()
######################################
# make figure

if( length(input_parameter$diseases) > 1) mainFigure()
######################################
# create disease specific subnetwork
if( !is.null(input_parameter$sel_disease) ) mainSubnetwork()
######################################
