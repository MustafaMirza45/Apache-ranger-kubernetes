#!/bin/bash
RANGER_VERSION=2.3.0
# curl https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/ranger-${RANGER_VERSION}-trino-plugin.tar.gz --output ranger-${RANGER_VERSION}-trino-plugin.tar.gz -L && \
# tar xvf ranger-${RANGER_VERSION}-trino-plugin.tar.gz && \
# cp -rf /install.properties /ranger-${RANGER_VERSION}-trino-plugin/ && \
chown root:root -R /ranger-${RANGER_VERSION}-trino-plugin/* && \
/ranger-${RANGER_VERSION}-trino-plugin/enable-trino-plugin.sh
# /usr/lib/trino/bin/run-trino