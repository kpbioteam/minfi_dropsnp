require("minfi", quietly = TRUE)

args <- commandArgs(trailingOnly = TRUE)

input = args[1] 
output = args[2]

GRSet <- get(load(input))

GRSet <- dropLociWithSnps(GRSet, snps=c("SBE","CpG"), maf=0)

save(GRSet,file =  output)
