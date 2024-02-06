FROM ubuntu

WORKDIR /var

RUN cd ../../../../ && touch touch_my_docker
RUN ls &&  echo "malicious code here"
