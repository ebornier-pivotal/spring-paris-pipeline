#!/bin/bash
cd release
ls
tar xvf source.tar.gz --strip 1
export
mvn clean package -Dmaven.test.skip=true

cat << EOF > manifest.yml
---
applications:
- name: ${APP_NAME} 
  host: ${APP_NAME}
  memory: 1G
  instances: 1
EOF

mv manifest.yml ../build/
mv `ls target/*jar` ../build/app.jar
