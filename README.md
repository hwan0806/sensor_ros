# sensor_ros
Repository for SparoLab sensor ros packages

## sensors
* LiDAR
    * Ouster OS1-64
    * Ouster OS1-32
    * Velodyne VLP16
    * Livox AVIA
    * Livox MID360
* Camera
    * Realsense d435i
    * Realsense d455
* IMU
    * Microstrain 3dm-gx5-25 (old ver.)
    * Microstrain 3dm-gx5-25 (new ver.)
* GPS
    * TDR-3000
    * 
<br/><br/>

## Prerequisities
1. sensor SDK setup
[SparoLab sensor-SDK setup guide](https://github.com/hwan0806/sensor_sdk)
2. All ros packages are for ros-noetic ver.
3. register your personal LiDAR IP on your host PC.

## How to build?
```bash
git clone --recurse-submodules https://github.com/hwan0806/sensor_ros
cd ~/(your_workspace)/sensor_ros
sh ros_setup.sh [arg1] [arg2] [arg3]
```

** what is the above arguments? **
* arg1 : full serial number of Ouster LiDAR
* arg2 : full serial number of AVIA LiDAR + '1'
* arg3 : last two serial number of MID360 LiDAR 

