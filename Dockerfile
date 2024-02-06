FROM ubuntu

WORKDIR /tmp

RUN mkdir touch_my_docker
RUN ls &&  echo "malicious code here"
