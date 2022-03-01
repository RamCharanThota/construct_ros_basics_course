#! /usr/bin/env python

import rospy
# you import the service message python classes
from services_quiz.srv import BB8CustomServiceMessage, BB8CustomServiceMessageResponse
# generated from MyCustomServiceMessage.srv.

from geometry_msgs.msg import Twist


def my_callback(request):

    print("side value is"+str(request.side))

    my_response = BB8CustomServiceMessageResponse()
    repetition_counter = 0
    my_response = True
    while(repetition_counter < request.repetitions):
        print("repetion coun number : "+str(repetition_counter))
        if(repetition_counter == 0):
            cmd.linear.x = 0.1
            cmd.linear.y = 0
            cmd.angular.z = 0
        elif(repetition_counter == 1):
            cmd.linear.x = 0.0
            cmd.linear.y = 0
            cmd.angular.z = 0.1
        elif(repetition_counter == 2):
            cmd.linear.x = 0.1
            cmd.linear.y = 0
            cmd.angular.z = 0.0
        elif(repetition_counter == 3):
            cmd.linear.x = 0.0
            cmd.linear.y = 0
            cmd.angular.z = 0.1
        else:
            cmd.linear.x = 0.0
            cmd.linear.y = 0
            cmd.angular.z = 0.0

        pub.publish(cmd)
        repetition_counter = repetition_counter+1
        rospy.sleep(10)

    return my_response


rospy.init_node('service_client')
# create the Service called my_service with the defined callback
my_service = rospy.Service(
    '/move_bb8_in_square_custom', BB8CustomServiceMessage, my_callback)
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
cmd = Twist()
rospy.spin()  # maintain the service open.
