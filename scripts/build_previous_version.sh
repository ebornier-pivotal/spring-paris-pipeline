#!/bin/bash

cd previous-version

tar xvf release.tar.gz --strip 1
export
mvn clean package -Dmaven.test.skip=true


cat << EOF > manifest.yml
---
applications:
- name: ${APP_NAME} 
  host: ${APP_NAME}
  memory: 1G
  instances: 3
  services:
    - ${APP_NAME}-metrics
EOF

cat manifest.yml

mv manifest.yml ../build/
mv `ls target/*jar` ../build/app.jar
