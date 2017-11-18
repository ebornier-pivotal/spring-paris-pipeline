#!/bin/bash 
cd pre-release
ls
tar xvf source.tar.gz --strip 1
export
./mvnw clean package -Dmaven.test.skip=true

mv manifest-stage.yml ../../../build/
mv target/*.jar ../build/
