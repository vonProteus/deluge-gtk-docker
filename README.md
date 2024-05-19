# Dockerized Deluge thin client

based on [deluge-gtk-1.3.15-docker](https://github.com/laur89/deluge-gtk-1.3.15-docker) but updated for deluge 2

## Running

require running x11 server

```
docker run \
    --rm \
    -e DISPLAY=$X11_HOST:0 \
    -v $HOME/.config/deluge:/home/deluge/.config/deluge
    <image_id>
```
