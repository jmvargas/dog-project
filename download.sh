#!/usr/bin/env bash

wget https://s3-us-west-1.amazonaws.com/udacity-aind/dog-project/dogImages.zip
wget https://s3-us-west-1.amazonaws.com/udacity-aind/dog-project/lfw.zip
wget https://s3-us-west-1.amazonaws.com/udacity-aind/dog-project/DogVGG16Data.npz
wget https://s3-us-west-1.amazonaws.com/udacity-aind/dog-project/DogVGG19Data.npz

unzip dogImages.zip
unzip lfw.zip
mv DogVGG16Data.npz bottleneck_features
mv DogVGG19Data.npz bottleneck_features

sudo python3 -m pip install -r requirements/requirements-gpu.txt
KERAS_BACKEND=tensorflow python -c "from keras import backend"
jupyter notebook --ip 0.0.0.0