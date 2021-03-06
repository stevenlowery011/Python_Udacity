#!/bin/sh
# */AIPND/intropylab-classifying-images/run_models_batch.sh
#                                                                             
# PROGRAMMER: Jennifer S.
# DATE CREATED: 02/08/2018                                  
# REVISED DATE: 02/27/2018  - reduce scope of program
# PURPOSE: Runs all three models to test which provides 'best' solution.
#          Please note output from each run has been piped into a text file.
#
# Usage: sh run_models_batch.sh    -- will run program from commandline
#  
stdbuf -oL python check_images.py --dir pet_images/ --arch resnet  --dogfile dognames.txt > resnet.txt
stdbuf -oL python check_images.py --dir pet_images/ --arch alexnet --dogfile dognames.txt > alexnet.txt
stdbuf -oL python check_images.py --dir pet_images/ --arch vgg  --dogfile dognames.txt > vgg.txt
