# docker-icecat
IceCat browser with tor in [musl](https://www.musl-libc.org/faq.html) [Void Linux](https://voidlinux.org) container, which take 68MB and with all needed files 682MB

### build:
`docker build -t icecat github.com/kzwg63tf/docker-icecat`

### preparation:
`xhost +local:docker` allow docker to open window

### running:
```
docker run --rm -dit \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    icecat
```
 * __/tmp/.X11-unix__ - path to x11 control directory
 
optianaly you can add:

`-v $HOME/Downloads/IceCat:/IceCat/Downloads`

for downloading something from IceCat
