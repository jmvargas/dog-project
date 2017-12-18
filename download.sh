#!/usr/bin/env bash

wget https://s3-us-west-1.amazonaws.com/udacity-aind/dog-project/dogImages.zip
wget https://s3-us-west-1.amazonaws.com/udacity-aind/dog-project/lfw.zip
wget https://s3-us-west-1.amazonaws.com/udacity-aind/dog-project/DogVGG16Data.npz

unzip dogImages.zip
unzip lfw.zip
mv DogVGG16Data.npz bottleneck_features