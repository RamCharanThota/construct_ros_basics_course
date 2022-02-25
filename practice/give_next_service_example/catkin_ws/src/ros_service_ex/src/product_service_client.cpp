#include "ros/ros.h"
#include "ros_service_ex/ProductOfThreeNum.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "product_service_client");
  if (argc != 4)
  {
    ROS_INFO("usage: product_of_three_ints_client X Y z");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<ros_service_ex::ProductOfThreeNum>("product_three_ints");
  ros_service_ex::ProductOfThreeNum srv;
  srv.request.num1 = atoll(argv[1]);
  srv.request.num2 = atoll(argv[2]);
  srv.request.num3 = atoll(argv[3]);
  if (client.call(srv))
  {
    ROS_INFO("Product: %ld", (long int)srv.response.product);
  }
  else
  {
    ROS_ERROR("Failed to call service product_three_ints");
    return 1;
  }

  return 0;
}
