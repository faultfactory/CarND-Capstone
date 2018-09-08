#!/usr/bin/env sh

cd /home/workspace 
mkdir modelzoo
cd modelzoo
wget http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v1_coco_11_06_2017.tar.gz
tar -xzf ssd_mobilenet_v1_coco_11_06_2017.tar.gz ssd_mobilenet_v1_coco_11_06_2017/frozen_inference_graph.pb
rm -f /home/workspace/modelzoo/ssd_mobilenet_v1_coco_11_06_2017.tar.gz

wget http://download.tensorflow.org/models/object_detection/ssd_inception_v2_coco_11_06_2017.tar.gz
tar -xzf ssd_inception_v2_coco_11_06_2017.tar.gz ssd_inception_v2_coco_11_06_2017/frozen_inference_graph.pb
rm -f /home/workspace/modelzoo/ssd_inception_v2_coco_11_06_2017.tar.gz

wget http://download.tensorflow.org/models/object_detection/rfcn_resnet101_coco_11_06_2017.tar.gz
tar -xzf rfcn_resnet101_coco_11_06_2017.tar.gz rfcn_resnet101_coco_11_06_2017/frozen_inference_graph.pb
rm -f /home/workspace/modelzoo/rfcn_resnet101_coco_11_06_2017.tar.gz

wget http://download.tensorflow.org/models/object_detection/faster_rcnn_resnet101_coco_11_06_2017.tar.gz
tar -xzf faster_rcnn_resnet101_coco_11_06_2017.tar.gz faster_rcnn_resnet101_coco_11_06_2017/frozen_inference_graph.pb
rm -f /home/workspace/modelzoo/faster_rcnn_resnet101_coco_11_06_2017.tar.gz

wget http://download.tensorflow.org/models/object_detection/faster_rcnn_inception_resnet_v2_atrous_coco_11_06_2017.tar.gz
tar -xzf faster_rcnn_inception_resnet_v2_atrous_coco_11_06_2017.tar.gz faster_rcnn_inception_resnet_v2_atrous_coco_11_06_2017/frozen_inference_graph.pb
rm -f /home/workspace/modelzoo/faster_rcnn_inception_resnet_v2_atrous_coco_11_06_2017.tar.gz

# wget http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v1_fpn_shared_box_predictor_640x640_coco14_sync_2018_07_03.tar.gz
# tar -xzf ssd_mobilenet_v1_fpn_shared_box_predictor_640x640_coco14_sync_2018_07_03.tar.gz ssd_mobilenet_v1_fpn_shared_box_predictor_640x640_coco14_sync_2018_07_03/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/ssd_mobilenet_v1_fpn_shared_box_predictor_640x640_coco14_sync_2018_07_03.tar.gz


# wget http://download.tensorflow.org/models/object_detection/ssd_resnet50_v1_fpn_shared_box_predictor_640x640_coco14_sync_2018_07_03.tar.gz
# tar -xzf ssd_resnet50_v1_fpn_shared_box_predictor_640x640_coco14_sync_2018_07_03.tar.gz ssd_resnet50_v1_fpn_shared_box_predictor_640x640_coco14_sync_2018_07_03/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/ssd_resnet50_v1_fpn_shared_box_predictor_640x640_coco14_sync_2018_07_03.tar.gz

# wget http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v2_coco_2018_03_29.tar.gz
# tar -xzf ssd_mobilenet_v2_coco_2018_03_29.tar.gz ssd_mobilenet_v2_coco_2018_03_29/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/ssd_mobilenet_v2_coco_2018_03_29.tar.gz


# wget http://download.tensorflow.org/models/object_detection/ssdlite_mobilenet_v2_coco_2018_05_09.tar.gz
# tar -xzf ssdlite_mobilenet_v2_coco_2018_05_09.tar.gz ssdlite_mobilenet_v2_coco_2018_05_09/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/ssdlite_mobilenet_v2_coco_2018_05_09.tar.gz


# wget http://download.tensorflow.org/models/object_detection/ssd_inception_v2_coco_2018_01_28.tar.gz
# tar -xzf ssd_inception_v2_coco_2018_01_28.tar.gz ssd_inception_v2_coco_2018_01_28/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/ssd_inception_v2_coco_2018_01_28.tar.gz


# wget http://download.tensorflow.org/models/object_detection/faster_rcnn_inception_v2_coco_2018_01_28.tar.gz
# tar -xzf faster_rcnn_inception_v2_coco_2018_01_28.tar.gz faster_rcnn_inception_v2_coco_2018_01_28/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/faster_rcnn_inception_v2_coco_2018_01_28.tar.gz


# wget http://download.tensorflow.org/models/object_detection/faster_rcnn_resnet50_coco_2018_01_28.tar.gz
# tar -xzf faster_rcnn_resnet50_coco_2018_01_28.tar.gz faster_rcnn_resnet50_coco_2018_01_28/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/faster_rcnn_resnet50_coco_2018_01_28.tar.gz


# wget http://download.tensorflow.org/models/object_detection/faster_rcnn_resnet50_lowproposals_coco_2018_01_28.tar.gz
# tar -xzf faster_rcnn_resnet50_lowproposals_coco_2018_01_28.tar.gz faster_rcnn_resnet50_lowproposals_coco_2018_01_28/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/faster_rcnn_resnet50_lowproposals_coco_2018_01_28.tar.gz


# wget http://download.tensorflow.org/models/object_detection/rfcn_resnet101_coco_2018_01_28.tar.gz
# tar -xzf rfcn_resnet101_coco_2018_01_28.tar.gz rfcn_resnet101_coco_2018_01_28/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/rfcn_resnet101_coco_2018_01_28.tar.gz


# wget http://download.tensorflow.org/models/object_detection/faster_rcnn_resnet101_coco_2018_01_28.tar.gz
# tar -xzf faster_rcnn_resnet101_coco_2018_01_28.tar.gz faster_rcnn_resnet101_coco_2018_01_28/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/faster_rcnn_resnet101_coco_2018_01_28.tar.gz

# wget http://download.tensorflow.org/models/object_detection/faster_rcnn_resnet101_lowproposals_coco_2018_01_28.tar.gz
# tar -xzf faster_rcnn_resnet101_lowproposals_coco_2018_01_28.tar.gz faster_rcnn_resnet101_lowproposals_coco_2018_01_28/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/faster_rcnn_resnet101_lowproposals_coco_2018_01_28.tar.gz

# wget http://download.tensorflow.org/models/object_detection/faster_rcnn_inception_resnet_v2_atrous_coco_2018_01_28.tar.gz
# tar -xzf faster_rcnn_inception_resnet_v2_atrous_coco_2018_01_28.tar.gz faster_rcnn_inception_resnet_v2_atrous_coco_2018_01_28/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/faster_rcnn_inception_resnet_v2_atrous_coco_2018_01_28.tar.gz

# wget http://download.tensorflow.org/models/object_detection/faster_rcnn_inception_resnet_v2_atrous_lowproposals_coco_2018_01_28.tar.gz
# tar -xzf faster_rcnn_inception_resnet_v2_atrous_lowproposals_coco_2018_01_28.tar.gz faster_rcnn_inception_resnet_v2_atrous_lowproposals_coco_2018_01_28/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/faster_rcnn_inception_resnet_v2_atrous_lowproposals_coco_2018_01_28.tar.gz
 

# wget http://download.tensorflow.org/models/object_detection/faster_rcnn_nas_lowproposals_coco_2018_01_28.tar.gz
# tar -xzf faster_rcnn_nas_lowproposals_coco_2018_01_28.tar.gz faster_rcnn_nas_lowproposals_coco_2018_01_28/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/faster_rcnn_nas_lowproposals_coco_2018_01_28.tar.gz

# wget http://download.tensorflow.org/models/object_detection/mask_rcnn_inception_resnet_v2_atrous_coco_2018_01_28.tar.gz
# tar -xzf mask_rcnn_inception_resnet_v2_atrous_coco_2018_01_28.tar.gz mask_rcnn_inception_resnet_v2_atrous_coco_2018_01_28/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/mask_rcnn_inception_resnet_v2_atrous_coco_2018_01_28.tar.gz

# wget http://download.tensorflow.org/models/object_detection/mask_rcnn_inception_v2_coco_2018_01_28.tar.gz
# tar -xzf mask_rcnn_inception_v2_coco_2018_01_28.tar.gz mask_rcnn_inception_v2_coco_2018_01_28/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/mask_rcnn_inception_v2_coco_2018_01_28.tar.gz

# wget http://download.tensorflow.org/models/object_detection/mask_rcnn_resnet101_atrous_coco_2018_01_28.tar.gz
# tar -xzf mask_rcnn_resnet101_atrous_coco_2018_01_28.tar.gz mask_rcnn_resnet101_atrous_coco_2018_01_82/frozen_inference_graph.pb
# rm -f /home/workspace/modelzoo/mask_rcnn_resnet101_atrous_coco_2018_01_28.tar.gz
