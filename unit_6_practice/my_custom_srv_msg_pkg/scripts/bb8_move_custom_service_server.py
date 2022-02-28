#! /usr/bin/env python

import rospy

from my_custom_srv_msg_pkg.srv import MyCustomServiceMessage, MyCustomServiceMessageResponse
# generated from MyCustomServiceMessage.srv.
from geometry_msgs.msg import Twist


def my_callback(request):
    rospy.loginfo("The service move_bb8 custom circle is started")
    move_circle.linear.x = 0.2
    move_circle.angular.z = 0.2
    start_time = rospy.get_rostime()
    time_out = rospy.Duration(request.duration)
    while(rospy.get_rostime() - start_time < time_out):
        my_pub.publish(move_circle)
    move_circle.linear.x = 0.0
    move_circle.angular.z = 0.0
    my_pub.publish(move_circle)
    srv_response = MyCustomServiceMessageResponse()
    srv_response.success = True
    return srv_response   # the service Response class, in this case EmptyResponse
    # return MyServiceResponse(len(request.words.split()))


rospy.init_node('move_bb8_in_circle_custom_service_server')
# create the Service called my_service with the defined callback
my_service = rospy.Service(
    '/move_bb8_in_circle_custom', MyCustomServiceMessage, my_callback)
my_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
move_circle = Twist()
rospy.spin()  # maintain the service open.
