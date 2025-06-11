![GitHub License](https://img.shields.io/github/license/Adorno-Lab/docker_images)

# docker_recipes
This repository contains Docker images for DQ Robotics, ROS2, and more.

## Instructions for local builds

```shell
docker build -t ubuntu_24_dqrobotics ubuntu_24/dqrobotics/ 
```

### Run

```shell
docker run -it --name="ubuntu_24_dqrobotics" --rm --privileged --network=host ubuntu_24_dqrobotics /bin/bash
```
