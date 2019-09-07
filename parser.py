from PIL import Image as PILimage
from torch.utils.data import Dataset
import os, fnmatch
import array as arr
from __future__ import print_function, division, absolute_import, unicode_literals

image_directory = '\\Users\\baran\\Desktop\\Dataloader\\images\\'
labeled_ADU = '\\Users\\baran\\Desktop\\Dataloader\\ADU_Train_Labeled\\'
labeled_AUC = '\\Users\\baran\\Desktop\\Dataloader\\AUC_Train_Labeled\\'


class data(Dataset):
    def __init__(self):
        self.labels = ['Step7_Label1', 'Step7_Label2', 'Step7_Label3', 'Step7_Label4']
        x = open(image_directory, 'r')

        label_list = []
        image_list = []

        for line in x:
            mask, image = line.strip("\n").split(' ')
            image_list.append(image)
            labels_list.append(self.labels.index(mask))

        self.images_list = images_list
        self.labels_list = labels_list

    def __imageconvert__(self, idx):
        image_name = image_list[idx]
        label = label_list[idx]

        image = self.rgb(image_name)
        return image, label

    def rgb(self, inp):
        greyscale = PILimage.open(inp, 'r')
        rgb = PILimage.new('RGB', greyscale.size)
        rgb.paste(greyscale)

        return rgb


