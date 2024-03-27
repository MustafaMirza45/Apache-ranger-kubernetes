#!/bin/bash

RANGER_VERSION=3.0.0-SNAPSHOT

#wget https://github.com/MustafaMirza45/Apache-ranger-kubernetes/releases/download/v1.0/ranger-${RANGER_VERSION}-admin.tar.gz && \
tar xvf ranger-${RANGER_VERSION}-admin.tar.gz && \
cd /root/ranger-${RANGER_VERSION}-admin/ && \
cp /root/install.properties /root/ranger-${RANGER_VERSION}-admin/ && \
./setup.sh && \
export HADOOP_OPTS="$HADOOP_OPTS -Djava.library.path=$HADOOP_HOME/lib/native" && \
echo "-------------------------------satrting ranger----------------------"
ranger-admin start && \
tail -f /root/ranger-${RANGER_VERSION}-admin/ews/logs/ranger-admin-*-.log
