#!/bin/bash

modelName=celebaCropped
modelType=PGAN
OUTPUT_DATASET=/users/gcao/Projects/gans_explore/pytorch_GAN_zoo/out_data
SIZE_OF_THE_OUTPUT=50
PATH_TO_CELEBA=/scratch/zhangh/gcao/gdrive/CelebA/Img

# Testing
python eval.py visualization -n $modelName -m $modelType -d /scratch/zhangh/gcao/pytorch_GAN_zoo_models/ --np_vis
#python eval.py visualization -n $modelName -m $modelType --save_dataset $PATH_TO_THE_OUTPUT_DATASET --size_dataset $SIZE_OF_THE_OUTPUT --np_vis

# For training
#python datasets.py celeba_cropped $PATH_TO_CELEBA/img_align_celeba/ -o $OUTPUT_DATASET
#python train.py PGAN -c /scratch/zhangh/gcao/pytorch_GAN_zoo_models/config_celeba_cropped.json --restart -n celeba_cropped
