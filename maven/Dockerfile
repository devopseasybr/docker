FROM amd64/ubuntu:24.10

WORKDIR /home/java

COPY setup.sh settings.xml /home/java/

RUN sh setup.sh

ENV JAVA_HOME /opt/jdk-17.0.6 \
 MAVEN_HOME /opt/apache-maven-3.8.7 \
 MAVEN_CONFIG "/home/java/.m2" \
 MAVEN_CLI_OPTS "-s /home/java/.m2/settings.xml --batch-mode" \
 PATH $PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin