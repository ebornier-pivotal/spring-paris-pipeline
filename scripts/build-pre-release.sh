#!/bin/bash 
cd thales-pre-release
ls
tar xvf source.tar.gz --strip 1
export
cd thales-df-workshops/basic-concourse
./mvnw clean package -Dmaven.test.skip=true

mv manifest-qa.yml ../../../build/
mv target/*.jar ../../../build/
