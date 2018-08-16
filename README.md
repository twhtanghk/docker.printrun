# docker.printrun
Image with git, Printrun, slic3r to interface 3d printer

## add container with x server access
```
xhost +
```

## start container
```
docker run --device /dev/ttyUSB0 -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $PWD/src:/root twhtanghk/docker.printrun
```
