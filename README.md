# docker.printrun
Image with git, Printrun, slic3r to interface 3d printer

## add container with x server access
```
xhost +
```

## start container
```
docker run -it --device /dev/ttyUSB0 -e DISPLAY=$DISPLAY twhtanghk/docker.printrun /root/Printrun/pronterface.py 
```