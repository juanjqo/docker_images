#!/bin/bash

# Install DQ Robotics (development branch)
add-apt-repository ppa:dqrobotics-dev/development 
apt-get update && apt-get install -y libdqrobotics libdqrobotics-interface-json11 libdqrobotics-interface-coppeliasim libdqrobotics-interface-coppeliasim-zmq
python3 -m pip install dqrobotics --pre --break-system-packages


# To prevent compilation erros with Pybind11
ln -s /usr/include/eigen3/Eigen /usr/include/Eigen
ldconfig