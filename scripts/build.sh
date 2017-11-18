#!/bin/bash 
ls
cd build/ 
export
./mvnw clean package -Dmaven.test.skip=true 
mv manifest-dev.yml ../build/ 
mv target/*.jar ../build/
