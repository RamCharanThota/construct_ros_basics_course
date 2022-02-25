#include "ros/ros.h"
#include "ros_service_ex/ProductOfThreeNum.h"

bool add(ros_service_ex::ProductOfThreeNum::Request  &req,
         ros_service_ex::ProductOfThreeNum::Response &res)
{
  res.product = req.num1 *req.num2*req.num3;
  ROS_INFO("request: num1=%ld, num2=%ld,num3=%ld", (long int)req.num1, (long int)req.num2,(long int)req.num3);
  ROS_INFO("sending back response: [%ld]", (long int)res.product);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "product_service_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("product_three_ints", add);
  ROS_INFO("Ready to product three ints.");
  ros::spin();

  return 0;
}
