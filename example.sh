#!/bin/bash
set -e
rm -rf ~/.m2/repository
mvn org.apache.maven.plugins:maven-dependency-plugin:3.0.1:get \
    -DrepoUrl=https://repo.maven.apache.org/maven2 \
    -Dartifact=org.eclipse.persistence:eclipselink:2.6.1 \
    -Dtransitive=true
tar czvf artifacts.tar.gz -C ~/.m2/repository .
