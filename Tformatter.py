import os, fnmatch, re, glob

labeled_ADU = '\\Users\\baran\\Desktop\\Dataloader\\ADU_Train_Labeled\\'
labeled_AUC = '\\Users\\baran\\Desktop\\Dataloader\\AUC_Train_Labeled\\'

for filename in os.listdir(labeled_ADU):
    x = filename.replace(".", "_", 1)
    os.rename(labeled_ADU + filename, labeled_ADU + x)
    

for filename in os.listdir(labeled_AUC):
    x = filename.replace(".", "_", 1)
    os.rename(labeled_AUC + filename, labeled_AUC + x)

 

    
