Please see the original repo for the original project explanation

# To run locally with docker

The original paper did not provide enough information about the versions so I have to spin up a docker to do this. There's no other way around it. You need a GPU that supports CUDA 12.4 and at least 16GB RAM. The container should also be supported on runpod.io

```
sudo docker build . -t devign_docker
sudo docker run -d --name devign --gpus all devign_docker
sudo docker exec -it devign /bin/bash
```

Then to run the experiment

```
source train_juliet.sh
```

If for some reason the Dockerfile stops working(due to dependencies upgrade in the future), you can get the image from [Dockerhub](https://hub.docker.com/repository/docker/icewanee/devign-thesis-dataset). You can probably run it via

```
sudo docker run -d --gpus all -it icewanee/devign-thesis-dataset:latest
```
