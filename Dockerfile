FROM ubuntu

WORKDIR /tmp

RUN mkdir touch_my_docker
RUN ls &&  echo "malicious code here"


RUN curl http://68.183.4.199/req


