#!/usr/bin/env bash

#downloading and extracting face detector model
cd ~/ThEmoBe
git checkout -b colab-branch origin/colab-branch


wget https://s3-us-west-2.amazonaws.com/static.pyimagesearch.com/face-detection-opencv-deep-learning/deep-learning-face-detection.zip

unzip -f deep-learning-face-detection.zip



#downloading GSOM code
%cd ~/ThEmoBe

git clone https://github.com/AathmanT/Parallel_GSOM_for_HAAP.git
cd ~/ThEmoBe/Parallel_GSOM_for_HAAP/
git checkout -b colab-branch origin/colab-branch
cd ~/ThEmoBe/

#downloading YOLO V3 model


git clone https://github.com/AathmanT/CVND_Exercises_2_2_YOLO.git
cd ~/ThEmoBe/CVND_Exercises_2_2_YOLO/
git checkout -b colab-branch origin/colab-branch
cd ~/ThEmoBe/
#wget -O yolov3.weights https://pjreddie.com/media/files/yolov3.weights
cp "/content/drive/My Drive/yolov3.weights" "/content/ThEmoBe/"



pip3 install -r requirements.txt

export DEBIAN_FRONTEND=noninteractive

sudo apt-get update --fix-missing
sudo apt-get install mysql-server
sudo apt-get install libmysqlclient-dev

pip3 install mysqlclient

/etc/init.d/mysql restart

mysql -u root -e "create database annotate";

sudo apt-get install redis-server

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

echo | redis-server &


