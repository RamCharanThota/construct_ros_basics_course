#! /usr/bin/env python

import rospy
from std_msgs.msg import Int32
from geometry_msgs.msg import Twist

rospy.init_node('topic_publisher')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
rate = rospy.Rate(2)
msg = Twist()
msg.linear.x = 0.04
msg.linear.y = 0
msg.angular.z = 0.0

while not rospy.is_shutdown():
    pub.publish(msg)
    rate.sleep()
