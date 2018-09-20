#!/usr/bin/env sh
source prepGit.sh

apt-get install protobuf-compiler
pip install lxml
pip install jupyter
pip install matplotlib
pip install tensorflow-gpu==1.4.0

cd /home/workspace/models/research
python setup.py build
python setup.py install

protoc object_detection/protos/*.proto --python_out=.
#cd /home/workspace/models
export PYTHONPATH=$PYTHONPATH:/home/workspace/models:/home/workspace/models/research:/home/workspace/models/research/slim

cd /home/workspace/models/research/object_detection/
wget https://s3.amazonaws.com/udacity-transfer/frozen_inference_graph_real.pb
wget https://s3.amazonaws.com/udacity-transfer/frozen_inference_graph_sim.pb

apt-get install chromium-browser -y