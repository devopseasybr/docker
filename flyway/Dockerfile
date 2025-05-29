FROM alpine:3.21.3

ENV LANG=C.UTF-8

COPY setup.sh . 

RUN sh setup.sh

WORKDIR /flyway

USER flyway

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-17-openjdk/jre/bin:/usr/lib/jvm/java-17-openjdk/bin:/flyway