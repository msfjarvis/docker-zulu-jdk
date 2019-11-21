FROM ubuntu:disco

LABEL maintainer "Harsh Shandilya <msfjarvis@gmail.com>"

ENV JAVA_VER 7
ENV JAVA_HOME /usr/lib/jvm/zulu-7-amd64
ENV ZULU_PACKAGE zulu7.34.0.5-ca-jdk7.0.242-linux_x64

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y -q software-properties-common sudo

ADD scripts/install.sh /bin/install-jdk.sh

RUN . /bin/install-jdk.sh

ENTRYPOINT [ "/bin/bash" ]
