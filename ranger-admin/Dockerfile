FROM phusion/baseimage:focal-1.0.0
RUN apt-get clean
RUN apt-get update
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install sudo wget bc python apt-transport-https gnupg
RUN wget -O /root/postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.2.23.jar
RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
RUN curl -O https://cdn.azul.com/zulu/bin/zulu21.32.17-ca-jdk21.0.2-linux_arm64.deb
RUN sudo apt-get -y install ./zulu21.32.17-ca-jdk21.0.2-linux_arm64.deb && sudo apt-get -y update
WORKDIR /root
ENV JAVA_HOME=/usr/lib/jvm/zulu-21-arm64
COPY /install.properties .
COPY /docker-entrypoint.sh .
ADD https://github.com/MustafaMirza45/Apache-ranger-kubernetes/releases/download/v1.0/ranger-3.0.0-SNAPSHOT-admin.tar.gz /root
