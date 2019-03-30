getwd()
setwd("C:/Users/Dr. Anita A. Joshi/Desktop/work")
##exprgene<-read.table("C:/Users/Dr. Anita A. Joshi/Desktop/work/PAAD.gct",header = TRUE,sep = "\t")
ds_path <- "C:/Users/Dr. Anita A. Joshi/Desktop/work/PAAD.gct"
my_ds <- parse.gctx(ds_path)
devtools::install_github("cmap/cmapR")
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("rhdf5", version = "3.8")
devtools::install_github("cmap/cmapR")
#ds <- parse.gctx(my_ds, rid=1:10, cid=1:10)
ds <- parse.gctx(my_ds)
row_meta_from_gctx <- read.gctx.meta(ds_path, dim="row")
row_meta <- read.delim(ds_path, sep="\t", stringsAsFactors=F)

df[df$histological_type_other %like% "neuroendocrine",]
my_ds@mat
df<-data.frame(my_ds@mat)
View(df)
df<-data.frame(my_ds@cdesc)
View(df)
df$histological_type_other == "neuroendocrine"
df$histological_type_other == "neuroendocrine carcinoma"
df[df$histological_type_other %Like% "neuroendocrine",]
df[grep("neuroendocrine",df$histological_type_other),]
tp<-df[grep("neuroendocrine",df$histological_type_other),]
View(tp)
View(tp)
tp<-df[-grep("neuroendocrine",df$histological_type_other),]
View(tp)
exocrine_only<-df[-grep("neuroendocrine",df$histological_type_other),]
prcomp(my_ds)
table<-read.csv('pancreatic_cancer_sample.csv',header = TRUE, sep = "\t")
View(table)
pca<-data.frame(table)
pca<-data.frame(table)
View(pca)
View(table)
xyz<-prcomp(table)
