from __future__ import print_function, division, absolute_import, unicode_literals
import torch
import torch.nn as nn
import torch.optim as optim
import numpy as np
import torchvision
from skimage import io
from PIL import Image as PILimage
from torchvision import datasets, models, transforms
from torch.utils.data import Dataset
import time
import os
import scipy
import matplotlib
from matplotlib import pyplot as plt
import copy
import argparse
import sys
sys.path.append(os.getcwd())
import bridge as helper
import model 
import time

labeled_train = '\\Users\\baran\\Desktop\\Dataloader\\Train_Labeled\\'
labeled_validate = '\\Users\\baran\\Desktop\\Dataloader\\Validate_Labeled\\'



def Main():

    #num_epochs, lr, fold_num might need to change, research whats best or if they should
    #be tweaked depending on data
    parser = argparse.ArgumentParser()
    parser.add_argument('--isTesting', type=bool, default=False, help='Specify the process')			
    parser.add_argument('--num_epochs', type=int, default = 10, help = 'Number of epochs')  
    parser.add_argument('--bs', type=int, default = 16, help = 'Batch size')
    parser.add_argument('--type_training', type=int, default = 1, help = 'Type of training')
    parser.add_argument('--type_inp', type=str, default = 'all', help = 'Type of input')
    parser.add_argument('--lr', type=float, default = 2e-4, help = 'Learning rate')
    parser.add_argument('--fold_num', type=int, default = 0, help = 'Fold number')
    FLAGS, unparsed = parser.parse_known_args()

    bs = FLAGS.bs
    num_epochs = FLAGS.num_epochs
    isTesting = FLAGS.isTesting
    lr = FLAGS.lr
    type_tr = FLAGS.type_training
    type_inp = FLAGS.type_inp
    datafilename = '_materials_fold%s.txt' %str(FLAGS.fold_num)
    saved_file_name = '%s_%s' %(datafilename[1:-4], type_inp

    num_classes = 4
    input_size = 100

    data_transforms = {'train_class': transforms.Compose([\
	    transforms.RandomHorizontalFlip(),\
	    transforms.RandomVerticalFlip(),\
	    transforms.ColorJitter(brightness=0.5),\
	    transforms.RandomResizedCrop(input_size),\
	    transforms.ToTensor(),\
	    transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225])]),\
	    'val_class': transforms.Compose([\
	    transforms.CenterCrop(input_size),\
	    transforms.ToTensor(),
	    transforms.Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225])]
	    )}

    data_dict = {}
    dataloaders_dict = {}

    if not testing:
        dataloaders_list = ['train', 'validate']
    else:
        dataloaders_list = ['validate']

    print('-- bz = {:}; Type Training = {:}; num_epochs = {:}; Type Input = {:}; Settings = {:}'.format(bz, type_tr, num_epochs, type_inp, saved_file_name))

    for x in dataloaders_list:
        time_since = time.time()
        if x == 'train':
            data_list = labeled_train
        else:
            data_list = labeled_validate

        data = helper.load_data(data_list, data_transforms[x+'_class'])

        data_dict[x] = data
        dataloaders_dict[x] = torch.utils.data.DataLoader(data_dict[x], batch_size=bz,, shuffle=x=='train', num_workers=2)

        time_elapsed = time.time() - time_since
        print('--- Done loading ' + x + ' data in {:.0f}m {:.0f}s---'.format(time_elapsed // 60, time_elapsed % 60))

    class_model = model.Model(num_classes, saved_file_name, type_training=type_tr,type_inp=type_inp, lr=lr)

    CurrentDirect = os.getcwd()
    
    if not isTesting:
        class_model.train_model(num_epochs, CurrentDirect, dataloaders_dict)

    class_model.predict(dataloaders_dict['val'], isTestingOnly = testing)

Main()

    
        
    
