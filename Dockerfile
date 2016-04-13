FROM maven:3.3.9-jdk-8
MAINTAINER Albert Giménez <albert.gimenez.morales@gmail.com>

RUN apt-get install -y git

RUN git clone https://github.com/apache/incubator-zeppelin.git /zeppelin

WORKDIR /zeppelin

RUN mvn clean package -Pspark-1.6 -DskipTests

ENV ZEPPELIN_PORT 9995
EXPOSE 9995

COPY bootstrap.sh /etc/bootstrap.sh

RUN mkdir -p /data
WORKDIR /data

ENTRYPOINT ["/etc/bootstrap.sh"]
