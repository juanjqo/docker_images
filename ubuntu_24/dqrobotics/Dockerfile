FROM ubuntu:noble
ARG ROS_DOMAIN_ID=1
ENV ROS_DOMAIN_ID=$ROS_DOMAIN_ID  
SHELL ["/bin/bash", "-c"]
ENV BASH_ENV="/etc/bash_env"

# Install dependencies
RUN apt-get update && apt-get install -y net-tools iputils-ping \
git nss-updatedb locate curl libpci3 vim nano terminator \
cmake extra-cmake-modules g++ libeigen3-dev fakeroot python3-pip \
libzmq3-dev libboost-all-dev python3-pybind11 software-properties-common 

RUN mkdir -p ~/git/
RUN cd ~/git/ && git clone https://github.com/Adorno-Lab/docker_recipes.git --recursive
RUN ~/git/docker_recipes/dependencies/install_dqrobotics.sh

# Install DQ Robotics
# RUN add-apt-repository ppa:dqrobotics-dev/development 
# RUN apt-get update && apt-get install libdqrobotics libdqrobotics-interface-json11
# RUN python3 -m pip install dqrobotics --pre --break-system-packages
# RUN apt-get update && apt-get install -y libdqrobotics-interface-coppeliasim libdqrobotics-interface-coppeliasim-zmq

# Install qpOASES
#RUN mkdir -p ~/utils
#RUN cd ~/utils && git clone https://github.com/coin-or/qpOASES.git
#RUN cd ~/utils/qpOASES && sed -i -e 's/option(BUILD_SHARED_LIBS "If ON, build shared library instead of static" OFF)/option(BUILD_SHARED_LIBS "If ON, build shared library instead of static" ON)/g' CMakeLists.txt
#RUN cd ~/utils/qpOASES/ && mkdir -p build
#RUN cd ~/utils/qpOASES/build  && cmake .. && make && make install

# Install DQ Robotics interface with qpOASES
#RUN apt-get update && apt-get install -y libdqrobotics-interface-qpoases


# To prevent compilation erros with Pybind11
#RUN ln -s /usr/include/eigen3/Eigen /usr/include/Eigen
#RUN ldconfig