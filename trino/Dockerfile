FROM trinodb/trino:436
USER root
COPY /docker-entrypoint.sh . 
COPY /ranger-3.0.0-SNAPSHOT-trino-plugin ./ranger-3.0.0-SNAPSHOT-trino-plugin
RUN ./docker-entrypoint.sh
COPY ./hudi-presto-bundle-0.10.1.jar /usr/lib/trino/plugin/hive/
COPY ./jmx_prometheus_javaagent.jar /usr/lib/trino/plugin/jmx/
COPY ./exporter_config.yaml /usr/lib/trino/plugin/jmx/util/
EXPOSE 8080
CMD ["/usr/lib/trino/bin/run-trino"]
# RUN \ 
#     /usr/lib/trino/bin/run-trino