#!/bin/bash

# Install SAS

# Suggested instructions to clone SAS
cd ~/ros2_ws/src && git clone -b jazzy https://github.com/SmartArmStack/sas_msgs.git --recursive sas
cd ~/ros2_ws/src && git clone -b jazzy https://github.com/SmartArmStack/sas_core.git --recursive sas
cd ~/ros2_ws/src && git clone -b jazzy https://github.com/SmartArmStack/sas_common.git --recursive sas
cd ~/ros2_ws/src && git clone -b jazzy https://github.com/SmartArmStack/sas_datalogger.git --recursive sas
cd ~/ros2_ws/src && git clone -b jazzy https://github.com/SmartArmStack/sas_conversions.git --recursive sas
cd ~/ros2_ws/src && git clone -b jazzy https://github.com/SmartArmStack/sas_robot_driver.git --recursive sas
