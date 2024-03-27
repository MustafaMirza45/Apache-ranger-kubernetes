#!/bin/bash
RANGER_VERSION=ranger-3.0.0-SNAPSHOT-trino-plugin
chown root:root -R /${RANGER_VERSION}/* && \
/${RANGER_VERSION}/enable-trino-plugin.sh
# /usr/lib/trino/bin/run-trino