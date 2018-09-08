#!/usr/bin/env sh
apt-get install protobuf-compiler
pip install lxml
pip install jupyter
pip install matplotlib

cd /home/workspace/models/research
protoc object_detection/protos/*.proto --python_out=.
cd /home/workspace/models
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

