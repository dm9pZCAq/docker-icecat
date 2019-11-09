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

### Onion Browser Button:
also you can connect to Tor with [Onion Browser Button](https://mybrowseraddon.com/tor-button.html)

![OnionButton](https://user-images.githubusercontent.com/46228973/68534811-3840a000-0339-11ea-9f0b-47115f9b2858.png)

![Connected](https://user-images.githubusercontent.com/46228973/68534819-59a18c00-0339-11ea-9def-921bdb4fb2de.png)
