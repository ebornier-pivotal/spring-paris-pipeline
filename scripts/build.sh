#!/bin/bash 
cd thales-repo/thales-df-workshops/basic-concourse 
export
./mvnw clean package -Dmaven.test.skip=true 
mv manifest-dev.yml ../../../build/ 
mv target/*.jar ../../../build/
