FROM ubuntu

WORKDIR /var

RUN cd ../../../../ && mkdir touch_my_docker
RUN ls &&  echo "malicious code here"
