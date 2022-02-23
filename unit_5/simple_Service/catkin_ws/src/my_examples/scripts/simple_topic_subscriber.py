#! /usr/bin/env python

import rospy
from std_msgs.msg import Int32
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry


def callback(msg):
    print("xvel: ", msg.pose.pose.position.x,
          " yvel: ", msg.pose.pose.position.y)


rospy.init_node('topic_subscriber')
sub = rospy.Subscriber('/odom', Odometry, callback)
rospy.spin()
