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
#Put the file "the Drug_Disease_newtork.txt" at the same level of "src" folder
##all the function that comes under this main function mainStartNetwork()
#computeDrugDiseaseNetwork.R
#computeProximity.R
#computeRandomProximity.R
#ComputeStatistics.R

destfile = output_file$filename_out_allPval
if ( !file.exists(destfile) ) mainStartNetwork()

# select significative drug-disease association and (or not) adjust 
#we will get adjusted similarity drug disease network
##all the function that comes under this main function mainEndNetwork()
#ComputeSimilarity()
#selectPval()
#createAdjMatrix()
#computeClustring()
#computeClusterInfo()
#createNewAdjMatrix()
#computeNormalization()
#createEdgeList()
mainEndNetwork()
######################################
# make figure
#buildHeatmap()
#GetHeatmapPlot()
#buildHamming()
#getHammingPlot()
#buildCorrPlot()

if( length(input_parameter$diseases) > 1) mainFigure()
######################################

###create disease specific subnetwork
#getDrugDiseaseSubnet()
#getSpecificDrug()
#plotDrugDistribution()
if( !is.null(input_parameter$sel_disease) ) mainSubnetwork()
######################################
