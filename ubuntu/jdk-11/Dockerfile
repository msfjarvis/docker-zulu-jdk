FROM ubuntu:disco

LABEL maintainer "Harsh Shandilya <msfjarvis@gmail.com>"

ENV JAVA_VER 11
ENV JAVA_HOME /usr/lib/jvm/zulu-11-amd64
ENV ZULU_PACKAGE zulu11.35.15-ca-jdk11.0.5-linux_x64

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y -q bash wget tar

ADD scripts/install.sh /bin/install-jdk.sh

RUN . /bin/install-jdk.sh

ENTRYPOINT [ "/bin/bash" ]

