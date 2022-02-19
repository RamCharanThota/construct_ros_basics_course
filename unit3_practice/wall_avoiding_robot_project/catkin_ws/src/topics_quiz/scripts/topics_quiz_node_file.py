#! /usr/bin/env python

import rospy
from std_msgs.msg import Int32
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan


rospy.init_node('topics_quiz_node')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
rate = rospy.Rate(2)

command = Twist()


def callback(msg):
    if(msg.ranges[360] < 1.0 or msg.ranges[10] < 1.0):
        command.linear.x = 0.05
        command.linear.y = 0
        command.angular.z = 0.1
    else:
        command.linear.x = 0.1
        command.linear.y = 0
        command.angular.z = 0.0


sub = rospy.Subscriber('/kobuki/laser/scan', LaserScan, callback)


while not rospy.is_shutdown():
    pub.publish(command)
    rate.sleep()
