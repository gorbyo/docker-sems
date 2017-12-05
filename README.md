# docker-sems

Create container

/bin/docker pull gorbyo/docker-sems:latest

Run docker

/bin/docker run --restart=always --net host --name sems_dock --mount type=bind,source=/usr/local/etc/sems,target=/usr/local/etc/sems gorbyo/docker-sems
