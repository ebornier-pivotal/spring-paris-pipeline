#!/bin/bash
cd release
ls
tar xvf source.tar.gz --strip 1
export
./mvnw clean package -Dmaven.test.skip=true

mv manifest-prod.yml ../build/
mv target/*.jar ../build/
