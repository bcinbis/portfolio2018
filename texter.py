import os, fnmatch, re, glob

labeled_ADU = '\\Users\\baran\\Desktop\\Dataloader\\ADU_Train_Labeled\\'
labeled_AUC = '\\Users\\baran\\Desktop\\Dataloader\\AUC_Train_Labeled\\'


folders = [labeled_ADU, labeled_AUC]

f = open("images.txt", "w")

for x in folders:
    for filename in os.listdir(x):
        f.write(filename + "\n")

f.close()
