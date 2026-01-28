config <- function(){
  
  # for executing SAveRUNER launch:
  # source('./BioinformaticsII/lessons/6_SaveRUNNER/code/src/main.R')
  #################################
  # parameters for computing start network with edge-weight = proximity
  
  #diseases <- c("Alzheimer Disease", "Amyloid Neuropathies", 
        #        "Language Disorders", "Memory Disorders")
  
  diseases <- c("COVID-19","Severe Acute Respiratory Syndrome", "Hemorrhagic Fever, Ebola")
  #insert the name of the diseases to be tested
  #the disease name should be the same as found in the phenopedia file
  
  #################################
  # parameters for computing end network
  
  dirRes <- "Results/"    #set the name of this folder example COVID-19   

  interaction = "similarity"  # edge-weight = similarity or proximity
  pval_thr = 0.05             # select significative drug-disease association
  adjust_link = T            # adjust similarity or not
  new_link = F                # add new drug-disease association or not (without compute pval)
  #################################
  # parameters for making figure
  
  if( (interaction == "proximity") ) distance = "proximity"
  if( (interaction == "similarity") & (adjust_link == F) ) distance = "similarity"
  if( (interaction == "similarity") & (adjust_link == T) ) distance = "adjusted_similarity"
  #################################
  # parameters for computing subnetwork

  #sel_drug = "acebutolol" #set the name of the drug of interest
  sel_disease = "COVID-19" #set the name of the disease of interest this will create a folder in the subnetwork folder of the Result
   sel_drug = NULL
  # sel_disease = NULL
  #################################
  
  input_parameter <- list(diseases = diseases,
                          dirRes = dirRes,
                          interaction = interaction,
                          pval_thr = pval_thr, 
                          adjust_link = adjust_link,
                          new_link = new_link,
                          distance = distance,
                          sel_drug = sel_drug,
                          sel_disease = sel_disease)
  
  return(input_parameter)
  
}