![GitHub License](https://img.shields.io/github/license/Adorno-Lab/docker_images)

# docker_recipes
This repository contains Docker images for DQ Robotics, ROS2, and more.

## Instructions for local tests

Clone and build:

```shell
cd ~/Downloads
git clone https://github.com/Adorno-Lab/docker_recipes.git --recursive
cd ~/docker_recipes
docker build -t ubuntu_24_dqrobotics ubuntu_24/dqrobotics/
```
Run:

```shell
sh run_container.sh ubuntu_24_dqrobotics
```
