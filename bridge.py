from __future__ import print_function, division, absolute_import, unicode_literals
import os
import sys
sys.path.append(os.getcwd() + '/utils/')
from parser import data

def load_data(data_list, data_transforms):
    dataclass = data(data_list)
    datasets = []

    for x in range(dataclass.num_file):
        datasets.append((data_transforms(dataclass[x][0], data_transforms(dataclass[x][0]),data_transforms(dataclass[x][1]),data_transforms(dataclass[x][2]),data_transforms(dataclass[x][3]),dataclass[x][4]))

    return datasets
