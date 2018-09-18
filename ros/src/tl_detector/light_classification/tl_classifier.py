from styx_msgs.msg import TrafficLight

import tensorflow as tf 
import numpy as np 
import cv2

class TLClassifier(object):
    def __init__(self, is_site):
        #TODO load classifier

        # path to graph
        if is_site:
        	PATH_FROZEN_GRAPH = r'models/frozen_inference_graph_real.pb'
        else:
            PATH_FROZEN_GRAPH = r'models/frozen_inference_graph_sim.pb'
        
        # gpu config
        config = tf.ConfigProto()
        config.gpu_options.allow_growth = True
        
    def load_graph(graph_path):
        graph = tf.Graph()
        # load the protobuf file 
        with tf.gfile.GFile(graph_path, "rb") as f:
        	graph_def = tf.GraphDef()
        	graph_def.ParseFromString(f.read())
        # import the graph 
        with self.graph.as_default():
        	tf.import_graph_def(graph_def, name='')
        return graph

    def pre_process(self, image):
        img = np.array(image, dtype="uint8")
        return img


    def get_classification(self, image):
        """Determines the color of the traffic light in the image
        Args:
            image (cv::Mat): image containing the traffic light
        Returns:
            int: ID of traffic light color (specified in styx_msgs/TrafficLight)
        """
        #TODO implement light color prediction
        image_in = pre_process(image)
        graph_in = load_graph(PATH_FROZEN_GRAPH)

        
        with graph_in.as_default():
        	with tf.Session(graph=graph_in, config=config) as sess:
        	score    = graph_in.get_tensor_by_name('detection_scores:0')
            color_id = graph_in.get_tensor_by_name('detection_classes:0')
            num = graph_in.get_tensor_by_name('num_detections:0')
            (scores,color_ids,num) = sess.run([score,color_id,num],
            	          feed_dict = {color_tensor: image_in})
            TrafficLight.state = colors[0]
            return TrafficLight.state
            """
return TrafficLight.UNKNOWN
