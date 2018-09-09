#!/usr/bin/env sh

cd /home/workspace
git clone https://www.github.com/tensorflow/models.git
cd models
git checkout f7e99c0
rm -rf .git
rm -rf tutorials

cd /home/workspace
mkdir modelzoo
cd modelzoo
wget http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v1_coco_11_06_2017.tar.gz
tar -xzf ssd_mobilenet_v1_coco_11_06_2017.tar.gz
rm -f /home/workspace/modelzoo/ssd_mobilenet_v1_coco_11_06_2017.tar.gz


wget http://download.tensorflow.org/models/object_detection/ssd_inception_v2_coco_11_06_2017.tar.gz
tar -xzf ssd_inception_v2_coco_11_06_2017.tar.gz
rm -f /home/workspace/modelzoo/ssd_inception_v2_coco_11_06_2017.tar.gz