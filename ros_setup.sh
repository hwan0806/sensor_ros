# sensor ROS package setup for SparoLab

# LiDAR Arguments
Ouster="$1"
AVIA="$2"
MID360="$3"


# 1. Livox ROS Driver2
source /opt/ros/noetic/setup.sh
cd src/livox_ros_driver2
./build.sh ROS1

# 2. Livox ROS Driver & Ouster-ROS
cd ../..
catkin_make --cmake-args -DCMAKE_BUILD_TYPE=Release

# Livox-MID360 IP setup
sed -i 's/192.168.1.5/192.168.1.50/g' src/livox_ros_driver2/config/MID360_config.json
sed -i 's/192.168.1.12/192.168.1.1'$MID360'/g' src/livox_ros_driver2/config/MID360_config.json


# Livox AVIA broadcast_code setup
sed -i 's/0TFDG3U99101431/'$AVIA'/g' src/livox_ros_driver/livox_ros_driver/config/livox_lidar_config.json
sed -i 's/"imu_rate": 0/"imu_rate": 1/g' src/livox_ros_driver/livox_ros_driver/config/livox_lidar_config.json

# Ouster namespace setup
sed -i 's/"sensor_hostname" /"sensor_hostname" default="'$Ouster'.local" /g' src/ouster-ros/launch/sensor.launch
