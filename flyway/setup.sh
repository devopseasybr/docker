#!/bin/bash

PROGRAM_LIST="openjdk17-jre=17.0.14_p7-r0 bash openssl wget"
FLYWAY_VERSION=11.3.4
FLYWAY_URL=https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/$FLYWAY_VERSION/flyway-commandline-$FLYWAY_VERSION.tar.gz 
JAVA_HOME=/usr/lib/jvm/java-17-openjdk/jre

sed -i -e 's/http:/https:/' /etc/apk/repositories

apk update && apk add --no-cache $PROGRAM_LIST
 
echo '#!/bin/sh'; echo 'set -e'; echo; echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; > /usr/local/bin/docker-java-home
chmod +x /usr/local/bin/docker-java-home
addgroup -g 1000 -S flyway && adduser -S -G flyway -h /flyway -D flyway

wget --quiet $FLYWAY_URL && tar -xzf flyway-commandline-$FLYWAY_VERSION.tar.gz -C /flyway --strip-components=1
rm -rf flyway-commandline-$FLYWAY_VERSION.tar.gz setup.sh
chown -R flyway:flyway /flyway
chmod -R u+x /flyway
apk del wget
