FROM ubuntu:18.04

RUN \
    apt-get update && \
    apt-get install -y wget && \
    wget https://download.jetbrains.com/idea/ideaIU-2019.1.4.tar.gz && \
    tar -xzf ideaIU*.tar.gz -C /opt && \
    mv /opt/idea-IU* /opt/idea && \
    rm ideaIU*.tar.gz && \
    apt-get remove -y --autoremove wget

RUN apt-get install -y xserver-xorg sudo

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/develop && \
    echo "develop:x:${uid}:${gid}:develop,,,:/home/develop:/bin/bash" >> /etc/passwd && \
    echo "develop:x:${uid}:" >> /etc/group && \
    echo "develop ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/develop && \
    chmod 0440 /etc/sudoers.d/develop && \
    chown ${uid}:${gid} -R /home/develop

USER develop

CMD ["/opt/idea/bin/idea.sh"]
