#!/bin/bash

# Install DQ Robotics dependencies

# Install dependencies (including additional packages for development)
apt-get update && apt-get install -y libeigen3-dev libzmq3-dev libboost-all-dev python3-pybind11 python3-pip 


# Install qpOASES
mkdir -p ~/utils
cd ~/utils && git clone https://github.com/coin-or/qpOASES.git
cd ~/utils/qpOASES && sed -i -e 's/option(BUILD_SHARED_LIBS "If ON, build shared library instead of static" OFF)/option(BUILD_SHARED_LIBS "If ON, build shared library instead of static" ON)/g' CMakeLists.txt
cd ~/utils/qpOASES/ && mkdir -p build
cd ~/utils/qpOASES/build  && cmake .. && make && make install

# Install DQ Robotics (development branch)
add-apt-repository ppa:dqrobotics-dev/development 
apt-get update && apt-get install -y libdqrobotics libdqrobotics-interface-json11 \
libdqrobotics-interface-coppeliasim libdqrobotics-interface-coppeliasim-zmq libdqrobotics-interface-qpoases
python3 -m pip install dqrobotics --pre --break-system-packages


# To prevent compilation erros with Pybind11
ln -s /usr/include/eigen3/Eigen /usr/include/Eigen
ldconfig