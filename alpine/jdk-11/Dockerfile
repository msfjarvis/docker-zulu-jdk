FROM alpine:latest

LABEL maintainer "Harsh Shandilya <msfjarvis@gmail.com>"

ENV JAVA_VER 11
ENV JAVA_HOME /usr/lib/jvm/zulu-11-amd64
ENV ZULU_PACKAGE zulu11.35.15-ca-jdk11.0.5-linux_musl_x64

RUN apk -U update && apk -U add bash wget tar

ADD scripts/install.sh /bin/install-jdk.sh

RUN . /bin/install-jdk.sh

ENTRYPOINT [ "/bin/bash" ]
