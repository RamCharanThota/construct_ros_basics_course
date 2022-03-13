#! /usr/bin/env python
import rospy
import time
import actionlib
from ardrone_as.msg import ArdroneAction, ArdroneGoal, ArdroneResult, ArdroneFeedback
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty

nImage = 1

PENDING = 0
ACTIVE = 1
DONE = 2
WARN = 3
ERROR = 4

# definition of the feedback callback. This will be called when feedback
# is received from the action server
# it just prints a message indicating a new message has been received


def feedback_callback(feedback):
    global nImage
    print('[Feedback] image n.%d received' % nImage)
    nImage += 1


# initializes the action client node
rospy.init_node('drone_action_client')

pub = rospy.Publisher('cmd_vel', Twist, queue_size=10)
pub2 = rospy.Publisher('/drone/takeoff', Empty, queue_size=10)


empty_command = Empty()
i = 0
while i < 3:
    pub2.publish(empty_command)
    time.sleep(1)
    i += 1

# create the connection to the action server
client = actionlib.SimpleActionClient('/ardrone_action_server', ArdroneAction)
# waits until the action server is up and running
client.wait_for_server()

# creates a goal to send to the action server
goal = ArdroneGoal()
goal.nseconds = 10  # indicates, take pictures along 10 seconds

# sends the goal to the action server, specifying which feedback function
# to call when feedback received
client.send_goal(goal, feedback_cb=feedback_callback)

state_result = client.get_state()

# Uncomment these lines to test goal preemption:
# time.sleep(3.0)
# client.cancel_goal()  # would cancel the goal 3 seconds after starting
rate = rospy.Rate(1)
rospy.loginfo("state_result: "+str(state_result))


# wait until the result is obtained
# you can do other stuff here instead of waiting
# and check for status from time to time
# status = client.get_state()
# check the client API link below for more info

# wait until the result is obtained
# you can do other stuff here instead of waiting
# and check for status from time to time
# status = client.get_state()
# check the client API link below for more info


# wait until the result is obtained
# you can do other stuff here instead of waiting
# and check for status from time to time
# status = client.get_state()
# check the client API link below for more info

# wait until the result is obtained
# you can do other stuff here instead of waiting
# and check for status from time to time
# status = client.get_state()
# check the client API link below for more info


cmd = Twist()
while state_result < DONE:
    cmd.linear.x = 0.2
    cmd.linear.y = 0
    cmd.linear.z = 0.0
    cmd.angular.z = 0.2
    pub.publish(cmd)

    rate.sleep()

rospy.loginfo("[Result] State: "+str(state_result))
if state_result == ERROR:
    rospy.logerr("Something went wrong in the Server Side")
if state_result == WARN:
    rospy.logwarn("There is a warning in the Server Side")


print('[Result] State: %d' % (client.get_state()))

