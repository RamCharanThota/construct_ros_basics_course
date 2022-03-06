#!/usr/bin/env python


import rospy
# Import the service message used by the service /trajectory_by_name
from services_quiz.srv import BB8CustomServiceMessage, BB8CustomServiceMessageRequest
import sys

# Initialise a ROS node with the name service_client
rospy.init_node('bb8_service_client')
# Wait for the service client /trajectory_by_name to be running
rospy.wait_for_service('/move_bb8_in_square_custom')
# Create the connection to the service
bb8_square_service = rospy.ServiceProxy(
    '/move_bb8_in_square_custom', BB8CustomServiceMessage)
# Create an object of type TrajByNameRequest
MessageRequest = BB8CustomServiceMessageRequest()
# Fill the variable traj_name of this object with the desired value
MessageRequest.side = 2
MessageRequest.repetitions = 1
# Send through the connection the name of the trajectory to be executed by the robot
result = bb8_square_service(MessageRequest)
# Print the result given by the service called
MessageRequest.side = 4
MessageRequest.repetitions = 1
# Send through the connection the name of the trajectory to be executed by the robot
result = bb8_square_service(MessageRequest)
print(result)
