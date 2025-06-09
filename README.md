![GitHub License](https://img.shields.io/github/license/Adorno-Lab/docker_images)

# docker_images
This repository contains Docker images for DQ Robotics, ROS2, and more.


### Build

```shell
docker build -t ubuntu_dqrobotics ubuntu/dqrobotics/ 
```

### Run

```shell
docker run -it --name="ubuntu_dqrobotics" --rm --privileged --network=host ubuntu_dqrobotics /bin/bash
```
