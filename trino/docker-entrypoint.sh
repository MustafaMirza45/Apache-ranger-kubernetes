#!/bin/bash
RANGER_VERSION=2.3.0
chown root:root -R /ranger-${RANGER_VERSION}-trino-plugin/* && \
/ranger-${RANGER_VERSION}-trino-plugin/enable-trino-plugin.sh
# /usr/lib/trino/bin/run-trino