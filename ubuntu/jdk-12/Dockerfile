FROM ubuntu:disco

LABEL maintainer "Harsh Shandilya <msfjarvis@gmail.com>"

ENV JAVA_VER 12
ENV JAVA_HOME /usr/lib/jvm/zulu-12-amd64

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y -q software-properties-common sudo

RUN echo "deb http://repos.azulsystems.com/debian stable main" | sudo tee /etc/apt/sources.list.d/zulu.list && \
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9 && \
    apt-get update && \
    apt-get install -y --force-yes --no-install-recommends zulu-${JAVA_VER} && \
    apt-get clean

RUN echo "export JAVA_HOME=/usr/lib/jvm/zulu-12-amd64" >> ~/.bashrc

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT [ "/bin/bash" ]
