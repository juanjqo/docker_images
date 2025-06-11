FROM juanjqo/ubuntu_24_dqrobotics
ARG ROS_DOMAIN_ID=1
ENV ROS_DOMAIN_ID=$ROS_DOMAIN_ID  
SHELL ["/bin/bash", "-c"]
ENV BASH_ENV="/etc/bash_env"

# Install ROS2 as instructed in https://ros2-tutorial.readthedocs.io/en/latest/installation.html
RUN add-apt-repository universe
RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null
RUN apt update && apt upgrade -y
RUN apt-get update && apt-get install -y ros-jazzy-desktop ros-dev-tools

# ALIASES
RUN echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc
RUN echo "# Source the ROS2 overlay, as instructed in https://github.com/SmartArmStack/smart_arm_stack_ROS2" >> ~/.bashrc
RUN echo "alias cdros2='cd ~/ros2_ws/' " >> ~/.bashrc 
RUN echo "alias buildros2='cdros2 && colcon build && source install/setup.bash' " >> ~/.bashrc 

# ROS DOMAIN SETUP
RUN echo "export ROS_DOMAIN_ID=$ROS_DOMAIN_ID" >> ~/.bashrc 
RUN source ~/.bashrc