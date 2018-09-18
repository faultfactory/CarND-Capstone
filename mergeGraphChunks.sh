#!/usr/bin/env sh

if [ -d ros/src/tl_detector/models/ ]; then
	echo "models folder exists for classifier"
    echo "skipping operation"
fi

if [ ! -d ros/src/tl_detector/models/ ]; then
    echo "Inference model directory not found"
    echo "making inference model directory"
    mkdir ros/src/tl_detector/models/
	echo "joining real model files"
    cd graphsInChunks/

    python3 ./joiner.py frozen_inference_graph_real.pb ../ros/src/tl_detector/models/frozen_inference_graph_real.pb 3
    echo "joining sim model files"
    python3 ./joiner.py frozen_inference_graph_sim.pb ../ros/src/tl_detector/models/frozen_inference_graph_sim.pb 3
fi
cd ..
