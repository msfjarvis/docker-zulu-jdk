FROM alpine:latest

LABEL maintainer "Harsh Shandilya <msfjarvis@gmail.com>"

ENV JAVA_VER 8
ENV JAVA_HOME /usr/lib/jvm/zulu-8-amd64
ENV ZULU_PACKAGE zulu8.42.0.23-ca-jdk8.0.232-linux_musl_x64

RUN apk -U update && apk -U add bash wget tar

ADD scripts/install.sh /bin/install-jdk.sh

RUN . /bin/install-jdk.sh

ENTRYPOINT [ "/bin/bash" ]
