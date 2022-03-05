#! /usr/bin/env python

import rospy
# you import the service message python classes
from services_quiz.srv import BB8CustomServiceMessage, BB8CustomServiceMessageResponse
# generated from MyCustomServiceMessage.srv.
# Import math Library
import math

from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion, quaternion_from_euler


def odom_callback(data):
    global x_val
    x_val = data.pose.pose.position.x
    global y_val
    y_val = data.pose.pose.position.y

    global roll_val, pitch_val, yaw_val
    orientation_q = data.pose.pose.orientation
    orientation_list = [orientation_q.x, orientation_q.y,
                        orientation_q.z, orientation_q.w]
    (roll_val, pitch_val, yaw_val) = euler_from_quaternion(orientation_list)
    print("x :", x_val, " y:", y_val, " orie z:", yaw_val)


def my_callback(request):

    side = request.side
    my_response = BB8CustomServiceMessageResponse()
    repetition_counter = 0
    go_straight = True
    robot_complete_sqaure = False

    while(repetition_counter < request.repetitions):
        initial_x_val = x_val
        initial_y_val = y_val
        initial_yaw_val = yaw_val

        x_val_prev = x_val
        y_val_prev = y_val
        yaw_val_prev = yaw_val

        while(not robot_complete_sqaure):

            if(go_straight):
                cmd.linear.x = 0.4
                cmd.linear.y = 0.0
                cmd.angular.z = 0.0

            else:
                cmd.linear.x = 0.0
                cmd.linear.y = 0.0
                cmd.angular.z = 0.4

            pub.publish(cmd)

            # condition to check to turn right or go straight
            distance_travelled = ((x_val - x_val_prev)**2 +
                                  (y_val - y_val_prev)**2)**0.5
            yaw_changes = abs(yaw_val-yaw_val_prev)

            if(distance_travelled >= side and True):
                x_val_prev = x_val
                y_val_prev = y_val
                go_straight = False

            if(yaw_changes >= math.pi/2 and not go_straight):
                yaw_val_prev = yaw_val
                go_straight = True

            # condition to check robot reach its intial position
            pos_diff = ((x_val - initial_x_val)**2 +
                        (y_val - initial_y_val)**2)**0.5
            oren_diff = abs(initial_yaw_val-yaw_val)
            if(pos_diff < 0 and oren_diff < 0):
                cmd.linear.x = 0.0
                cmd.linear.y = 0.0
                cmd.angular.z = 0.0
                pub.publish(cmd)

                robot_complete_sqaure = True

        repetition_counter = repetition_counter+1
    my_response = True
    return my_response


rospy.init_node('service_client')
# create the Service called my_service with the defined callback
my_service = rospy.Service(
    '/move_bb8_in_square_custom', BB8CustomServiceMessage, my_callback)
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
rospy.Subscriber("/odom", Odometry, odom_callback)
cmd = Twist()
rospy.spin()  # maintain the service open.

