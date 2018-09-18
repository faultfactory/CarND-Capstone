
import tensorflow as tf 
import numpy as np 
import os
import sys
from glob import glob
from PIL import Image
import random


class TLClassifier(object):
    def __init__(self, is_site):
        #TODO load classifier
        
        self.is_site = is_site
        self.light_state = None
        self.light_classes = ['Red','Green','Yellow', 'off']
        
        # path to graph
        if self.is_site:
            PATH_FROZEN_GRAPH = 'models/frozen_inference_graph_real.pb' #site
            print('loading real model')
        else:
            PATH_FROZEN_GRAPH = 'models/frozen_inference_graph_sim.pb'
            print('loading sim model')
        
        self.graph = self.load_graph(PATH_FROZEN_GRAPH)
        config = tf.ConfigProto()
        config.gpu_options.allow_growth = True
        self.config = config
        boxes = self.graph.get_tensor_by_name('detection_boxes:0')
        scores = self.graph.get_tensor_by_name('detection_scores:0')
        classes = self.graph.get_tensor_by_name('detection_classes:0')
        num = self.graph.get_tensor_by_name('num_detections:0')
        
        self.sess_inputs=[boxes, scores, classes, num];
        self.sess = tf.Session(graph=self.graph, config=self.config)
            

    def load_graph(self, graph_path):
        # load the protobuf file 
        graph = tf.Graph()
        with tf.gfile.GFile(graph_path, "rb") as f:
        	graph_def = tf.GraphDef()
        	graph_def.ParseFromString(f.read())
        # import the graph 
        with graph.as_default():
        	tf.import_graph_def(graph_def, name='')
        return graph

    def load_image(self, image):
        (rows, cols, depth) = image.shape
        img_r = np.array(image).reshape(1,rows, cols, 3).astype(np.uint8)
        #img_e = np.expand_dims(img_r, axis=0)
        return img_r


    def get_classification(self, image):
        """Determines the color of the traffic light in the image
        Args:
            image (cv::Mat): image containing the traffic light
        Returns:
            int: ID of traffic light color (specified in styx_msgs/TrafficLight)
        """
        #TODO implement light color prediction


                
        # gpu config


        

        
        with self.graph.as_default():

            image_tensor = self.graph.get_tensor_by_name('image_tensor:0')

            (boxes, scores, classes, num) = self.sess.run(
                self.sess_inputs,
                feed_dict={image_tensor: self.load_image(image)})

            classes = np.squeeze(classes).astype(np.int32)
            scores = np.squeeze(scores)

            # understanding model
            #print(scores)
            pct_scores = [i * 100 for i in scores]
            #print(pct_scores)
            ron_scores = [round(i,2) for i in pct_scores]
            print(ron_scores)
            
            print(classes)
            idx = classes[0] # classes ==> 1-Red; 2-Green; 3-Yellow; 4-off

            self.light_state = self.light_classes[idx-1] # idx-1 ==> 0-Red; 1-Green; 2-Yellow; 3-off

            return self.light_state

if __name__ == '__main__':
    mode = True #is_site 0-sim 1-real
    #mode = False
    if mode:
        msg = 'Real/Site'
    else:
        msg = 'Sim'

    tlc = TLClassifier(mode)
    print(msg, 'Testing')
    
    # test images for site/real testing 
    TEST_IMGS = glob(os.path.join('test_images/', '*.jpg'))

    for inum, img_path in enumerate(TEST_IMGS):
        #random.shuffle(TEST_IMGS)
        image = Image.open(img_path)
        image_in = tlc.load_image(image)
        image_in_cp = np.copy(image_in)

        tl_state = tlc.get_classification(image_in_cp)
        print('In Image', inum, 'Signal Is', tl_state)

        #if inum == 0:
           #break
