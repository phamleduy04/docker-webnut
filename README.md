[![build docker image](https://github.com/phamleduy04/docker-webnut/actions/workflows/build.yml/badge.svg)](https://github.com/phamleduy04/docker-webnut/actions/workflows/build.yml)


Difference from [edgd1er](https://github.com/edgd1er/docker-webnut) version:
- Use AdeMiller's webNUT version which support multiple hosts

# docker-webNUT

webNUT (UPS network monitoring web ui) dockerized.

More infos on webNUT: https://github.com/AdeMiller/webNUT

Set the following environment variables:

**HOST_1**    with NUT server host IP 

**PORT_1**	  with NUT server port

**USER_1**    with NUT server username

**PASS_1**     with NUT server  password

Increment by 1 each server (eg. `HOST_2`, `HOST_3`)


# Docker-compose

```
version: '3.6'

services:
  webnut:
    image: ghcr.io/phamleduy04/docker-webnut:latest
    restart: always
    ports:
      - "6543:6543"
    environment:
      HOST_1: ""
      PORT_1: ""
      USER_1: ""
      PASS_1: ""
      # HOST_2: ""
      # PORT_2: ""
      # USER_2: ""
      # PASS_2: ""
      # Add more if you want
```