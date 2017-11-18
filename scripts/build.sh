#!/bin/bash 
ls
find . 
cd repo/ 
export
mvn clean package -Dmaven.test.skip=true 

cat << EOF > manifest.yml
---
applications:
- name: ${APP_NAME} 
  host: ${APP_NAME}-test
  memory: 1G
  instances: 1
EOF

mv manifest.yml ../build/ 
mv `ls target/*jar` ../build/app.jar
