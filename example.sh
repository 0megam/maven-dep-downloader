#!/bin/bash
set -e
rm -rf ~/.m2/repository
mvn org.apache.maven.plugins:maven-dependency-plugin:3.0.1:get \
    -DremoteRepositories=https://plugins.gradle.org/m2 \
    -Dartifact=gradle.plugin.org.jetbrains.intellij.plugins:gradle-intellij-plugin:0.2.13 \
    -Dtransitive=true
tar czvf artifacts.tar.gz -C ~/.m2/repository .
