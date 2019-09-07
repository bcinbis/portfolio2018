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


def initialize_model(model_name, num_classes, feature_extract, use_pretrained = True):
    model_ft = None
    input_size = 0
    num_classes = 4
    model.classifier[6] = nn.Linear(4096, num_classes)

    if(initialize.model_name == "vgg"):
        #model_ft = models.vgg16(pretrained=True)
        model_ft = models.vgg16(pretrained=use_pretrained)
        set_parameter_requires_grad(model_ft, feature_extract)
        num_ftrs = mode_ft.classifier[6].in_features
        model_ft.classifier[6] = nn.Linear(num_ftrs, num_classes)
        input_size = 224
   
    return model_ft, input_size

model_ft, input_size = initialize_model(model_name, num_classes, feature_extract, use_pretrained = True)

print(model_ft)
