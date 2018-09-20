#!/usr/bin/env sh
cd models
if [ -f frozen_inference_graph_real.pb ]; then
	echo "models exist"
    echo "skipping operation"
fi

if [ ! -f frozen_inference_graph_real.pb ]; then
    echo "Inference models not found"
    echo "joining real model files"
    
    python3 ./joiner.py frozen_inference_graph_real.pb frozen_inference_graph_real.pb 3
    echo "joining sim model files"
    python3 ./joiner.py frozen_inference_graph_sim.pb frozen_inference_graph_sim.pb 3
fi
