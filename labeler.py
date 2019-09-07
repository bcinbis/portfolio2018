import os, fnmatch, re, glob

folder = '\\Users\\baran\\Desktop\\Dataloader'
unlabeled_ADU = '\\Users\\baran\\Desktop\\Dataloader\\ADU_Train'
unlabeled_AUC = '\\Users\\baran\\Desktop\\Dataloader\\AUC_Train'
labeled_ADU = '\\Users\\baran\\Desktop\\Dataloader\\ADU_Train_Labeled\\'
labeled_AUC = '\\Users\\baran\\Desktop\\Dataloader\\AUC_Train_Labeled\\'

for filename in os.listdir(labeled_ADU):
    one = 'Label1' + ' ' + filename
    two = 'Label2' + ' ' + filename
    three = 'Label3' + ' ' + filename
    four = 'Label4' + ' ' + filename
    if not(filename == '.DS_Store'):
        if fnmatch.fnmatch(filename, '* 1_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + three)
        if fnmatch.fnmatch(filename, '* 2_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + two)
        if fnmatch.fnmatch(filename, '* 3_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + three)
        if fnmatch.fnmatch(filename, '* 4_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + three)
        if fnmatch.fnmatch(filename, '* 5_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + four)
        if fnmatch.fnmatch(filename, '* 6_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + three)
        if fnmatch.fnmatch(filename, '* 7_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + three)
        if fnmatch.fnmatch(filename, '* 8_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + three)
        if fnmatch.fnmatch(filename, '* 10_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + four)
        if fnmatch.fnmatch(filename, '* 11_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + three)
        if fnmatch.fnmatch(filename, '* 12_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + three)
        if fnmatch.fnmatch(filename, '* 13_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + two)
        if fnmatch.fnmatch(filename, '* 15_UO3*'):
            os.rename(labeled_ADU + filename, labeled_ADU + one)
 
for filename in os.listdir(labeled_AUC):
    one = 'Label1' + ' ' + filename
    two = 'Label2' + ' ' + filename
    three = 'Label3' + ' ' + filename
    four = 'Label4' + ' ' + filename
    if not(filename == '.DS_Store'):
        if fnmatch.fnmatch(filename, '* 1_UO3*'):
            os.rename(labeled_AUC + filename, labeled_AUC + two)
        if fnmatch.fnmatch(filename, '* 2_UO3*'):
            os.rename(labeled_AUC + filename, labeled_AUC + two)
        if fnmatch.fnmatch(filename, '* 3_UO3*'):
            os.rename(labeled_AUC + filename, labeled_AUC + one)
        if fnmatch.fnmatch(filename, '* 5_UO3*'):
            os.rename(labeled_AUC + filename, labeled_AUC + two)
        if fnmatch.fnmatch(filename, '* 6_UO3*'):
            os.rename(labeled_AUC + filename, labeled_AUC + two)
        if fnmatch.fnmatch(filename, '* 7_UO3*'):
            os.rename(labeled_AUC + filename, labeled_AUC + two)
        if fnmatch.fnmatch(filename, '* 8_UO3*'):
            os.rename(labeled_AUC + filename, labeled_AUC + one)
        if fnmatch.fnmatch(filename, '* 10_UO3*'):
            os.rename(labeled_AUC + filename, labeled_AUC + two)
        if fnmatch.fnmatch(filename, '* 11_UO3*'):
            os.rename(labeled_AUC + filename, labeled_AUC + three)
        if fnmatch.fnmatch(filename, '* 12_UO3*'):
            os.rename(labeled_AUC + filename, labeled_AUC + two)
        if fnmatch.fnmatch(filename, '* 13_UO3*'):
            os.rename(labeled_AUC + filename, labeled_AUC + two)
        if fnmatch.fnmatch(filename, '* 15_UO3*'):
            os.rename(labeled_AUC + filename, labeled_AUC + four)
      
