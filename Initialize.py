from __future__ import print_function
from __future__ import division
import torch
import torch.nn as nn
import torch.optim as optim
import numpy as np
import torchvision
from torchvision import datasets, models, transforms
import matplotlib.pyplot as plt
import time
import os
import copy
import network.initialize_model as model

data_dir = "Users\\baran\\Desktop\\Dataloader\\Train_Labeled\\"
model_name = "vgg"
num_classes = 4

#ideal values for these?  default epochs was 15
batch_size = 8
num_epochs = 10

feature_extract = True

def train_model(model, dataloaders, criterion, optimizer, num_epochs = 10, is_inception = False):
    since = time.time()

    val_acc_history = []

    #Initializes variables
    best_model_wts = copy.deepcopy(model.state.dict())
    best_acc = 0.0
    running_loss = 0.0
    running_corrects = 0

    for epoch in range(num_epochs):
        print('Epoch {}/{}'.format(epoch, num_epochs - 1))
        #for string formatting why use {} instead of %s, because they're dynamic variables?
        print('-' * 10)

        #Each epoch goes through training and validation
        for phase in ['train', 'val']:
            if phase == 'train':
                model.train()
            else:
                model.eval()

            #will need to adjust to dataloader
            for inputs, labels in dataloader[phase]:
                inputs = inputs.to(device)
                labels = labels.to(device)
                
                optimizer.zero_grad()
        
    


def set_parameter_requires_grad(model, feature_extracting):
    if feature extracting:
        for param in model.parameters():
            #Makes it so we can use pretrained grads and don't need to finetune new ones
            param.requires_grad = False



    
    
    
