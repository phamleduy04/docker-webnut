![Docker Image CI](https://github.com/edgd1er/docker-webnut/workflows/Docker%20Image%20CI/badge.svg)

Difference from teknologist's version:
- added actions to build image and publish to docker hub.

# docker-webNUT

webNUT (UPS network monitoring web ui) dockerized.

More infos on webNUT:  https://github.com/rshipp/webNUT

Set the following environment variables:

**UPS_HOST**    with NUT server host IP  *(default: 127.0.0.1)*

**UPS_PORT**	  with NUT server port  *(default: 3493)*

**UPS_USER**    with NUT server username   *(default: monuser)*

**UPS_PASSWORD**     with NUT server  password   *(default: secret)*




Run with:

> docker run -e UPS_HOST="10.11.12.13"  -e UPS_PORT="3493" -e UPS_USER="monuser" -e UPS_PASSWORD="secret" -p 6543:6543 -e  edgd1er/webnut:latest

# Docker-compose

```
version: "3.5"
services:
  webnut:
    image: edgd1er/webnut:latest
    restart: always
    environment:
      UPS_HOST: "10.11.12.13"
      UPS_PORT: "3493"
      UPS_USER: "monuser"
      UPS_PASSWORD: "secret"
    ports:
     - "6543:6543"
```