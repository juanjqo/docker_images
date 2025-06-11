FROM juanjqo/ubuntu_24_dqrobotics
ARG ROS_DOMAIN_ID=1
ENV ROS_DOMAIN_ID=$ROS_DOMAIN_ID  
SHELL ["/bin/bash", "-c"]
ENV BASH_ENV="/etc/bash_env"


# Install ROS2 Jazzy. 
RUN chmod +x ~/git/docker_recipes/dependencies/install_ros_jazzy.sh
RUN bash -c '~/git/docker_recipes/dependencies/install_ros_jazzy.sh'

# Install SAS
RUN chmod +x ~/git/docker_recipes/dependencies/install_sas.sh
RUN bash -c '~/git/docker_recipes/dependencies/install_sas.sh'

# ROS DOMAIN SETUP
RUN echo "export ROS_DOMAIN_ID=$ROS_DOMAIN_ID" >> ~/.bashrc 
