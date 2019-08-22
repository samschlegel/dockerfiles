#!/usr/bin/env bash
docker run -ti --rm \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v ${HOME}/.IntelliJIdea2019.1:/home/develop/.IntelliJIdea2019.1 \
  -v ${HOME}/.java:/home/develop/.java \
  -v ${HOME}/code:/home/develop/code \
  samschlegel/develop:latest
