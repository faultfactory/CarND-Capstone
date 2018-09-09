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
