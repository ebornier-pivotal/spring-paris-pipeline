#!/bin/bash 
cd pre-release
ls
tar xvf source.tar.gz --strip 1
export
./mvnw clean package -Dmaven.test.skip=true

cat << EOF > manifest.yml
---
applications:
- name: ${APP_NAME} 
  host: ${APP_NAME}-stage
  memory: 1G
  instances: 1
EOF

mv manifest.yml ../build/
mv target/*.jar ../build/
