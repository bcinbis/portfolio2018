#import scipy
#from scipy import misc
import os, fnmatch, re, glob
from PIL import Image

pathADU = '\\Users\\baran\\Desktop\\preprocessor\\UO3ADU'
pathAUC = '\\Users\\baran\\Desktop\\preprocessor\\UO3AUC'
cropADU = '\\Users\\baran\\Desktop\\preprocessor\\ADUout\\'
cropAUC = '\\Users\\baran\\Desktop\\preprocessor\\AUCout\\'
outputADU = '\\Users\\baran\\Desktop\\preprocessor\\ADUaugment\\'
outputAUC = '\\Users\\baran\\Desktop\\preprocessor\\AUCaugment\\'

#Crop off labels from images

for filename in os.listdir(pathADU):
    x = os.path.join(pathADU, filename)
    if not(filename == '.DS_Store'):
        #if not fnmatch.fnmatch(filename, '*9_UO3*' | '*14_UO3*' | '*19_UO3*'):
        #if not fnmatch.fnmatch(filename, '*9_UO3*'):
        im = Image.open(x)
        im.copy()
        crop_im = im.crop((0, 0, 1024, 885))
        crop_im.save(cropADU + filename, "PNG")
            
for filename in os.listdir(pathAUC):
    x = os.path.join(pathAUC, filename)
    if not(filename == '.DS_Store'):
        #if not fnmatch.fnmatch(filename, '*4_UO3*', '*9_UO3*', '*14_UO3*', '*15_UO3*', '*19_UO3*'):
        #if not fnmatch.fnmatch(filename, '*4_UO3*'):
        im = Image.open(x)
        im.copy()
        crop_im = im.crop((0, 0, 1024, 885))
        crop_im.save(cropAUC + filename, "PNG")

#split each image into 4 subsections

for filename in os.listdir(cropADU):
    x = os.path.join(cropADU, filename)
    if not(filename == '.DS_Store'):
        im = Image.open(x)
        im.copy()
        for n in range(1, 3):
            crop_im = im.crop(((n-1)*512, 0, n*512, 442))
            crop_im.save(outputADU + "Cut" + str(n) + "_" + filename, "PNG")
        for n in range (3, 5):
            crop_im = im.crop(((n-3)*512, 443, (n-2)*512, 885))
            crop_im.save(outputADU + "Cut" + str(n) + "_" + filename, "PNG")

for filename in os.listdir(cropAUC):
    x = os.path.join(cropAUC, filename)
    if not(filename == '.DS_Store'):
        im = Image.open(x)
        im.copy()
        for n in range (1, 3):
            crop_im = im.crop(((n-1)*512, 0, n*512, 442))
            crop_im.save(outputAUC + "Cut" + str(n) + "_" + filename, "PNG")
        for n in range (3, 5):
            crop_im = im.crop(((n-3)*512, 443, (n-2)*512, 885))
            crop_im.save(outputAUC + "Cut" + str(n) + "_" + filename, "PNG")
        
        

    


#Things to figure out: how to make fnmatch take multiple arguments



