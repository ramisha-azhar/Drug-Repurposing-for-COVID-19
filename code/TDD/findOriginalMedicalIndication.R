options(stringsAsFactors = F)

setwd("~/Documents/Didattica/class/BioinformaticsII/lessons/7_comorbidity/file_for_homework/oiginal_medical_indication_search")

known <- read.table("TTD_association.txt", sep = "\t", header = T, check.names = F, quote = "")
colnames(known) <- c("TTD_association","drug")

#TTD_association <- aggregate(data = known, TTD_association ~ drug, paste, collapse = ";")

predicted <- read.table("ALS_DrugDisease_network.txt", header = T, quote ="", check.names = F, sep = "\t")

df <- merge(known, predicted, by = "drug", all = F)
df <- df[,c("TTD_association","drug", "proximity", "pval", "similarity", "adjusted_similarity")]

write.table(df, "onLabel_ALS_drug.txt", row.names = F, col.names = T, sep = "\t", quote = F)