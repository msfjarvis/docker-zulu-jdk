#!/usr/bin/env bash

echo "Downloading JDK from https://cdn.azul.com/zulu/bin/${ZULU_PACKAGE:?} to ${JAVA_HOME:?}"
mkdir -p /usr/lib/jvm
cd /usr/lib/jvm || exit
wget https://cdn.azul.com/zulu/bin/"${ZULU_PACKAGE}".tar.gz
tar xzvf "${ZULU_PACKAGE}".tar.gz
mv -v "${ZULU_PACKAGE}"/ "${JAVA_HOME}"
rm "${ZULU_PACKAGE}".tar.gz
echo "export JAVA_HOME=${JAVA_HOME}" >> ~/.bashrc
