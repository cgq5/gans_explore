#!/bin/bash

modelName=celebaCropped_s5_i83000-2b0acc76.pth
modelType=pgan
PATH_TO_THE_OUTPUT_DATASET=/users/gcao/Projects/pytorch_GAN_zoo/out_data 
SIZE_OF_THE_OUTPUT=50

#python eval.py visualization -n $modelName -m $modelType -d /scratch/zhangh/gcao/pytorch_GAN_zoo_models/ --np_vis
python eval.py visualization -n $modelName -m $modelType --save_dataset $PATH_TO_THE_OUTPUT_DATASET --size_dataset $SIZE_OF_THE_OUTPUT --np_vis
