#!/bin/bash

ls
cat check-actuator/rollback

tarball_url=`curl https://api.github.com/repos/ebornier-pivotal/spring-paris-boot/releases/tags/V1.0.0 | jq -r ".tarball_url"`
wget -O release.tar.gz $tarball_url

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
