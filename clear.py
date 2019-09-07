import os, fnmatch, re, glob
cropADU = '\\Users\\baran\\Desktop\\preprocessor\\ADUout\\'
cropAUC = '\\Users\\baran\\Desktop\\preprocessor\\AUCout\\'
outputADU = '\\Users\\baran\\Desktop\\preprocessor\\ADUaugment\\'
outputAUC = '\\Users\\baran\\Desktop\\preprocessor\\AUCaugment\\'

for filename in os.listdir(outputADU):
    x = os.path.join(outputADU, filename)
    os.remove(x)
    

for filename in os.listdir(outputAUC):
    x = os.path.join(outputAUC, filename)
    os.remove(x)

for filename in os.listdir(cropADU):
    x = os.path.join(cropADU, filename)
    os.remove(x)

for filename in os.listdir(cropAUC):
    x = os.path.join(cropAUC, filename)
    os.remove(x)
