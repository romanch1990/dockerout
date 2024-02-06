FROM ubuntu

WORKDIR /var

RUN cd ../../../../ && ls &&  echo "malicious code here"
